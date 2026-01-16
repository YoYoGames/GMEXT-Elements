if (locked) return;

elements_application_get_by_id("gmtest", function(_code, _data, _request) {
	if (_code == 200) 
	{
		obj_game.application = _data;
	}
	show_debug_message($"elements_application_get_by_id :: {_data}");
});