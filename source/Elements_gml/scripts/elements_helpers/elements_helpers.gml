
function _elements_options_get_rest_url() {
	static _url = extension_get_option_value("Elements", "server_rest_url");
	return _url;
}

function _elements_options_get_crossfire_url() {
	static _url = extension_get_option_value("Elements", "server_crossfire_url");
	return _url;
}

function _elements_options_get_crossfire_port() {
	static _port = extension_get_option_value("Elements", "server_crossfire_port");
	return _port;
}

function _elements_options_is_debug() {
	static _enabled = bool(extension_get_option_value("Elements", "debug_logging"));
	return _enabled;
}
