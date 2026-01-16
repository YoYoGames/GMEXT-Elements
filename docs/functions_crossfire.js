// Functions

/**
 * @func elements_crossfire_set_identity(_profile_id, _session_key)
 * @desc This function sets the Crossfire identity (profile, session key) used for matchmaking.
 * 
 * @param {String} _profile_id The Elements profile ID for this client.
 * @param {String} _session_key The session key obtained from the Elements REST API.
 * @func_end
 */
function elements_crossfire_set_identity(_profile_id, _session_key)
{
}

/**
 * @func elements_crossfire_connect()
 * @desc This function opens the WebSocket connection to Crossfire and enters the HANDSHAKE phase.
 * 
 * @returns {Bool} True if the async connect request was started, false if already connected.
 * @func_end
 */
function elements_crossfire_connect()
{
}

/**
 * @func elements_crossfire_disconnect()
 * @desc This function closes the Crossfire WebSocket connection and resets the client phase to DISCONNECTED.
 * 
 * @func_end
 */
function elements_crossfire_disconnect()
{
}

/**
 * @func elements_crossfire_find_match()
 * @desc This function sends a FIND handshake to start matchmaking on the current connection.
 * 
 * @param {String} _configuration The matchmaking configuration name or ID.
 * @returns {Bool} True if the message was sent, false if phase/identity/handshake state is invalid.
 * @func_end
 */
function elements_crossfire_find_match(_configuration)
{
}

/**
 * @func elements_crossfire_join_match(_match_id)
 * @desc This function sends a JOIN handshake to rejoin a known match by its match ID.
 * 
 * @param {String} _match_id The match ID to rejoin.
 * @returns {Bool} True if the message was sent, false if phase/identity/handshake state is invalid.
 * @func_end
 */
function elements_crossfire_join_match(_match_id)
{
}

/// Control messages

/**
 * @func elements_crossfire_leave_match()
 * @desc This function sends a LEAVE control message to leave the current match.
 * 
 * @returns {Bool} True if the message was sent, false otherwise.
 * @func_end
 */
function elements_crossfire_leave_match()
{
}

/**
 * @func elements_crossfire_open_match()
 * @desc This function sends an OPEN control message to allow new participants to join the match.
 * 
 * @returns {Bool} True if the message was sent, false otherwise.
 * @func_end
 */
function elements_crossfire_open_match()
{
}

/**
 * @func elements_crossfire_close_match()
 * @desc This function sends a CLOSE control message to prevent new participants from joining the match.
 * 
 * @returns {Bool} True if the message was sent, false otherwise.
 * @func_end
 */
function elements_crossfire_close_match()
{
}

/**
 * @func elements_crossfire_end_match()
 * @desc This function sends an END control message to terminate the current match.
 * 
 * @returns {Bool} True if the message was sent, false otherwise.
 * @func_end
 */
function elements_crossfire_end_match()
{
}

/// Signaling – string

/**
 * @func elements_crossfire_send_string_relay(_recipient_profile_id, _text, _lifecycle)
 * @desc This function sends a direct STRING_RELAY to a specific participant in the match.
 * 
 * @param {String} _recipient_profile_id The profile ID of the target participant.
 * @param {String} _text The string payload to send.
 * @param {String} _lifecycle The lifecycle for this message (`"ONCE"`, `"SESSION"`, or `"MATCH"`). Defaults to `"ONCE"`.
 * @returns {Bool} True if the message was sent, false otherwise.
 * @func_end
 */
function elements_crossfire_send_string_relay(_recipient_profile_id, _text, _lifecycle = CF_LIFECYCLE_ONCE)
{
}

/**
 * @func elements_crossfire_send_string_broadcast(_text, _lifecycle)
 * @desc This function broadcasts a STRING_BROADCAST message to all other participants in the match.
 * 
 * @param {String} _text The string payload to broadcast.
 * @param {String} _lifecycle The lifecycle for this message (`"ONCE"`, `"SESSION"`, or `"MATCH"`). Defaults to `"ONCE"`.
 * @returns {Bool} True if the message was sent, false otherwise.
 * @func_end
 */
function elements_crossfire_send_string_broadcast(_text, _lifecycle = CF_LIFECYCLE_ONCE)
{
}

/// Signaling – binary (using base64)

/**
 * @func elements_crossfire_send_binary_relay(_recipient_profile_id, _buffer, _lifecycle)
 * @desc This function sends a direct BINARY_RELAY to a specific participant using a base64-encoded buffer.
 * 
 * @param {String} _recipient_profile_id The profile ID of the target participant.
 * @param {Buffer} _buffer The buffer whose contents will be relayed as base64.
 * @param {String} _lifecycle The lifecycle for this message (`"ONCE"`, `"SESSION"`, or `"MATCH"`). Defaults to `"ONCE"`.
 * @returns {Bool} True if the message was sent, false otherwise.
 * @func_end
 */
function elements_crossfire_send_binary_relay(_recipient_profile_id, _buffer, _lifecycle = CF_LIFECYCLE_ONCE)
{
}

/**
 * @func elements_crossfire_send_binary_broadcast(_buffer, _lifecycle)
 * @desc This function broadcasts a BINARY_BROADCAST message to all other participants using a base64-encoded buffer.
 * 
 * @param {Buffer} _buffer The buffer whose contents will be broadcast as base64.
 * @param {String} _lifecycle The lifecycle for this message (`"ONCE"`, `"SESSION"`, or `"MATCH"`). Defaults to `"ONCE"`.
 * @returns {Bool} True if the message was sent, false otherwise.
 * @func_end
 */
function elements_crossfire_send_binary_broadcast(_buffer, _lifecycle = CF_LIFECYCLE_ONCE)
{
}

/// State

/**
 * @func elements_crossfire_is_socket_open()
 * @desc This function returns whether the underlying WebSocket is currently open (HANDSHAKE or SIGNALING).
 * 
 * @returns {Bool} True if the socket is open, false otherwise.
 * @func_end
 */
function elements_crossfire_is_socket_open()
{
};

/**
 * @func elements_crossfire_is_ready()
 * @desc This function returns whether the Crossfire client is fully ready (SIGNALING phase) for messaging.
 * 
 * @returns {Bool} True if the client is in SIGNALING phase, false otherwise.
 * @func_end
 */
function elements_crossfire_is_ready()
{
};

/**
 * @func elements_crossfire_is_host()
 * @desc This function returns whether this client is currently the host of the match.
 * 
 * @returns {Bool} True if this client is the host, false otherwise.
function elements_crossfire_is_host()
{
};

/// Getters

/**
 * @func elements_crossfire_get_participants()
 * @desc This function returns a struct of all the current participants in the match (profile_id : { connected }).
 * 
 * @returns {Struct}
 * @func_end
 */
function elements_crossfire_get_participants()
{
};

/**
 * @func elements_crossfire_get_match_id()
 * @desc This function returns the ID of a previously joined match (useful for reconnecting).
 * 
 * @returns {String|Undefined}
 * @func_end
 */
function elements_crossfire_get_match_id()
{
};

/// Callbacks

/**
 * @func elements_crossfire_events_on_connected_callback(_callback)
 * @desc This function sets the callback invoked when the WebSocket successfully connects.
 * 
 * @param {Function} _callback The function to call on successful socket connection.
 * @func_end
 */
function elements_crossfire_events_on_connected_callback(_callback)
{
}

/**
 * @func elements_crossfire_events_on_connection_error_callback(_callback)
 * @desc This function sets the callback invoked when the WebSocket connection fails.
 * 
 * @param {Function} _callback The function to call on connection error.
 * @func_end
 */
function elements_crossfire_events_on_connection_error_callback(_callback)
{
}

/**
 * @func elements_crossfire_events_on_matched_callback(_callback)
 * @desc This function sets the callback invoked when a MATCHED message is received and the match is assigned.
 * 
 * @param {Function} _callback The function to call when the client receives MATCHED.
 * @func_end
 */
function elements_crossfire_events_on_matched_callback(_callback)
{
}

/**
 * @func elements_crossfire_events_on_signal_callback(_callback)
 * @desc This function sets the callback invoked for signaling messages (SIGNAL_*, CONNECT/DISCONNECT, STRING/BINARY relays/broadcasts).
 * 
 * @param {Function} _callback The function to call for incoming signal messages.
 * @func_end
 */
function elements_crossfire_events_on_signal_callback(_callback)
{
}

/**
 * @func elements_crossfire_events_on_control_callback(_callback)
 * @desc This function sets the callback invoked for incoming control messages (LEAVE, OPEN, CLOSE, END) if sent by the server.
 * 
 * @param {Function} _callback The function to call for incoming control messages.
 * @func_end
 */
function elements_crossfire_events_on_control_callback(_callback)
{
}

/**
 * @func elements_crossfire_events_on_error_callback(_callback)
 * @desc This function sets the callback invoked when an ERROR message is received from the server.
 * 
 * @param {Function} _callback The function to call for protocol error messages.
 * @func_end
 */
function elements_crossfire_events_on_error_callback(_callback)
{
}

/**
 * @func elements_crossfire_events_on_disconnected_callback(_callback)
 * @desc This function sets the callback invoked when the WebSocket disconnects.
 * 
 * @param {Function} _callback The function to call on socket disconnection.
 * @func_end
 */
function elements_crossfire_events_on_disconnected_callback(_callback)
{
}

/**
 * @func elements_crossfire_events_on_unknown_callback(_callback)
 * @desc This function sets the callback invoked when an unrecognized message type is received.
 * 
 * @param {Function} _callback The function to call for unknown message types.
 * @func_end
 */
function elements_crossfire_events_on_unknown_callback(_callback)
{
}

/**
 * @func elements_crossfire_events_on_phase_changed_callback(_callback)
 * @desc This function sets the callback invoked whenever the client's internal CF_PHASE changes.
 * 
 * @param {Function} _callback The function to call when the connection phase is updated.
 * @func_end
 */
function elements_crossfire_events_on_phase_changed_callback(_callback)
{
}


// Modules

/**
 * @module crossfire
 * @title Crossfire
 * @desc Namazu Crossfire provides a complete foundation for cross-platform multiplayer. It handles session discovery, matchmaking, and connection signaling, making it easy to establish direct or relayed peer connections between players. Crossfire builds on open standards like WebRTC to ensure compatibility across diverse runtimes, from native builds to browsers.
 * 
 * Developers can use Crossfire alongside other Elements such as Identity, Data, and Cloud Functions to deliver seamless real-time multiplayer experiences.
 * 
 * See: [Namazu Crossfire](https://namazustudios.com/docs/crossplay/namazu-crossfire/)
 * 
 * @section_func Functions
 * @desc This function these are the functions in the Crossfire module:
 * @ref elements_crossfire_*
 * @section_end
 * 
 * @module_end
 */