if (locked) return;

var _profile = obj_game.profile;
var _session_data = obj_game.session_data;

elements_crossfire_set_identity(_profile.id, _session_data.sessionSecret); 

elements_crossfire_events_on_connected_callback(function() {
	var _prev_match_id = elements_crossfire_get_match_id() ?? "";
	elements_crossfire_join_match(_prev_match_id);	
});
	 
elements_crossfire_connect();

