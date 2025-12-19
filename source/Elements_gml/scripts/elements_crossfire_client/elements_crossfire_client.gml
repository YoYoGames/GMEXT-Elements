
#macro CF_MSG_FIND              "FIND"
#macro CF_MSG_JOIN              "JOIN"
#macro CF_MSG_MATCHED           "MATCHED"
#macro CF_MSG_ERROR             "ERROR"

#macro CF_MSG_SIGNAL_JOIN       "SIGNAL_JOIN"
#macro CF_MSG_SIGNAL_LEAVE      "SIGNAL_LEAVE"
#macro CF_MSG_SIGNAL_END        "SIGNAL_END"
#macro CF_MSG_CONNECT           "CONNECT"
#macro CF_MSG_DISCONNECT        "DISCONNECT"
#macro CF_MSG_HOST              "HOST"

#macro CF_MSG_SDP_OFFER         "SDP_OFFER"
#macro CF_MSG_SDP_ANSWER        "SDP_ANSWER"
#macro CF_MSG_CANDIDATE         "CANDIDATE"

#macro CF_MSG_STRING_RELAY      "STRING_RELAY"
#macro CF_MSG_BINARY_RELAY      "BINARY_RELAY"
#macro CF_MSG_STRING_BROADCAST  "STRING_BROADCAST"
#macro CF_MSG_BINARY_BROADCAST  "BINARY_BROADCAST"

#macro CF_MSG_LEAVE             "LEAVE"
#macro CF_MSG_OPEN              "OPEN"
#macro CF_MSG_CLOSE             "CLOSE"
#macro CF_MSG_END               "END"

#macro CF_LIFECYCLE_ONCE        "ONCE"
#macro CF_LIFECYCLE_SESSION     "SESSION"
#macro CF_LIFECYCLE_MATCH       "MATCH"

enum CF_PHASE {
    DISCONNECTED,
    HANDSHAKE,
    SIGNALING,
    TERMINATED
};

/// @func ElementsCrossfireClient(_host, _port)
/// @desc Creates a new Elements Crossfire WebSocket client bound to a specific host and port.
/// @param {String} _host The WebSocket host or WSS endpoint to connect to (e.g. "wss://....").
/// @param {Real} _port The TCP port for the WebSocket connection (commonly 443 for WSS).
function ElementsCrossfireClient(_host, _port) constructor {

    // Connection / protocol basics
    host = _host;
    port = _port;
    socket = -1;
    phase = CF_PHASE.DISCONNECTED;
    version = "V_1_0";

	// Connection state
	handshake_sent = false;

    // Identity & match state
    profile_id = undefined;
    session_key = undefined;
    match_id = undefined;
	
	// Match data
	participants = {}; // profileId -> { connected: bool }
	host_profile = undefined;

    // Callbacks (you can assign these from your game)
    on_connected = undefined;
    on_connection_error = undefined;
    on_disconnected = undefined;
    on_matched = undefined; // MATCHED
    on_signal = undefined; // SIGNAL_* / CONNECT / DISCONNECT / HOST / STRING/BINARY*
    on_control = undefined; // LEAVE / OPEN / CLOSE / END (if server ever notifies)
    on_error = undefined; // ERROR
    on_unknown = undefined;
	on_phase_changed = undefined;

	handlers = {};

    // --- identity management ---

    /// @func set_identity(_profile_id, _session_key)
    /// @desc Sets the Crossfire identity (profile, session key) used for matchmaking.
    /// @param {String} _profile_id The Elements profile ID for this client.
    /// @param {String} _session_key The session key obtained from the Elements REST API.
    static set_identity = function(_profile_id, _session_key) {
        profile_id = _profile_id;
        session_key = _session_key;
    };

    // --- connection management ---

    /// @func connect()
    /// @desc Opens the WebSocket connection and enters the HANDSHAKE phase.
    /// @returns {Bool} True if the async connect request was started, false if already connected.
    static connect = function() {
        if (phase != CF_PHASE.DISCONNECTED) return;

        socket = network_create_socket(network_socket_ws);
        _set_phase(CF_PHASE.HANDSHAKE);

        return network_connect_raw_async(socket, host, port);
    };
	
    /// @func disconnect()
    /// @desc Closes the WebSocket connection and sets the phase to DISCONNECTED.
    static disconnect = function() {
        if (socket != -1) {			
            network_destroy(socket);
        }
		
		// Reset all the data
        socket = -1;
		handshake_sent = false;
		participants = {};
		host_profile = undefined;
		
        _set_phase(CF_PHASE.DISCONNECTED);
    };

    // --- handshake messages ---

    /// @func send_find(_configuration)
    /// @desc Sends a FIND handshake to start matchmaking. Valid only in HANDSHAKE phase and only once per connection.
	/// @param {String} _configuration The matchmaking configuration name or ID.
    /// @returns {Bool} True if the message was sent, false if phase/identity/handshake state is invalid.
	static send_find = function(_configuration) {
	    if (phase != CF_PHASE.HANDSHAKE) return false;
		if (handshake_sent) return false; // already sent one
		if (!_identity_ready()) {
	        if (_elements_options_is_debug()) show_debug_message("[CF] WARNING :: send_find called before identity set");
	        return false;
	    }

		handshake_sent = true;

	    return _send(CF_MSG_FIND, {
	        version : version,
	        profileId : profile_id,
	        sessionKey : session_key,
	        configuration : _configuration
	    });
	};

    /// @func send_join(_match_id)
    /// @desc Sends a JOIN handshake to rejoin a known match. Valid only in HANDSHAKE phase and only once per connection.
    /// @param {String} _match_id The match ID to rejoin.
    /// @returns {Bool} True if the message was sent, false if phase/identity/handshake state is invalid.
    static send_join = function(_match_id) {
	    if (phase != CF_PHASE.HANDSHAKE) return false;
		if (handshake_sent) return false; // already sent one
		if (!_identity_ready()) {
			if (_elements_options_is_debug()) show_debug_message("[CF] WARNING :: send_join called before identity set");
	        return false;
	    }

		handshake_sent = true;
	    match_id = _match_id;

	    return _send(CF_MSG_JOIN, {
	        version : version,
	        profileId : profile_id,
	        sessionKey : session_key,
	        matchId : _match_id
	    });
	};

    // --- control messages (client -> server) ---

    /// @func send_leave()
    /// @desc Sends a LEAVE control message to leave the current match. Valid only in SIGNALING phase.
    /// @returns {Bool} True if the message was sent, false otherwise.
    static send_leave = function() {
        if (phase != CF_PHASE.SIGNALING) return false;

		var _res = _send(CF_MSG_LEAVE, {
	        profileId : profile_id,
	    });

		call_later(10, time_source_units_frames, function() { disconnect(); });

		return _res;
    };

    /// @func send_open()
    /// @desc Sends an OPEN control message to allow new participants to join the match. Valid only in SIGNALING phase.
    /// @returns {Bool} True if the message was sent, false otherwise.
    static send_open = function() {
        if (phase != CF_PHASE.SIGNALING) return false;
		if (!is_host()) return false;

		return _send(CF_MSG_OPEN, {
	        profileId : profile_id,
	    });
    };

    /// @func send_close()
    /// @desc Sends a CLOSE control message to prevent new participants from joining the match. Valid only in SIGNALING phase.
    /// @returns {Bool} True if the message was sent, false otherwise.
    static send_close = function() {
        if (phase != CF_PHASE.SIGNALING) return false;
		if (!is_host()) return false;

        return _send(CF_MSG_CLOSE, {
	        profileId : profile_id,
	    });
    };

    /// @func send_end()
    /// @desc Sends an END control message to terminate the match. Valid only in SIGNALING phase and typically host-only.
    /// @returns {Bool} True if the message was sent, false otherwise.
    static send_end = function() {
        if (phase != CF_PHASE.SIGNALING) return false;
		if (!is_host()) return false;

        var _res = _send(CF_MSG_END, {
	        profileId : profile_id,
	    });
		
		call_later(10, time_source_units_frames, function() { disconnect(); });
		
		return _res;
    };

    // --- signaling helpers (STRING / BINARY, relay vs broadcast) ---

    /// @func send_string_relay(_recipient_profile_id, _payload, _lifecycle)
    /// @desc Sends a direct STRING_RELAY to a single participant. Valid only in SIGNALING phase.
    /// @param {String} _recipient_profile_id The profileId of the target participant.
    /// @param {String} _payload The string payload to send.
    /// @param {String} _lifecycle The message lifecycle ("ONCE", "SESSION", or "MATCH"). Defaults to ONCE.
    /// @returns {Bool} True if the message was sent, false otherwise.
    static send_string_relay = function(_recipient_profile_id, _payload, _lifecycle = CF_LIFECYCLE_ONCE) {
        if (phase != CF_PHASE.SIGNALING) return false;

		return _send(CF_MSG_STRING_RELAY, {
		    profileId : profile_id,
            recipientProfileId : _recipient_profile_id,
            payload : string(_payload),
            lifecycle : _lifecycle // "ONCE" / "SESSION" / "MATCH"
		});
    };

    /// @func send_string_broadcast(_payload, _lifecycle)
    /// @desc Sends a STRING_BROADCAST to all other participants. Valid only in SIGNALING phase.
    /// @param {String} _payload The string payload to broadcast.
    /// @param {String} _lifecycle The message lifecycle ("ONCE", "SESSION", or "MATCH"). Defaults to ONCE.
    /// @returns {Bool} True if the message was sent, false otherwise.
    static send_string_broadcast = function(_payload, _lifecycle = CF_LIFECYCLE_ONCE) {
        if (phase != CF_PHASE.SIGNALING) return false;

        return _send(CF_MSG_STRING_BROADCAST, {
            profileId : profile_id,
            payload : string(_payload),
            lifecycle: _lifecycle
        });
    };

    /// @func send_binary_relay(_recipient_profile_id, _buffer, _offset, _size, _lifecycle)
    /// @desc Sends a direct BINARY_RELAY to a single participant. Valid only in SIGNALING phase.
    /// @param {String} _recipient_profile_id The profileId of the target participant.
    /// @param {Id.Buffer} _buffer The buffer whose contents will be base64-encoded as payload.
    /// @param {Real} _offset The starting byte offset within the buffer.
    /// @param {Real} _size The number of bytes to encode from the buffer.
    /// @param {String} _lifecycle The message lifecycle ("ONCE", "SESSION", or "MATCH"). Defaults to ONCE.
    /// @returns {Bool} True if the message was sent, false otherwise.
    static send_binary_relay = function(_recipient_profile_id, _buffer, _offset, _size, _lifecycle = CF_LIFECYCLE_ONCE) {
        if (phase != CF_PHASE.SIGNALING) return false;

        var _b64  = buffer_base64_encode(_buffer, _offset, _size);

        return _send(CF_MSG_BINARY_RELAY, {
            profileId : profile_id,
            recipientProfileId : _recipient_profile_id,
            payload : _b64,
            lifecycle : _lifecycle
        });
    };

    /// @func send_binary_broadcast(buffer, offset, size, lifecycle)
    /// @desc Sends a BINARY_BROADCAST to all other participants. Valid only in SIGNALING phase.
    /// @param {Id.Buffer} _buffer The buffer whose contents will be base64-encoded as payload.
    /// @param {Real} _offset The starting byte offset within the buffer.
    /// @param {Real} _size The number of bytes to encode from the buffer.
    /// @param {String} _lifecycle The message lifecycle ("ONCE", "SESSION", or "MATCH"). Defaults to ONCE.
    /// @returns {Bool} True if the message was sent, false otherwise.
    static send_binary_broadcast = function(_buffer, _offset, _size, _lifecycle = CF_LIFECYCLE_ONCE) {
        if (phase != CF_PHASE.SIGNALING) return false;

        var _b64  = buffer_base64_encode(_buffer, _offset, _size);
		
        return _send(CF_MSG_BINARY_BROADCAST, {
            profileId : profile_id,
            payload : _b64,
            lifecycle : _lifecycle
        });
    };
	
	// --- State checking ---

    /// @func is_socket_open()
    /// @desc Returns whether the underlying WebSocket is open (HANDSHAKE or SIGNALING phase).
    /// @returns {Bool} True if the socket is open, false otherwise.
	static is_socket_open = function() {
	    return phase == CF_PHASE.HANDSHAKE || phase == CF_PHASE.SIGNALING;
	};

    /// @func is_ready()
    /// @desc Returns whether the protocol is fully ready (SIGNALING phase) and signaling/control messages can be sent.
    /// @returns {Bool} True if the client is in SIGNALING phase, false otherwise.
	static is_ready = function() {
	    return phase == CF_PHASE.SIGNALING;
	};
	
	/// @func is_host()
    /// @desc Returns whether this client is currently the host of the match.
    /// @returns {Bool} True if this client is the host, false otherwise.
	static is_host = function() {
	    return profile_id == host_profile;
	};

	// --- Getters ---

	/// @func get_participants()
    /// @desc Returns a struct of all the current participants in the match (profile_id : { connected }).
    /// @returns {Struct}
	static get_participants = function() {
		return variable_clone(participants, 1);
	}
	
	/// @func get_match_id()
    /// @desc Returns the id of a previously joined match (useful for reconnecting).
    /// @returns {String|Undefined}
	static get_match_id = function() {
		return match_id;
	}

    // --- Async Networking hook ---

    /// @func handle_async(_async_load)
    /// @desc Handles GameMaker async networking events and routes Crossfire messages to handlers.
    /// @param {Id.DsMap} async_load The async_load DS map from the Async - Networking event.
    static handle_async = function(_async_load) {
        var _evt_type = _async_load[? "type"];
        var _sock_id  = _async_load[? "id"];

        if (_sock_id != socket) return;

        switch (_evt_type) {
            case network_type_non_blocking_connect:
                var _ok = _async_load[? "succeeded"];
                if (_ok) {
					if (_elements_options_is_debug()) show_debug_message("[CF] INFO :: Connected...");
                    if (is_callable(on_connected)) on_connected();
                } else {
                    phase = CF_PHASE.DISCONNECTED;
					show_debug_message("[CF] ERROR :: Connection error (disconnected)");
                    if (is_callable(on_connection_error)) on_connection_error();
                }
            break;

            case network_type_data:
                var _buff     = _async_load[? "buffer"];
                var _msg_type = _async_load[? "message_type"];
                if (_msg_type == network_send_text) {
                    var _json_str = buffer_read(_buff, buffer_string);
                    _handle_text_message(_json_str);
                } else {
                    // We don't expect binary WebSocket frames in this protocol
                    show_debug_message("[CF] ERROR :: Unexpected binary WS frame");
                }
            break;

            case network_type_disconnect:
				_set_phase(CF_PHASE.DISCONNECTED);
				if (_elements_options_is_debug()) show_debug_message("[CF] INFO :: Disconnected...");
                if (is_callable(on_disconnected)) on_disconnected();
            break;
        }
    };
	
    // --- Handler management ---
	
    /// @func _register_handler(_type, _fn)
    /// @desc Registers a handler function for a specific Crossfire message type.
    /// @param {String} _type The Crossfire message type this handler will process.
    /// @param {Function} _fn The callback function that will be invoked with the parsed message struct.
    /// @ignore
	static _register_handler = function(_type, _fn) {
	    struct_set(handlers, _type, _fn);
	};

    // --- JSON message routing ---

    /// @func _handle_text_message(_json)
    /// @desc Parses an incoming JSON string and routes it to the appropriate registered handler or on_unknown.
    /// @param {String} _json The raw JSON string received from the WebSocket.
	/// @ignore
    static _handle_text_message = function(_json) {
		var _msg = {};
		try {
			_msg = json_parse(_json);
		}
		catch (_e) {
			if (_elements_options_is_debug()) show_debug_message($"[CF] INFO :: Invalid JSON: {_json}");
			return;
		}
		
		var _t = _msg[$ "type"];
		var _fn = handlers[$ _t];
		if (is_callable(_fn)) {
			if (_elements_options_is_debug()) show_debug_message($"[CF] INFO :: Incoming packet: {_msg}");
		    _fn(_msg);
		    return;
		}
		
		if (_elements_options_is_debug()) show_debug_message($"[CF] INFO :: Unknown packet type: {_msg}");
		
		if (is_callable(on_unknown)) on_unknown(_msg);
    }
	
	// --- low-level helpers ---

    /// @func _identity_ready()
    /// @desc Checks whether the client identity (session key) has been set.
    /// @returns {Bool} True if the identity/session key is available, false otherwise.
	/// @ignore
	static _identity_ready = function() {
	    return !is_undefined(session_key);
	};

    /// @func _send(_type, _data)
    /// @desc Adds a type field to the given message data and sends it as JSON over the WebSocket.
    /// @param {String} _type The Crossfire message type to send.
    /// @param {Struct} _data The message payload (without the type field).
    /// @returns {Bool} True if the message was sent, false if the socket/phase is invalid.
	/// @ignore
	static _send = function(_type, _data) {
	    if (socket < 0 || phase == CF_PHASE.DISCONNECTED) return false;

	    // clone-ish: make sure type is present but don't mutate caller object
	    var _msg = _data;
	    _msg.type = _type;

		if (_elements_options_is_debug()) show_debug_message($"[CF] INFO :: Message sent : {_msg}");
		
	    var _json = json_stringify(_msg);
	    var _buff = buffer_create(string_byte_length(_json) + 1, buffer_grow, 1);
	    buffer_write(_buff, buffer_string, _json);

	    network_send_raw(socket, _buff, buffer_tell(_buff), network_send_text);
	    buffer_delete(_buff);
	    return true;
	};

    /// @func _set_phase(_new_phase)
    /// @desc Updates the internal connection phase and triggers the on_phase_changed callback.
    /// @param {Real} _new_phase The new CF_PHASE value to apply.
	/// @ignore
	static _set_phase = function(_new_phase) {
	    if (phase == _new_phase) return;
	    phase = _new_phase;

	    // Future hook: callback, logging, etc.
	    if (is_callable(on_phase_changed)) on_phase_changed(_new_phase);
	};

    /// @func _get_participant(_profile_id)
    /// @desc Retrieves or creates a participant entry for the given profile id.
    /// @param {String} _profile_id The participant's profileId.
    /// @returns {Struct} A participant struct with at least a 'connected' field.
	/// @ignore
	static _get_participant = function(_profile_id) {
	    var _p = participants[$ _profile_id];
	    if (is_undefined(_p)) {
	        _p = { connected: false };
	        participants[$ _profile_id] = _p;
	    }
	    return _p;
	};

	// --- register default handlers ---

    /// @func _config()
    /// @desc Registers all default protocol handlers for MATCHED, ERROR, signal, and control message types.
	/// @ignore
	static _config = function() {
		
		handlers[$ CF_MSG_MATCHED] = function(_msg) {
		    match_id = _msg.matchId;
		    var _pid = _msg.profileId;
			
		    if (!is_undefined(_pid)) profile_id = _pid;
			
			if (_elements_options_is_debug()) show_debug_message($"[CF] INFO :: Matched with {_msg}");

			_set_phase(CF_PHASE.SIGNALING);
		    if (is_callable(on_matched)) on_matched(_msg);
		};

		handlers[$ CF_MSG_ERROR] = function(_msg) {
			var _code = _msg.code;
		    var _text = _msg.message;
			show_debug_message($"[CF] ERROR :: {_code}: {_text}");
			
		    if (is_callable(on_error)) on_error(_msg);
			_set_phase(CF_PHASE.TERMINATED);
			disconnect(); // force close immediately
		};

		// group of types that are just "signals":
		var _signal_types = [
		    CF_MSG_SIGNAL_JOIN, CF_MSG_SIGNAL_LEAVE, CF_MSG_SIGNAL_END,
		    CF_MSG_CONNECT, CF_MSG_DISCONNECT, CF_MSG_HOST,
		    CF_MSG_SDP_OFFER, CF_MSG_SDP_ANSWER, CF_MSG_CANDIDATE,
		    CF_MSG_STRING_RELAY, CF_MSG_BINARY_RELAY,
		    CF_MSG_STRING_BROADCAST, CF_MSG_BINARY_BROADCAST
		];

		var _handle_action = function(_msg) {
			if (is_callable(on_signal)) on_signal(_msg);
		};
		for (var _i = 0; _i < array_length(_signal_types); _i++) {
		    var _t = _signal_types[_i];
			_register_handler(_t, _handle_action);
		}

		// control messages:
		var _control_types = [CF_MSG_LEAVE, CF_MSG_OPEN, CF_MSG_CLOSE, CF_MSG_END];
		var _handle_control = function(_msg) {
			if (is_callable(on_control)) on_control(_msg);
		}; 
		for (var _i = 0; _i < array_length(_control_types); _i++) {
		    var _t = _control_types[_i];
		    _register_handler(_t, _handle_control);
		}
		
		_register_handler(CF_MSG_SIGNAL_JOIN, function(_msg) {
		    var _pid = _msg.profileId;
		    var p = _get_participant(_pid);
		    p.connected = true;
		    if (is_callable(on_signal)) on_signal(_msg);
		});

		_register_handler(CF_MSG_SIGNAL_LEAVE, function(_msg) {
		    var _pid = _msg.profileId;
		    struct_remove(participants, _pid);
		    if (is_callable(on_signal)) on_signal(_msg);
		});

		_register_handler(CF_MSG_CONNECT, function(_msg) {
		    var _pid = _msg.profileId;
		    var p = _get_participant(_pid);
		    p.connected = true;
		    if (is_callable(on_signal)) on_signal(_msg);
		});

		_register_handler(CF_MSG_DISCONNECT, function(_msg) {
		    var _pid = _msg.profileId;
		    var p = _get_participant(_pid);
		    p.connected = false;
		    if (is_callable(on_signal)) on_signal(_msg);
		});

		_register_handler(CF_MSG_HOST, function(_msg) {
		    host_profile = _msg.profileId;
		    if (is_callable(on_signal)) on_signal(_msg);
		});
	
	}

	_config();

}
