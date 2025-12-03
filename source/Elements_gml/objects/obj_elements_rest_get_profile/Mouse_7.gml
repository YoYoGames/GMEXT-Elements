if (locked) return;

elements_get_current_profile(function(_code, _data, _request) {
	if (_code == 200)
	{
		obj_game.profile = _data;
	}
	show_debug_message($"elements_get_current_profile :: {_data}");
});