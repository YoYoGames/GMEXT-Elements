/// obj_client – Create
/// 
client = _elements_crossfire_get_singleton();

client.on_signal = function(_msg) {
    var t = _msg[$ "type"];
    switch (t) {
        case "STRING_RELAY":
        case "STRING_BROADCAST":
            var _from   = _msg[$ "profileId"];
            var _text   = _msg[$ "payload"];
            var _life   = _msg[$ "lifecycle"];
            show_debug_message("[CF] String " + t + " from " + string(_from) + ": " + _text);
        break;

        case "BINARY_RELAY":
        case "BINARY_BROADCAST":
            _from = _msg[$ "profileId"];
            var _b64  = _msg[$ "payload"];

            // Decode to a new buffer, remember to delete when done
            var _buff = buffer_base64_decode(_b64);

            // ... interpret data from buff here ...
            // Example: read bytes or a struct

            buffer_delete(_buff);
        break;

        case "SIGNAL_JOIN":
        case "SIGNAL_LEAVE":
        case "CONNECT":
        case "DISCONNECT":
        case "HOST":
            // Update your local participant list / host info
			show_debug_message(_msg);
        break;

        // You can safely ignore WebRTC-specific stuff if you’re not using it:
        case "SDP_OFFER":
        case "SDP_ANSWER":
        case "CANDIDATE":
            // log & ignore
			show_debug_message(_msg);
        break;
    }
};

