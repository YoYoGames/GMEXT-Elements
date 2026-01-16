if (locked) return;

var _session_data = obj_game.session_data;
var _application = obj_game.application;

var _profile_request = new ElementsCreateProfileRequest(_session_data.session.user.id, _application.id);

elements_profile_post(_profile_request, function(_code, _data, _request) {
	if (_code == 200)
	{
		obj_game.profile = _data;
	}
	show_debug_message($"elements_profile_post :: {_data}");
});