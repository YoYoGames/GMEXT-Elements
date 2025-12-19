

function _elements_options_get_crossfire_url() {
	static _url = extension_get_option_value("Elements", "server_crossfire_url");
	return _url;
}

function _elements_options_get_crossfire_port() {
	static _port = extension_get_option_value("Elements", "server_crossfire_port");
	return _port;
}
