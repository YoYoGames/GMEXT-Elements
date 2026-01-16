if (locked) return;

var _username = "";
var _password = "";

show_debug_message("[NOTE] Make sure you fill the data in @obj_elements_rest_create_session/left_released event");

var _session_request = new ElementsUsernamePasswordSessionRequest(_username, _password);

elements_session_post(_session_request, function(_code, _data, _request) {
	if (_code == 200) 
	{
		obj_game.session_data = _data;

		var _session_secret = _data.sessionSecret;		
		_elements_request_auth_set_token("auth_bearer", _session_secret);	
		_elements_request_auth_set_token("session_secret", _session_secret);	
	}
	show_debug_message($"elements_session_post :: {_data}");
});