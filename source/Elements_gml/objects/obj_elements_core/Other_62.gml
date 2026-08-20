// #####################################################################
// # Http Event (auto-generated, DO NOT EDIT)
// #####################################################################

var __async_id__ = async_load[? "id"];
var __request__ = requests[? __async_id__];

if (is_undefined(__request__)) {
	exit;
}

var __status__ = async_load[? "status"];

// status 1 means "in progress" — wait for the terminal event.
if (__status__ == 1) exit;

if (_elements_options_is_debug()) {
	// async_load is a ds_map, which json_stringify cannot serialise.
	show_debug_message("HTTP: " + json_encode(async_load));
}

var __code__ = async_load[? "http_status"];
var __data__ = async_load[? "result"];

// response_headers is a ds_map, not a struct.
var __headers__ = async_load[? "response_headers"];

if (!is_undefined(__headers__) && ds_exists(__headers__, ds_type_map)) {
	var __set_cookie__ = string_trim(__headers__[? "Set-Cookie"] ?? "");
	if (string_length(__set_cookie__) > 0) {
		_elements_cookie_capture(__set_cookie__);
	}
}

try {
	__data__ = json_parse(__data__);
}
catch (__ex__) { /* body is not JSON; hand it back untouched */ };

var __hook__ = response_hooks[? __code__];
if (is_callable(__hook__) && __hook__(__code__, __data__, __request__) == true) {
	ds_map_delete(requests, __async_id__);
	exit;
}

var __callback__ = __request__.get_callback();
if (is_callable(__callback__)) {
	__callback__(__code__, __data__, __request__);
}

ds_map_delete(requests, __async_id__);

