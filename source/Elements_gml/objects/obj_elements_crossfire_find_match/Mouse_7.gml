if (locked) return;

var _profile = obj_game.profile;
var _session_data = obj_game.session_data;
	 
elements_crossfire_set_identity(_profile.id, _session_data.sessionSecret); 

elements_crossfire_events_on_connected_callback(function() {
	var _configuration = "unranked";
	elements_crossfire_find_match(_configuration);
});
	 
elements_crossfire_connect();

