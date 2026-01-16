if (locked) return;

elements_profile_get_current(function(_code, _data, _request) {
	if (_code == 200)
	{
		obj_game.profile = _data;
	}
	show_debug_message($"elements_profile_get_current :: {_data}");
});