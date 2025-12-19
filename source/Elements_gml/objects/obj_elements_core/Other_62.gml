// #####################################################################
// # Http Event (auto-generated, DO NOT EDIT)
// #####################################################################

var _async_id = async_load[? "id"];

// Early exit if there is no registered request with given id
if (!ds_map_exists(requests, _async_id)) exit;

var _request = requests[? _async_id];
var _status = async_load[? "status"];

// Early exit if the _request has not finished yet
if (_status == 1) exit;

if (_elements_options_is_debug()) {
	var _encoded_async_load = json_encode(async_load);
	show_debug_message("HTTP: " + _encoded_async_load)
}

var _code = async_load[? "http_status"];
var _data = async_load[? "result"];

// Make sure we check for respose hooks for the given http code
var _hook = response_hooks[? _code];
if (is_callable(_hook) && _hook(_code, _data, _request) == true) {
	// Hook returned true-ish stop propagation
    ds_map_delete(requests, _async_id);
	return; 
}

// Get callback for the request
var _callback = _request.get_callback();
if (is_callable(_callback)) {
	try {
		_data = json_parse(_data);
	}
	catch(_ex) { /* ignore it */ };
	_callback(_code, _data, _request);
}

// Request will be handled (remove from map)
ds_map_delete(requests, _async_id);

