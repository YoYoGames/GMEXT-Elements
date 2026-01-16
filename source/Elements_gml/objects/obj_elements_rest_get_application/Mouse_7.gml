if (locked) return;

elements_get_application("gmtest", function(_code, _data, _request) {
	if (_code == 200) 
	{
		obj_game.application = _data;
	}
	show_debug_message($"elements_get_application :: {_data}");
});