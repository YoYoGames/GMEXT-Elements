
/// @func _elements_crossfire_get_singleton()
/// @desc Returns the singleton ElementsCrossfireClient instance, creating the manager object if needed.
/// @returns {Struct.ElementsCrossfireClient} The shared Crossfire client instance.
/// @ignore
function _elements_crossfire_get_singleton()  {
    
    /// @ignore
    static _host = _elements_options_get_crossfire_url();
    /// @ignore
    static _port = _elements_options_get_crossfire_port();
    /// @ignore
    static __client = new ElementsCrossfireClient(_host, _port);
    
    with (obj_elements_crossfire) return __client;
        
    instance_create_depth(0, 0, 0, obj_elements_crossfire);
    
    return __client;
}

/// @func elements_crossfire_set_identity(_profile_id, _session_key)
/// @desc Sets the Crossfire identity (profile, session key) used for matchmaking.
/// @param {String} _profile_id The Elements profile ID for this client.
/// @param {String} _session_key The session key obtained from the Elements REST API.
function elements_crossfire_set_identity(_profile_id, _session_key) {
    var _client = _elements_crossfire_get_singleton();
    _client.set_identity(_profile_id, _session_key);
}

/// @func elements_crossfire_connect()
/// @desc Opens the WebSocket connection to Crossfire and enters the HANDSHAKE phase.
/// @returns {Bool} True if the async connect request was started, false if already connected.
function elements_crossfire_connect() {
    var _client = _elements_crossfire_get_singleton();
    return _client.connect();
}

/// @func elements_crossfire_disconnect()
/// @desc Closes the Crossfire WebSocket connection and resets the client phase to DISCONNECTED.
function elements_crossfire_disconnect() {
    var _client = _elements_crossfire_get_singleton();
    return _client.disconnect();
}

/// @func elements_crossfire_find_match()
/// @desc Sends a FIND handshake to start matchmaking on the current connection.
/// @param {String} _configuration The matchmaking configuration name or ID.
/// @returns {Bool} True if the message was sent, false if phase/identity/handshake state is invalid.
function elements_crossfire_find_match(_configuration) {
    var _client = _elements_crossfire_get_singleton();
    return _client.send_find(_configuration);
}

/// @func elements_crossfire_join_match(_match_id)
/// @desc Sends a JOIN handshake to rejoin a known match by its matchId.
/// @param {String} _match_id The match ID to rejoin.
/// @returns {Bool} True if the message was sent, false if phase/identity/handshake state is invalid.
function elements_crossfire_join_match(_match_id) {
    var _client = _elements_crossfire_get_singleton();
    return _client.send_join(_match_id);
}

/// Control messages

/// @func elements_crossfire_leave_match()
/// @desc Sends a LEAVE control message to leave the current match.
/// @returns {Bool} True if the message was sent, false otherwise.
function elements_crossfire_leave_match() { 
    var _client = _elements_crossfire_get_singleton();
	return _client.send_leave(); 
}

/// @func elements_crossfire_open_match()
/// @desc Sends an OPEN control message to allow new participants to join the match.
/// @returns {Bool} True if the message was sent, false otherwise.
function elements_crossfire_open_match() { 
    var _client = _elements_crossfire_get_singleton();
	return _client.send_open();
}

/// @func elements_crossfire_close_match()
/// @desc Sends a CLOSE control message to prevent new participants from joining the match.
/// @returns {Bool} True if the message was sent, false otherwise.
function elements_crossfire_close_match() { 
    var _client = _elements_crossfire_get_singleton();
	return _client.send_close();
}

/// @func elements_crossfire_end_match()
/// @desc Sends an END control message to terminate the current match.
/// @returns {Bool} True if the message was sent, false otherwise.
function elements_crossfire_end_match() { 
    var _client = _elements_crossfire_get_singleton();
	return _client.send_end();
}

/// Signaling – string

/// @func elements_crossfire_send_string_relay(_recipient_profile_id, _text, _lifecycle)
/// @desc Sends a direct STRING_RELAY to a specific participant in the match.
/// @param {String} _recipient_profile_id The profileId of the target participant.
/// @param {String} _text The string payload to send.
/// @param {String} _lifecycle The lifecycle for this message ("ONCE", "SESSION", or "MATCH"). Defaults to ONCE.
/// @returns {Bool} True if the message was sent, false otherwise.
function elements_crossfire_send_string_relay(_recipient_profile_id, _text, _lifecycle = CF_LIFECYCLE_ONCE) {
    var _client = _elements_crossfire_get_singleton();
    return _client.send_string_relay(_recipient_profile_id, _text, _lifecycle);
}

/// @func elements_crossfire_send_string_broadcast(_text, _lifecycle)
/// @desc Broadcasts a STRING_BROADCAST message to all other participants in the match.
/// @param {String} _text The string payload to broadcast.
/// @param {String} _lifecycle The lifecycle for this message ("ONCE", "SESSION", or "MATCH"). Defaults to ONCE.
/// @returns {Bool} True if the message was sent, false otherwise.
function elements_crossfire_send_string_broadcast(_text, _lifecycle = CF_LIFECYCLE_ONCE) {
    var _client = _elements_crossfire_get_singleton();
    return _client.send_string_broadcast(_text, _lifecycle);
}

/// Signaling – binary (using base64)

/// @func elements_crossfire_send_binary_relay(_recipient_profile_id, _buffer, _lifecycle)
/// @desc Sends a direct BINARY_RELAY to a specific participant using a base64-encoded buffer.
/// @param {String} _recipient_profile_id The profileId of the target participant.
/// @param {Buffer} _buffer The buffer whose contents will be relayed as base64.
/// @param {String} _lifecycle The lifecycle for this message ("ONCE", "SESSION", or "MATCH"). Defaults to ONCE.
/// @returns {Bool} True if the message was sent, false otherwise.
function elements_crossfire_send_binary_relay(_recipient_profile_id, _buffer, _lifecycle = CF_LIFECYCLE_ONCE) {
    var _client = _elements_crossfire_get_singleton();
    return _client.send_binary_relay(_recipient_profile_id, _buffer, 0, buffer_get_size(_buffer), _lifecycle);
}

/// @func elements_crossfire_send_binary_broadcast(_buffer, _lifecycle)
/// @desc Broadcasts a BINARY_BROADCAST message to all other participants using a base64-encoded buffer.
/// @param {Buffer} _buffer The buffer whose contents will be broadcast as base64.
/// @param {String} _lifecycle The lifecycle for this message ("ONCE", "SESSION", or "MATCH"). Defaults to ONCE.
/// @returns {Bool} True if the message was sent, false otherwise.
function elements_crossfire_send_binary_broadcast(_buffer, _lifecycle = CF_LIFECYCLE_ONCE) {
    var _client = _elements_crossfire_get_singleton();
    return _client.send_binary_broadcast(_buffer, 0, buffer_get_size(_buffer), _lifecycle);
}

/// State

/// @func elements_crossfire_is_socket_open()
/// @desc Returns whether the underlying WebSocket is currently open (HANDSHAKE or SIGNALING).
/// @returns {Bool} True if the socket is open, false otherwise.
function elements_crossfire_is_socket_open() {
	var _client = _elements_crossfire_get_singleton();
	return _client.is_socket_open();
};

/// @func elements_crossfire_is_ready()
/// @desc Returns whether the Crossfire client is fully ready (SIGNALING phase) for messaging.
/// @returns {Bool} True if the client is in SIGNALING phase, false otherwise.
function elements_crossfire_is_ready() {
	var _client = _elements_crossfire_get_singleton();
	return _client.is_ready();
};

/// @func elements_crossfire_is_host()
/// @desc Returns whether this client is currently the host of the match.
/// @returns {Bool} True if this client is the host, false otherwise.
function elements_crossfire_is_host() {
	var _client = _elements_crossfire_get_singleton();
	return _client.is_host();
};

/// Getters

/// @func elements_crossfire_get_participants()
/// @desc Returns a struct of all the current participants in the match (profile_id : { connected }).
/// @returns {Struct}
function elements_crossfire_get_participants() {
	var _client = _elements_crossfire_get_singleton();
	return _client.get_participants();
};

/// @func elements_crossfire_get_match_id()
/// @desc Returns the id of a previously joined match (useful for reconnecting).
/// @returns {String|Undefined}
function elements_crossfire_get_match_id() {
	var _client = _elements_crossfire_get_singleton();
	return _client.get_match_id();
};

/// Callbacks

/// @func elements_crossfire_events_on_connected_callback(_callback)
/// @desc Sets the callback invoked when the WebSocket successfully connects.
/// @param {Function} _callback The function to call on successful socket connection.
function elements_crossfire_events_on_connected_callback(_callback) {
	var _client = _elements_crossfire_get_singleton();
	_client.on_connected = _callback;
}

/// @func elements_crossfire_events_on_connection_error_callback(_callback)
/// @desc Sets the callback invoked when the WebSocket connection fails.
/// @param {Function} _callback The function to call on connection error.
function elements_crossfire_events_on_connection_error_callback(_callback) {
	var _client = _elements_crossfire_get_singleton();
	_client.on_connection_error = _callback;
}

/// @func elements_crossfire_events_on_matched_callback(_callback)
/// @desc Sets the callback invoked when a MATCHED message is received and the match is assigned.
/// @param {Function} _callback The function to call when the client receives MATCHED.
function elements_crossfire_events_on_matched_callback(_callback) {
	var _client = _elements_crossfire_get_singleton();
	_client.on_matched = _callback;
}

/// @func elements_crossfire_events_on_signal_callback(_callback)
/// @desc Sets the callback invoked for signaling messages (SIGNAL_*, CONNECT/DISCONNECT, STRING/BINARY relays/broadcasts).
/// @param {Function} _callback The function to call for incoming signal messages.
function elements_crossfire_events_on_signal_callback(_callback) {
	var _client = _elements_crossfire_get_singleton();
	_client.on_signal = _callback;
}

/// @func elements_crossfire_events_on_control_callback(_callback)
/// @desc Sets the callback invoked for incoming control messages (LEAVE, OPEN, CLOSE, END) if sent by the server.
/// @param {Function} _callback The function to call for incoming control messages.
function elements_crossfire_events_on_control_callback(_callback) {
	var _client = _elements_crossfire_get_singleton();
	_client.on_control = _callback;
}

/// @func elements_crossfire_events_on_error_callback(_callback)
/// @desc Sets the callback invoked when an ERROR message is received from the server.
/// @param {Function} _callback The function to call for protocol error messages.
function elements_crossfire_events_on_error_callback(_callback) {
	var _client = _elements_crossfire_get_singleton();
	_client.on_error = _callback;
}

/// @func elements_crossfire_events_on_disconnected_callback(_callback)
/// @desc Sets the callback invoked when the WebSocket disconnects.
/// @param {Function} _callback The function to call on socket disconnection.
function elements_crossfire_events_on_disconnected_callback(_callback) {
	var _client = _elements_crossfire_get_singleton();
	_client.on_disconnected = _callback;
}

/// @func elements_crossfire_events_on_unknown_callback(_callback)
/// @desc Sets the callback invoked when an unrecognized message type is received.
/// @param {Function} _callback The function to call for unknown message types.
function elements_crossfire_events_on_unknown_callback(_callback) {
	var _client = _elements_crossfire_get_singleton();
	_client.on_unknown = _callback;
}

/// @func elements_crossfire_events_on_phase_changed_callback(_callback)
/// @desc Sets the callback invoked whenever the client's internal CF_PHASE changes.
/// @param {Function} _callback The function to call when the connection phase is updated.
function elements_crossfire_events_on_phase_changed_callback(_callback) {
	var _client = _elements_crossfire_get_singleton();
	_client.on_phase_changed = _callback;
}

