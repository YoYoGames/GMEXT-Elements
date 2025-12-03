
layer_text_text(card1_status, is_undefined(session_data) ? "Status: Not authenticated" : "Status: Authenticated");
layer_text_text(card2_status, is_undefined(profile) ? "Status: No profile" : $"Status: Profile '{profile.user.name}'");

layer_text_text(card3_status, !elements_crossfire_is_ready() ? "Status: Disconnected" : $"Status: Connected");