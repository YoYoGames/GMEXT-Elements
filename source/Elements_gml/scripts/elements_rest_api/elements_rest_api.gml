// #####################################################################
// # Endpoint Definitions (auto-generated, DO NOT EDIT)
// #####################################################################

/**
 * @func elements_upload_apple_iap_receipt()
 * Upload Apple IAP Receipt. Returns a list of RewardIssuances, which may contain already-redeemed issuances.
 * @param {Struct.ElementsCreateAppleIapReceipt} _body
 * @param {Function} _callback
 */
function elements_upload_apple_iap_receipt(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1514807530) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateAppleIapReceipt", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/ios/receipt";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_application_profiles()
 * Searches all instances of ApplicationProfiles associated with  the application.  The search query may be a full text search.
 * @param {String} _application_name_or_id
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_application_profiles(_application_name_or_id, _offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_applications()
 * Performs a full-text search of all applications known to the server.  As with other full-text endpoints this allows for pagination and offset.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_applications(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_application()
 * Gets the metadata for a single application.  This may include more specific details not available in the bulk-get or fetch operation.
 * @param {Struct.ElementsCreateApplicationRequest} _body
 * @param {Function} _callback
 */
function elements_create_application(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1130871979) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateApplicationRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_application()
 * Gets the metadata for a single application.  This may include more specific details not available in the bulk-get or fetch operation.
 * @param {String} _name_or_id
 * @param {Function} _callback
 */
function elements_get_application(_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_name_or_id)) show_error($"{_GMFUNCTION_} :: _name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_application()
 * Performs an update to an existing application known to the server.
 * @param {String} _name_or_id
 * @param {Struct.ElementsUpdateApplicationRequest} _body
 * @param {Function} _callback
 */
function elements_update_application(_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_name_or_id)) show_error($"{_GMFUNCTION_} :: _name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1097006730) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateApplicationRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_application()
 * Deletes a specific application known to the server.
 * @param {String} _name_or_id
 * @param {Function} _callback
 */
function elements_delete_application(_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_name_or_id)) show_error($"{_GMFUNCTION_} :: _name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_facebook_application_configuration()
 * Creates a new Facebook ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsFacebookApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_create_facebook_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 634460580) show_error($"{_GMFUNCTION_} :: _body expected ElementsFacebookApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/facebook";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_facebook_application_configuration()
 * Gets a single Facebook application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_get_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/facebook/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_facebook_application_configuration()
 * Updates an existing Facebook Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsFacebookApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_update_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 634460580) show_error($"{_GMFUNCTION_} :: _body expected ElementsFacebookApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/facebook/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_facebook_application_configuration()
 * Deletes an existing Facebook Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_delete_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/facebook/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_firebase_application_configuration()
 * Creates a new Firebase ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsFirebaseApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_create_firebase_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1131823289) show_error($"{_GMFUNCTION_} :: _body expected ElementsFirebaseApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/firebase";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_firebase_application_configuration()
 * Gets a single Firebase application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_get_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/firebase/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_firebase_application_configuration()
 * Updates an existing Firebase Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsFirebaseApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_update_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1131823289) show_error($"{_GMFUNCTION_} :: _body expected ElementsFirebaseApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/firebase/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_firebase_application_configuration()
 * Deletes an existing Firebase Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_delete_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/firebase/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_google_play_application_configuration()
 * Creates a new GooglePlay ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsGooglePlayApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_create_google_play_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 193983205) show_error($"{_GMFUNCTION_} :: _body expected ElementsGooglePlayApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/google_play";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_google_play_application_configuration()
 * Gets a single Google Play application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_get_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/google_play/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_google_play_application_configuration()
 * Updates an existing Google Play Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsGooglePlayApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_update_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 193983205) show_error($"{_GMFUNCTION_} :: _body expected ElementsGooglePlayApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/google_play/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_google_play_application_configuration()
 * Deletes an existing Google Play Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_delete_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/google_play/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_product_bundle_for_application_configuration()
 * Updates the ProductBundle for the given ApplicationConfiguration
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Array[Struct.ElementsProductBundle]} _body
 * @param {String} _content_type
 * @param {Function} _callback
 */
function elements_update_product_bundle_for_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _content_type = "*/*", _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	__content_type__ = _content_type;
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_body) && !is_array(_body)) show_error($"{_GMFUNCTION_} :: _body expected ElementsProductBundle", true);
	if (!is_undefined(__content_type__) && !is_string(__content_type__)) show_error($"{_GMFUNCTION_} :: __content_type__ expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/google_play/{_application_configuration_name_or_id}/product_bundles";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_ios_application_configuration()
 * Creates a new iOS ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsIosApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_create_ios_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2241575037) show_error($"{_GMFUNCTION_} :: _body expected ElementsIosApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/ios";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_ios_application_configuration()
 * Gets a single iOS application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_get_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/ios/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_ios_application_configuration()
 * Updates an existing iOS Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsIosApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_update_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2241575037) show_error($"{_GMFUNCTION_} :: _body expected ElementsIosApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/ios/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_ios_application_configuration()
 * Deletes an existing iOS Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_delete_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/ios/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_product_bundle_for_application_configuration_1()
 * Updates the ProductBundle for the given ApplicationConfiguration
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Array[Struct.ElementsProductBundle]} _body
 * @param {Function} _callback
 */
function elements_update_product_bundle_for_application_configuration_1(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_body) && !is_array(_body)) show_error($"{_GMFUNCTION_} :: _body expected ElementsProductBundle", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/ios/{_application_configuration_name_or_id}/product_bundles";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_matchmaking_application_configuration()
 * Creates a new iOS ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsMatchmakingApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_create_matchmaking_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 82183132) show_error($"{_GMFUNCTION_} :: _body expected ElementsMatchmakingApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/matchmaking";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_matchmaking_application_configuration()
 * Gets a single iOS application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_get_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/matchmaking/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_matchmaking_application_configuration()
 * Updates an existing iOS Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsMatchmakingApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_update_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 82183132) show_error($"{_GMFUNCTION_} :: _body expected ElementsMatchmakingApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/matchmaking/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_matchmaking_application_configuration()
 * Deletes an existing iOS Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_delete_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/matchmaking/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_psn_application_configuration()
 * Creates a new PSN ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsPSNApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_create_psn_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1535140709) show_error($"{_GMFUNCTION_} :: _body expected ElementsPSNApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/psn";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_psn_application_configuration()
 * Gets a single PSN application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_get_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/psn/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_psn_application_configuration()
 * Updates an existing PSN Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsPSNApplicationConfiguration} _body
 * @param {Function} _callback
 */
function elements_update_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1535140709) show_error($"{_GMFUNCTION_} :: _body expected ElementsPSNApplicationConfiguration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/psn/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_psn_application_configuration()
 * Deletes an existing PSN Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} _callback
 */
function elements_delete_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_name_or_id expected string", true);
	if (!is_string(_application_configuration_name_or_id)) show_error($"{_GMFUNCTION_} :: _application_configuration_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/application/{_application_name_or_id}/configuration/psn/{_application_configuration_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_auth_schemes()
 * Requires SUPERUSER access. Gets a pagination of Auth Schemes for the given query.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Array[String]} _tags
 * @param {Function} _callback
 */
function elements_get_auth_schemes(_offset = undefined, _count = undefined, _tags = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_tags) && !is_array(_tags)) show_error($"{_GMFUNCTION_} :: _tags expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/custom";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, tags : _tags };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_auth_scheme()
 * Creates a new Auth Scheme, from the data in the given auth scheme request
 * @param {Struct.ElementsCreateAuthSchemeRequest} _body
 * @param {Function} _callback
 */
function elements_create_auth_scheme(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 166078714) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateAuthSchemeRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/custom";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_auth_scheme()
 * Gets a specific Auth Scheme by the authSchemeId.
 * @param {String} _auth_scheme_id
 * @param {Function} _callback
 */
function elements_get_auth_scheme(_auth_scheme_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_auth_scheme_id)) show_error($"{_GMFUNCTION_} :: _auth_scheme_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/custom/{_auth_scheme_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_auth_scheme()
 * Updates an Auth Scheme with the specified data in the auth scheme request.
 * @param {String} _auth_scheme_id
 * @param {Struct.ElementsUpdateAuthSchemeRequest} _body
 * @param {Function} _callback
 */
function elements_update_auth_scheme(_auth_scheme_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_auth_scheme_id)) show_error($"{_GMFUNCTION_} :: _auth_scheme_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1359283309) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateAuthSchemeRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/custom/{_auth_scheme_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_auth_scheme()
 * Deletes an Auth Scheme with the specified id.
 * @param {String} _auth_scheme_id
 * @param {Function} _callback
 */
function elements_delete_auth_scheme(_auth_scheme_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_auth_scheme_id)) show_error($"{_GMFUNCTION_} :: _auth_scheme_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/custom/{_auth_scheme_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_oauth2_session()
 * Begins a session by accepting a session request with parameters matching the specified OAuth2 Scheme. Upon successful validation against the scheme provided in the path, this will return a Session which can be used for authentication. If there is no User associated with the supplied credentials, this will implicitly create a new account and will include that account information in the response. If there is an account, or this method receives an existing session key, this will link to the existing scheme if the account was not previously linked.
 * @param {Struct.ElementsOAuth2SessionRequest} _body
 * @param {Function} _callback
 */
function elements_create_oauth2_session(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3056783034) show_error($"{_GMFUNCTION_} :: _body expected ElementsOAuth2SessionRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth/oauth2";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_auth_schemes_1()
 * Requires SUPERUSER access. Gets a pagination of Auth Schemes for the given query.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Array[String]} _tags
 * @param {Function} _callback
 */
function elements_get_auth_schemes_1(_offset = undefined, _count = undefined, _tags = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_tags) && !is_array(_tags)) show_error($"{_GMFUNCTION_} :: _tags expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/oauth2";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, tags : _tags };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_auth_scheme_1()
 * Creates a new Auth Scheme, from the data in the given auth scheme request
 * @param {Struct.ElementsCreateOrUpdateOAuth2AuthSchemeRequest} _body
 * @param {Function} _callback
 */
function elements_create_auth_scheme_1(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 4181820335) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateOrUpdateOAuth2AuthSchemeRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/oauth2";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_auth_scheme_1()
 * Gets a specific Auth Scheme by the oAuth2AuthSchemeId.
 * @param {String} _oauth2_auth_scheme_id
 * @param {Function} _callback
 */
function elements_get_auth_scheme_1(_oauth2_auth_scheme_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_oauth2_auth_scheme_id)) show_error($"{_GMFUNCTION_} :: _oauth2_auth_scheme_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/oauth2/{_oauth2_auth_scheme_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_auth_scheme_1()
 * Updates an Auth Scheme with the specified data in the auth scheme request.
 * @param {String} _oauth2_auth_scheme_id
 * @param {Struct.ElementsCreateOrUpdateOAuth2AuthSchemeRequest} _body
 * @param {Function} _callback
 */
function elements_update_auth_scheme_1(_oauth2_auth_scheme_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_oauth2_auth_scheme_id)) show_error($"{_GMFUNCTION_} :: _oauth2_auth_scheme_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 4181820335) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateOrUpdateOAuth2AuthSchemeRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/oauth2/{_oauth2_auth_scheme_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_auth_scheme_1()
 * Deletes an Auth Scheme with the specified id.
 * @param {String} _oauth2_auth_scheme_id
 * @param {Function} _callback
 */
function elements_delete_auth_scheme_1(_oauth2_auth_scheme_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_oauth2_auth_scheme_id)) show_error($"{_GMFUNCTION_} :: _oauth2_auth_scheme_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/oauth2/{_oauth2_auth_scheme_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_oidc_session()
 * Begins a session by accepting a JWT. Upon successful validation against the scheme provided in the path, this will return a Session which can be used for authentication. If there is no User associated with the supplied credentials, this will implicitly create a new account and will include that account information in the response. If there is an account, or this method receives an existing session key, this will link to the existing scheme if the account was not previously linked.
 * @param {Struct.ElementsOidcSessionRequest} _body
 * @param {Function} _callback
 */
function elements_create_oidc_session(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 4082929088) show_error($"{_GMFUNCTION_} :: _body expected ElementsOidcSessionRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth/oidc";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_auth_schemes_2()
 * Requires SUPERUSER access. Gets a pagination of Auth Schemes for the given query.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Array[String]} _tags
 * @param {Function} _callback
 */
function elements_get_auth_schemes_2(_offset = undefined, _count = undefined, _tags = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_tags) && !is_array(_tags)) show_error($"{_GMFUNCTION_} :: _tags expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/oidc";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, tags : _tags };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_auth_scheme_2()
 * Creates a new Auth Scheme, from the data in the given auth scheme request
 * @param {Struct.ElementsCreateOrUpdateOidcAuthSchemeRequest} _body
 * @param {Function} _callback
 */
function elements_create_auth_scheme_2(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3649915157) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateOrUpdateOidcAuthSchemeRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/oidc";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_auth_scheme_2()
 * Gets a specific Auth Scheme by the oidcAuthSchemeId.
 * @param {String} _oidc_auth_scheme_id
 * @param {Function} _callback
 */
function elements_get_auth_scheme_2(_oidc_auth_scheme_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_oidc_auth_scheme_id)) show_error($"{_GMFUNCTION_} :: _oidc_auth_scheme_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/oidc/{_oidc_auth_scheme_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_auth_scheme_2()
 * Updates an Auth Scheme with the specified data in the auth scheme request.
 * @param {String} _oidc_auth_scheme_id
 * @param {Struct.ElementsCreateOrUpdateOidcAuthSchemeRequest} _body
 * @param {Function} _callback
 */
function elements_update_auth_scheme_2(_oidc_auth_scheme_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_oidc_auth_scheme_id)) show_error($"{_GMFUNCTION_} :: _oidc_auth_scheme_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3649915157) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateOrUpdateOidcAuthSchemeRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/oidc/{_oidc_auth_scheme_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_auth_scheme_2()
 * Deletes an Auth Scheme with the specified id.
 * @param {String} _oidc_auth_scheme_id
 * @param {Function} _callback
 */
function elements_delete_auth_scheme_2(_oidc_auth_scheme_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_oidc_auth_scheme_id)) show_error($"{_GMFUNCTION_} :: _oidc_auth_scheme_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/auth_scheme/oidc/{_oidc_auth_scheme_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_smart_contracts()
 * Gets a pagination of  SmartContracts.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _api ( one of: NEO | ETHEREUM | SOLANA | FLOW | NEAR).
 * @param {Array[String]} _network ( one of: NEO | NEO_TEST | ETHEREUM | ETHEREUM_TEST | BSC | BSC_TEST | POLYGON | POLYGON_TEST | SOLANA | SOLANA_TEST | FLOW | FLOW_TEST | NEAR | NEAR_TEST).
 * @param {Function} _callback
 */
function elements_get_smart_contracts(_offset = undefined, _count = undefined, _api = undefined, _network = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_api) && !is_string(_api)) show_error($"{_GMFUNCTION_} :: _api expected string", true);
	if (!is_undefined(_network) && !is_array(_network)) show_error($"{_GMFUNCTION_} :: _network expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/smart_contract";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, api : _api, network : _network };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_smart_contract()
 * Patches a  Smart Contract entry, associated with the specified deployed script hash.
 * @param {Struct.ElementsCreateSmartContractRequest} _body
 * @param {Function} _callback
 */
function elements_create_smart_contract(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 147112120) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateSmartContractRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/smart_contract";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_smart_contract()
 * Gets a specific  Smart Contract by contractId.
 * @param {String} _contract_id
 * @param {Function} _callback
 */
function elements_get_smart_contract(_contract_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_contract_id)) show_error($"{_GMFUNCTION_} :: _contract_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/smart_contract/{_contract_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_smart_contract()
 * Patches a  Smart Contract entry, associated with the specified deployed script hash.
 * @param {String} _contract_id
 * @param {Struct.ElementsUpdateSmartContractRequest} _body
 * @param {Function} _callback
 */
function elements_update_smart_contract(_contract_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_contract_id)) show_error($"{_GMFUNCTION_} :: _contract_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2326764889) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateSmartContractRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/smart_contract/{_contract_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_contract()
 * Deletes a  Smart Contract with the specified contractId.
 * @param {String} _contract_id
 * @param {Function} _callback
 */
function elements_delete_contract(_contract_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_contract_id)) show_error($"{_GMFUNCTION_} :: _contract_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/smart_contract/{_contract_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_vaults()
 * Gets a pagination of  Wallets. Optionally a user Id can be specified to filter for a given user.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _user_id
 * @param {Function} _callback
 */
function elements_get_vaults(_offset = undefined, _count = undefined, _user_id = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_user_id) && !is_string(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/vault";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, userId : _user_id };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_vault()
 * Creates a new  Vault, associated with the given user.
 * @param {Struct.ElementsCreateVaultRequest} _body
 * @param {Function} _callback
 */
function elements_create_vault(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3788719493) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateVaultRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/vault";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_vault()
 * Gets a specific  Vault by Id.
 * @param {String} _vault_id
 * @param {Function} _callback
 */
function elements_get_vault(_vault_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_vault_id)) show_error($"{_GMFUNCTION_} :: _vault_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/vault/{_vault_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_vault()
 * Updates a  Vault with the specified name or id.
 * @param {String} _vault_id
 * @param {Struct.ElementsUpdateVaultRequest} _body
 * @param {Function} _callback
 */
function elements_update_vault(_vault_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_vault_id)) show_error($"{_GMFUNCTION_} :: _vault_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1895978920) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateVaultRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/vault/{_vault_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_vault()
 * Deletes a  Vault with the specified id.
 * @param {String} _vault_id
 * @param {Function} _callback
 */
function elements_delete_vault(_vault_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_vault_id)) show_error($"{_GMFUNCTION_} :: _vault_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/vault/{_vault_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_wallets()
 * Gets a pagination of  Wallets. Optionally a user Id can be specified to filter for a given user.
 * @param {String} _vault_id
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _user_id
 * @param {String} _api ( one of: NEO | ETHEREUM | SOLANA | FLOW | NEAR).
 * @param {Array[String]} _network ( one of: NEO | NEO_TEST | ETHEREUM | ETHEREUM_TEST | BSC | BSC_TEST | POLYGON | POLYGON_TEST | SOLANA | SOLANA_TEST | FLOW | FLOW_TEST | NEAR | NEAR_TEST).
 * @param {Function} _callback
 */
function elements_get_wallets(_vault_id, _offset = undefined, _count = undefined, _user_id = undefined, _api = undefined, _network = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_vault_id)) show_error($"{_GMFUNCTION_} :: _vault_id expected string", true);
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_user_id) && !is_string(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected string", true);
	if (!is_undefined(_api) && !is_string(_api)) show_error($"{_GMFUNCTION_} :: _api expected string", true);
	if (!is_undefined(_network) && !is_array(_network)) show_error($"{_GMFUNCTION_} :: _network expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/vault/{_vault_id}/wallet";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, userId : _user_id, api : _api, network : _network };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_wallet()
 * Creates a new  Wallet, associated with the given user.
 * @param {String} _vault_id
 * @param {Struct.ElementsCreateWalletRequest} _body
 * @param {Function} _callback
 */
function elements_create_wallet(_vault_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_vault_id)) show_error($"{_GMFUNCTION_} :: _vault_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2593876170) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateWalletRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/vault/{_vault_id}/wallet";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_wallet()
 * Gets a specific  Wallet by Id.
 * @param {String} _vault_id
 * @param {String} _wallet_id
 * @param {Function} _callback
 */
function elements_get_wallet(_vault_id, _wallet_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_vault_id)) show_error($"{_GMFUNCTION_} :: _vault_id expected string", true);
	if (!is_string(_wallet_id)) show_error($"{_GMFUNCTION_} :: _wallet_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/vault/{_vault_id}/wallet/{_wallet_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_wallet()
 * Updates a  Wallet with the specified name or id.
 * @param {String} _vault_id
 * @param {String} _wallet_id
 * @param {Struct.ElementsUpdateWalletRequest} _body
 * @param {Function} _callback
 */
function elements_update_wallet(_vault_id, _wallet_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_vault_id)) show_error($"{_GMFUNCTION_} :: _vault_id expected string", true);
	if (!is_string(_wallet_id)) show_error($"{_GMFUNCTION_} :: _wallet_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3954591533) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateWalletRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/vault/{_vault_id}/wallet/{_wallet_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_wallet()
 * Deletes a  Wallet with the specified id.
 * @param {String} _vault_id
 * @param {String} _wallet_id
 * @param {Function} _callback
 */
function elements_delete_wallet(_vault_id, _wallet_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_vault_id)) show_error($"{_GMFUNCTION_} :: _vault_id expected string", true);
	if (!is_string(_wallet_id)) show_error($"{_GMFUNCTION_} :: _wallet_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/vault/{_vault_id}/wallet/{_wallet_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_wallet_1()
 * Gets a specific  Wallet by Id.
 * @param {String} _wallet_id
 * @param {Function} _callback
 */
function elements_get_wallet_1(_wallet_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_wallet_id)) show_error($"{_GMFUNCTION_} :: _wallet_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/blockchain/omni/wallet/{_wallet_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_deployments()
 * @param {String} _application_id
 * @param {Function} _callback
 */
function elements_get_deployments(_application_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/deployment/{_application_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_new_deployment()
 * @param {String} _application_id
 * @param {Struct.ElementsCreateDeploymentRequest} _body
 * @param {Function} _callback
 */
function elements_create_new_deployment(_application_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 4233991120) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateDeploymentRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/deployment/{_application_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_deployment()
 * @param {String} _application_id
 * @param {String} _deployment_id
 * @param {Function} _callback
 */
function elements_get_deployment(_application_id, _deployment_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected string", true);
	if (!is_string(_deployment_id)) show_error($"{_GMFUNCTION_} :: _deployment_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/deployment/{_application_id}/{_deployment_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_deployment()
 * @param {String} _application_id
 * @param {String} _deployment_id
 * @param {Function} _callback
 */
function elements_delete_deployment(_application_id, _deployment_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected string", true);
	if (!is_string(_deployment_id)) show_error($"{_GMFUNCTION_} :: _deployment_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/deployment/{_application_id}/{_deployment_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_current_deployment()
 * @param {String} _application_id
 * @param {Function} _callback
 */
function elements_get_current_deployment(_application_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/deployment/{_application_id}/current";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_deployment()
 * @param {String} _application_id
 * @param {String} _version
 * @param {Struct.ElementsUpdateDeploymentRequest} _body
 * @param {Function} _callback
 */
function elements_update_deployment(_application_id, _version, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_application_id)) show_error($"{_GMFUNCTION_} :: _application_id expected string", true);
	if (!is_string(_version)) show_error($"{_GMFUNCTION_} :: _version expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 549743099) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateDeploymentRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/deployment/{_application_id}/{_version}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_generate_code()
 * Generates API code for use on the client. Will generate Elements core if no application is specified in the request body.
 * @param {Struct.ElementsCodegenRequest} _body
 * @param {String} _content_type
 * @param {Function} _callback
 */
function elements_generate_code(_body = undefined, _content_type = "*/*", _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	__content_type__ = _content_type;
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2864578542) show_error($"{_GMFUNCTION_} :: _body expected ElementsCodegenRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(__content_type__) && !is_string(__content_type__)) show_error($"{_GMFUNCTION_} :: __content_type__ expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/codegen";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_followers()
 * Searches all followers in the system and returning the metadata for all matches against the given profile id.
 * @param {String} _profile_id
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Function} _callback
 */
function elements_get_followers(_profile_id, _offset = undefined, _count = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_profile_id)) show_error($"{_GMFUNCTION_} :: _profile_id expected string", true);
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/followee/{_profile_id}";
	
	// create query params struct
	var _params = { offset : _offset, count : _count };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_followers_1()
 * Searches all followers in the system and returning the metadata for all matches against the given profile id.
 * @param {String} _profile_id
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Function} _callback
 */
function elements_get_followers_1(_profile_id, _offset = undefined, _count = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_profile_id)) show_error($"{_GMFUNCTION_} :: _profile_id expected string", true);
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/follower/{_profile_id}";
	
	// create query params struct
	var _params = { offset : _offset, count : _count };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_follower()
 * Supplying the follower object, this will store the information supplied in the body of the request.
 * @param {String} _profile_id
 * @param {Struct.ElementsCreateFollowerRequest} _body
 * @param {Function} _callback
 */
function elements_create_follower(_profile_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_profile_id)) show_error($"{_GMFUNCTION_} :: _profile_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3688830827) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateFollowerRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/follower/{_profile_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_follower()
 * @param {String} _profile_id
 * @param {String} _profile_to_unfollow_id
 * @param {Function} _callback
 */
function elements_delete_follower(_profile_id, _profile_to_unfollow_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_profile_id)) show_error($"{_GMFUNCTION_} :: _profile_id expected string", true);
	if (!is_string(_profile_to_unfollow_id)) show_error($"{_GMFUNCTION_} :: _profile_to_unfollow_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/follower/{_profile_id}/{_profile_to_unfollow_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_follower()
 * @param {String} _profile_id
 * @param {String} _followed_id
 * @param {Function} _callback
 */
function elements_get_follower(_profile_id, _followed_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_profile_id)) show_error($"{_GMFUNCTION_} :: _profile_id expected string", true);
	if (!is_string(_followed_id)) show_error($"{_GMFUNCTION_} :: _followed_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/follower/{_profile_id}/{_followed_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_friend()
 * Gets a specific friend using the ID of the friend.
 * @param {String} _friend_id
 * @param {Function} _callback
 */
function elements_get_friend(_friend_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_friend_id)) show_error($"{_GMFUNCTION_} :: _friend_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/friend/{_friend_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_friend_registration()
 * Once a friend is deleted, re-creating a friend will set the friendship status to outgoing.
 * @param {String} _friend_id
 * @param {Function} _callback
 */
function elements_delete_friend_registration(_friend_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_friend_id)) show_error($"{_GMFUNCTION_} :: _friend_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/friend/{_friend_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_friends()
 * Searches all friends in the system and returning the metadata for all matches against the given search filter.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_friends(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/friend";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_items()
 * Searches all items and returns all matching items, filtered by the passed in search parameters.  If multiple tags are specified, then all items that contain at least one of the passed in tags is returned.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Array[String]} _tags
 * @param {String} _category
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_items(_offset = undefined, _count = undefined, _tags = undefined, _category = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_tags) && !is_array(_tags)) show_error($"{_GMFUNCTION_} :: _tags expected string", true);
	if (!is_undefined(_category) && !is_string(_category)) show_error($"{_GMFUNCTION_} :: _category expected string", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/item";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, tags : _tags, category : _category, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_item()
 * Supplying an item object, this will create a new item with a newly assigned unique id.  The Item representation returned in the response body is a representation of the Item as persisted with a unique identifier signed and with its fields properly normalized.  The supplied item object submitted with the request must have a name property that is unique across all items.
 * @param {Struct.ElementsCreateItemRequest} _body
 * @param {Function} _callback
 */
function elements_create_item(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 237024536) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateItemRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/item";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_item_by_identifier()
 * Looks up an item by the passed in identifier
 * @param {String} _identifier
 * @param {Function} _callback
 */
function elements_get_item_by_identifier(_identifier, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_identifier)) show_error($"{_GMFUNCTION_} :: _identifier expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/item/{_identifier}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_item()
 * Supplying an item, this will update the Item identified by the identifier in the path with contents from the passed in request body. 
 * @param {String} _identifier
 * @param {Struct.ElementsUpdateItemRequest} _body
 * @param {Function} _callback
 */
function elements_update_item(_identifier, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_identifier)) show_error($"{_GMFUNCTION_} :: _identifier expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1869501411) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateItemRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/item/{_identifier}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_upload_google_play_iap_purchase()
 * @param {Struct.ElementsCreateGooglePlayIapReceipt} _body
 * @param {Function} _callback
 */
function elements_upload_google_play_iap_purchase(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3895146603) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateGooglePlayIapReceipt", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/google/purchase";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_build_indexes()
 * @param {Struct.ElementsBuildIndexRequest} _body
 * @param {Function} _callback
 */
function elements_build_indexes(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3607862009) show_error($"{_GMFUNCTION_} :: _body expected ElementsBuildIndexRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/index/build";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_plans()
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Function} _callback
 */
function elements_get_plans(_offset = undefined, _count = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/index/plan";
	
	// create query params struct
	var _params = { offset : _offset, count : _count };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_advanced_inventory_item()
 * Gets the first (primary) inventory item for the specified item
 * @param {String} _inventory_item_id
 * @param {Function} _callback
 */
function elements_get_advanced_inventory_item(_inventory_item_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_inventory_item_id)) show_error($"{_GMFUNCTION_} :: _inventory_item_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/advanced/{_inventory_item_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_simple_inventory_item()
 * Updates an inventory item for the specified item
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsUpdateInventoryItemRequest} _body
 * @param {Function} _callback
 */
function elements_update_simple_inventory_item(_inventory_item_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_inventory_item_id)) show_error($"{_GMFUNCTION_} :: _inventory_item_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3290562721) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateInventoryItemRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/advanced/{_inventory_item_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_advanced_inventory_item()
 * Delete the inventory item as identified by the given item name/id
 * @param {String} _inventory_item_id
 * @param {Function} _callback
 */
function elements_delete_advanced_inventory_item(_inventory_item_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_inventory_item_id)) show_error($"{_GMFUNCTION_} :: _inventory_item_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/advanced/{_inventory_item_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_adjust_advanced_inventory_item_quantity()
 * Adjust the quantity of the first (primary) inventory item for the specified item.  This implicitly will create the InventoryItem if it does not exist.  The inventory item value
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsAdvancedInventoryItemQuantityAdjustment} _body
 * @param {Function} _callback
 */
function elements_adjust_advanced_inventory_item_quantity(_inventory_item_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_inventory_item_id)) show_error($"{_GMFUNCTION_} :: _inventory_item_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1883903687) show_error($"{_GMFUNCTION_} :: _body expected ElementsAdvancedInventoryItemQuantityAdjustment", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/advanced/{_inventory_item_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PATCH", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_advanced_inventory_items()
 * Searches all inventory items in the system and returns the metadata for all matches against the given search filter.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _user_id
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_advanced_inventory_items(_offset = undefined, _count = undefined, _user_id = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_user_id) && !is_string(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected string", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/advanced";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, userId : _user_id, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_advanced_inventory_item()
 * Create an inventory item for the specified item
 * @param {Struct.ElementsCreateAdvancedInventoryItemRequest} _body
 * @param {Function} _callback
 */
function elements_create_advanced_inventory_item(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 47663290) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateAdvancedInventoryItemRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/advanced";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_distinct_inventory_items()
 * Searches all inventory items in the system and returns the metadata for all matches against the given search filter.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _user_id
 * @param {String} _profile_id
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_distinct_inventory_items(_offset = undefined, _count = undefined, _user_id = undefined, _profile_id = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_user_id) && !is_string(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected string", true);
	if (!is_undefined(_profile_id) && !is_string(_profile_id)) show_error($"{_GMFUNCTION_} :: _profile_id expected string", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/distinct";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, userId : _user_id, profileId : _profile_id, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_distinct_inventory_item()
 * Create an inventory item for the specified item
 * @param {Struct.ElementsCreateDistinctInventoryItemRequest} _body
 * @param {Function} _callback
 */
function elements_create_distinct_inventory_item(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3579304364) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateDistinctInventoryItemRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/distinct";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_distinct_inventory_item()
 * Updates an inventory item for the specified item
 * @param {String} _distinct_inventory_item_id
 * @param {Struct.ElementsUpdateDistinctInventoryItemRequest} _body
 * @param {Function} _callback
 */
function elements_update_distinct_inventory_item(_distinct_inventory_item_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_distinct_inventory_item_id)) show_error($"{_GMFUNCTION_} :: _distinct_inventory_item_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3687348073) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateDistinctInventoryItemRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/distinct/{_distinct_inventory_item_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_distinct_inventory_item()
 * Delete the inventory item as identified by the given item name/id
 * @param {String} _distinct_inventory_item_id
 * @param {Function} _callback
 */
function elements_delete_distinct_inventory_item(_distinct_inventory_item_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_distinct_inventory_item_id)) show_error($"{_GMFUNCTION_} :: _distinct_inventory_item_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/distinct/{_distinct_inventory_item_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_distinct_inventory_item()
 * Gets the first (primary) inventory item for the specified item
 * @param {String} _inventory_item_id
 * @param {Function} _callback
 */
function elements_get_distinct_inventory_item(_inventory_item_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_inventory_item_id)) show_error($"{_GMFUNCTION_} :: _inventory_item_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/distinct/{_inventory_item_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_simple_inventory_item()
 * Gets the first (primary) inventory item for the specified item
 * @param {String} _inventory_item_id
 * @param {Function} _callback
 */
function elements_get_simple_inventory_item(_inventory_item_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_inventory_item_id)) show_error($"{_GMFUNCTION_} :: _inventory_item_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/simple/{_inventory_item_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_simple_inventory_item_1()
 * Updates an inventory item for the specified item
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsUpdateInventoryItemRequest} _body
 * @param {Function} _callback
 */
function elements_update_simple_inventory_item_1(_inventory_item_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_inventory_item_id)) show_error($"{_GMFUNCTION_} :: _inventory_item_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3290562721) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateInventoryItemRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/simple/{_inventory_item_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_simple_inventory_item()
 * Delete the inventory item as identified by the given item name/id
 * @param {String} _inventory_item_id
 * @param {Function} _callback
 */
function elements_delete_simple_inventory_item(_inventory_item_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_inventory_item_id)) show_error($"{_GMFUNCTION_} :: _inventory_item_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/simple/{_inventory_item_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_adjust_simple_inventory_item_quantity()
 * Adjust the quantity of the first (primary) inventory item for the specified item.  This implicitly will create the InventoryItem if it does not exist.  The inventory item value
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsSimpleInventoryItemQuantityAdjustment} _body
 * @param {Function} _callback
 */
function elements_adjust_simple_inventory_item_quantity(_inventory_item_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_inventory_item_id)) show_error($"{_GMFUNCTION_} :: _inventory_item_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2663745631) show_error($"{_GMFUNCTION_} :: _body expected ElementsSimpleInventoryItemQuantityAdjustment", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/simple/{_inventory_item_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PATCH", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_simple_inventory_items()
 * Searches all inventory items in the system and returns the metadata for all matches against the given search filter.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _user_id
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_simple_inventory_items(_offset = undefined, _count = undefined, _user_id = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_user_id) && !is_string(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected string", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/simple";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, userId : _user_id, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_simple_inventory_item()
 * Create an inventory item for the specified item
 * @param {Struct.ElementsCreateSimpleInventoryItemRequest} _body
 * @param {Function} _callback
 */
function elements_create_simple_inventory_item(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2410874866) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateSimpleInventoryItemRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/inventory/simple";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_matched_user_profiles_with_phone_numbers()
 * Both phones from request and from DB are normalized and compared.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Struct.ElementsInviteViaPhonesRequest} _body
 * @param {Function} _callback
 */
function elements_get_matched_user_profiles_with_phone_numbers(_offset = undefined, _count = undefined, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1104981419) show_error($"{_GMFUNCTION_} :: _body expected ElementsInviteViaPhonesRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/invite";
	
	// create query params struct
	var _params = { offset : _offset, count : _count };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_large_object()
 * @param {Struct} _body
 * @param {Function} _callback
 */
function elements_create_large_object(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "multipart/form-data";
	
	// argument validation
	if (!is_undefined(_body) && !is_struct(_body)) show_error($"{_GMFUNCTION_} :: _body expected any", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/large_object_mp";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_large_object_1()
 * @param {Struct.ElementsCreateLargeObjectRequest} _body
 * @param {Function} _callback
 */
function elements_create_large_object_1(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1592293949) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateLargeObjectRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/large_object";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_large_object_from_url()
 * @param {Struct.ElementsCreateLargeObjectFromUrlRequest} _body
 * @param {Function} _callback
 */
function elements_create_large_object_from_url(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 117731378) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateLargeObjectFromUrlRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/large_object/from_url";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_large_object()
 * @param {String} _large_object_id
 * @param {Function} _callback
 */
function elements_get_large_object(_large_object_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_large_object_id)) show_error($"{_GMFUNCTION_} :: _large_object_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/large_object/{_large_object_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_large_object()
 * @param {String} _large_object_id
 * @param {Struct.ElementsUpdateLargeObjectRequest} _body
 * @param {Function} _callback
 */
function elements_update_large_object(_large_object_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_large_object_id)) show_error($"{_GMFUNCTION_} :: _large_object_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1646762996) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateLargeObjectRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/large_object/{_large_object_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_large_object()
 * @param {String} _large_object_id
 * @param {Function} _callback
 */
function elements_delete_large_object(_large_object_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_large_object_id)) show_error($"{_GMFUNCTION_} :: _large_object_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/large_object/{_large_object_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_large_object_contents()
 * @param {String} _large_object_id
 * @param {Struct} _body
 * @param {String} _content_type
 * @param {Function} _callback
 */
function elements_update_large_object_contents(_large_object_id, _body = undefined, _content_type = "*/*", _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	__content_type__ = _content_type;
	
	// argument validation
	if (!is_string(_large_object_id)) show_error($"{_GMFUNCTION_} :: _large_object_id expected string", true);
	if (!is_undefined(_body) && !is_struct(_body)) show_error($"{_GMFUNCTION_} :: _body expected any", true);
	if (!is_undefined(__content_type__) && !is_string(__content_type__)) show_error($"{_GMFUNCTION_} :: __content_type__ expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/large_object/{_large_object_id}/content";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_leaderboards()
 * Performs a full-text search of all leaderboards known to the server.  As with other full-text endpoints this allows for pagination and offset.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_leaderboards(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/leaderboard";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_leaderboard()
 * Gets the metadata for a single leaderboard.  This may include more specific details not available in the bulk-get or fetch operation.
 * @param {Struct.ElementsLeaderboard} _body
 * @param {Function} _callback
 */
function elements_create_leaderboard(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2694437395) show_error($"{_GMFUNCTION_} :: _body expected ElementsLeaderboard", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/leaderboard";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_leaderboard()
 * Gets the metadata for a single leaderboard.  This may include more specific details not availble in the bulk-get or fetch operation.
 * @param {String} _name_or_id
 * @param {Function} _callback
 */
function elements_get_leaderboard(_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_name_or_id)) show_error($"{_GMFUNCTION_} :: _name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/leaderboard/{_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_leaderboard()
 * Performs an update to an existing leaderboard known to the server.
 * @param {String} _name_or_id
 * @param {Struct.ElementsLeaderboard} _body
 * @param {Function} _callback
 */
function elements_update_leaderboard(_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_name_or_id)) show_error($"{_GMFUNCTION_} :: _name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2694437395) show_error($"{_GMFUNCTION_} :: _body expected ElementsLeaderboard", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/leaderboard/{_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_leaderboard()
 * Deletes a specific leaderboard known to the server.
 * @param {String} _name_or_id
 * @param {Function} _callback
 */
function elements_delete_leaderboard(_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_name_or_id)) show_error($"{_GMFUNCTION_} :: _name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/leaderboard/{_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_global_rank_tabular()
 * Gets the current Profile's rank among all players for the particular leaderboard.
 * @param {String} _leaderboard_name_or_id Specifies the leaderboard name or ID.
 * @param {Real} _leaderboard_epoch Specifies the epoch for the leaderboard. If not provided, the current epoch will be used by default for epochal leaderboards. This value will be ignored for all-time leaderboards. Set this value to 0 to explicitly reference the current epoch (when applicable).
 * @param {Function} _callback
 */
function elements_get_global_rank_tabular(_leaderboard_name_or_id, _leaderboard_epoch = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_leaderboard_name_or_id)) show_error($"{_GMFUNCTION_} :: _leaderboard_name_or_id expected string", true);
	if (!is_undefined(_leaderboard_epoch) && !is_real(_leaderboard_epoch)) show_error($"{_GMFUNCTION_} :: _leaderboard_epoch expected int64", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/rank/global/{_leaderboard_name_or_id}";
	
	// create query params struct
	var _params = { leaderboardEpoch : _leaderboard_epoch };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_rank_among_friends()
 * Gets the current Profile's rank among friends for the particular leaderboard.
 * @param {String} _leaderboard_name_or_id Specifies the leaderboard name or ID.
 * @param {Real} _offset May be negative to place the requested player in the middle of the page.
 * @param {Real} _count The number of results to return in the page.
 * @param {Real} _relative Indicates whether or not to fetch results in a relative fashion.
 * @param {Real} _leaderboard_epoch Specifies the epoch for the leaderboard. If no value is provided, the current epoch will befetched.
 * @param {Function} _callback
 */
function elements_get_rank_among_friends(_leaderboard_name_or_id, _offset = undefined, _count = undefined, _relative = undefined, _leaderboard_epoch = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_leaderboard_name_or_id)) show_error($"{_GMFUNCTION_} :: _leaderboard_name_or_id expected string", true);
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_relative) && !is_real(_relative)) show_error($"{_GMFUNCTION_} :: _relative expected bool", true);
	if (!is_undefined(_leaderboard_epoch) && !is_real(_leaderboard_epoch)) show_error($"{_GMFUNCTION_} :: _leaderboard_epoch expected int64", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/rank/friends/{_leaderboard_name_or_id}";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, relative : _relative, leaderboardEpoch : _leaderboard_epoch };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_rank_among_mutual_followers()
 * Gets the current Profile's rank among mutual followers for the particular leaderboard.
 * @param {String} _leaderboard_name_or_id Specifies the leaderboard name or ID.
 * @param {Real} _offset May be negative to place the requested player in the middle of the page.
 * @param {Real} _count The number of results to return in the page.
 * @param {Real} _relative Indicates whether or not to fetch results in a relative fashion.
 * @param {Real} _leaderboard_epoch Specifies the epoch for the leaderboard. If no value is provided, the current epoch will befetched.
 * @param {Function} _callback
 */
function elements_get_rank_among_mutual_followers(_leaderboard_name_or_id, _offset = undefined, _count = undefined, _relative = undefined, _leaderboard_epoch = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_leaderboard_name_or_id)) show_error($"{_GMFUNCTION_} :: _leaderboard_name_or_id expected string", true);
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_relative) && !is_real(_relative)) show_error($"{_GMFUNCTION_} :: _relative expected bool", true);
	if (!is_undefined(_leaderboard_epoch) && !is_real(_leaderboard_epoch)) show_error($"{_GMFUNCTION_} :: _leaderboard_epoch expected int64", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/rank/mutual_followers/{_leaderboard_name_or_id}";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, relative : _relative, leaderboardEpoch : _leaderboard_epoch };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_score()
 * Posts a single score for the currently logged-in profile. Conceptually, this is creationg a new resource, however the server may opt to overwrite the existing identifier if it sees fit.
 * @param {String} _leaderboard_name_or_id The name or id of the leaderboard.
 * @param {Struct.ElementsScore} _body
 * @param {Function} _callback
 */
function elements_create_score(_leaderboard_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_leaderboard_name_or_id)) show_error($"{_GMFUNCTION_} :: _leaderboard_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3673458198) show_error($"{_GMFUNCTION_} :: _body expected ElementsScore", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/score/{_leaderboard_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_matches()
 * Lists all matches available.  Under most circumstances, this will requires that a profile be made available to the request.  The server may choose to return an error if no suitable profile can be determined.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_matches(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/match";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_match()
 * This method accepts an instance of Match, effectively requesting that the server find a suitable opponent for a game.  As other suitable players create matches the created match object may be updated as a suitable opponent is found.  The client must poll matches for updates and react accordingly.
 * @param {Struct.ElementsMatch} _body
 * @param {Function} _callback
 */
function elements_create_match(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2972025397) show_error($"{_GMFUNCTION_} :: _body expected ElementsMatch", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/match";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_match()
 * Gets a specific match given the match's unique ID.  Additionally, it is possible to instruct the API to wait for a period of time before sending the response.  The request will intentionally hang until the requested Match with ID has been updated in the database.
 * @param {String} _match_id
 * @param {Real} _social_engine_long_poll_timeout The maximum amount time the server will wait until a request returns a default set of data for long polling.  Specifying a zero will request that the server wait indefinitely until responding.  Though, the server may enforce a practical upper limit on the amount of time it takes to return.  Omitting this header will prompt the server to treat the request as a normal request.
 * @param {Function} _callback
 */
function elements_get_match(_match_id, _social_engine_long_poll_timeout = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_match_id)) show_error($"{_GMFUNCTION_} :: _match_id expected string", true);
	if (!is_undefined(_social_engine_long_poll_timeout) && !is_real(_social_engine_long_poll_timeout)) show_error($"{_GMFUNCTION_} :: _social_engine_long_poll_timeout expected int64", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/match/{_match_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_match()
 * Deletes and permanently removes the Match fromt he server.  This effectively will cancel any pending request for a match.  If a game is currently being played agaist the match, the server may reject the request to delete the match until the game concludes.
 * @param {String} _match_id
 * @param {Function} _callback
 */
function elements_delete_match(_match_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_match_id)) show_error($"{_GMFUNCTION_} :: _match_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/match/{_match_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_metadata_objects()
 * Searches all metadata in the system and returning all matches against the given search filter.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_metadata_objects(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_metadata()
 * Creates a new Metadata object with the provided details.
 * @param {Struct.ElementsCreateMetadataRequest} _body
 * @param {String} _content_type
 * @param {Function} _callback
 */
function elements_create_metadata(_body = undefined, _content_type = "*/*", _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	__content_type__ = _content_type;
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2487058506) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateMetadataRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(__content_type__) && !is_string(__content_type__)) show_error($"{_GMFUNCTION_} :: __content_type__ expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_metadata_object()
 * Gets a specific metadata object by name or id.
 * @param {String} _id
 * @param {Function} _callback
 */
function elements_get_metadata_object(_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_id)) show_error($"{_GMFUNCTION_} :: _id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata/{_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_metadata()
 * Updates a specific metadata object by name or id.
 * @param {String} _id
 * @param {Struct.ElementsUpdateMetadataRequest} _body
 * @param {String} _content_type
 * @param {Function} _callback
 */
function elements_update_metadata(_id, _body = undefined, _content_type = "*/*", _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	__content_type__ = _content_type;
	
	// argument validation
	if (!is_string(_id)) show_error($"{_GMFUNCTION_} :: _id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2761795881) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateMetadataRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(__content_type__) && !is_string(__content_type__)) show_error($"{_GMFUNCTION_} :: __content_type__ expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata/{_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_metadata()
 * Deletes a specific metadata object by name or id.
 * @param {String} _id
 * @param {Function} _callback
 */
function elements_delete_metadata(_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_id)) show_error($"{_GMFUNCTION_} :: _id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata/{_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_missions()
 * Searches all missions in the system and returning a number of matches against the given search filter, delimited by the offset and count.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Array[String]} _tags
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_missions(_offset = undefined, _count = undefined, _tags = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_tags) && !is_array(_tags)) show_error($"{_GMFUNCTION_} :: _tags expected string", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/mission";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, tags : _tags, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_mission()
 * Supplying a mission object, this will create a new mission with a newly assigned unique id.  The Mission representation returned in the response body is a representation of the Mission as persisted with a unique identifier assigned and with its fields properly normalized.  The supplied mission object submitted with the request must have a name property that is unique across all items.
 * @param {Struct.ElementsMission} _body
 * @param {Function} _callback
 */
function elements_create_mission(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 163403146) show_error($"{_GMFUNCTION_} :: _body expected ElementsMission", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/mission";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_mission_by_name_or_id()
 * Looks up a mission by the passed in identifier
 * @param {String} _mission_name_or_id
 * @param {Function} _callback
 */
function elements_get_mission_by_name_or_id(_mission_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_mission_name_or_id)) show_error($"{_GMFUNCTION_} :: _mission_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/mission/{_mission_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_mission()
 * Supplying a mission, this will update the Mission identified by the name or ID in the path with contents from the passed in request body. 
 * @param {String} _mission_name_or_id
 * @param {Struct.ElementsMission} _body
 * @param {Function} _callback
 */
function elements_update_mission(_mission_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_mission_name_or_id)) show_error($"{_GMFUNCTION_} :: _mission_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 163403146) show_error($"{_GMFUNCTION_} :: _body expected ElementsMission", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/mission/{_mission_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_mission()
 * Deletes a mission by the passed in identifier
 * @param {String} _mission_name_or_id
 * @param {Function} _callback
 */
function elements_delete_mission(_mission_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_mission_name_or_id)) show_error($"{_GMFUNCTION_} :: _mission_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/mission/{_mission_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_progress_tabular()
 * Gets the current Profile's rank among all players for the particular leaderboard.
 * @param {Function} _callback
 */
function elements_get_progress_tabular(_callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/progress";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_progress()
 * Supplying a progress object, this will create a new progress with a newly assigned unique id.  The Progress representation returned in the response body is a representation of the Progress as persisted with a unique identifier assigned and with its fields properly normalized.
 * @param {Struct.ElementsProgress} _body
 * @param {Function} _callback
 */
function elements_create_progress(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 250421607) show_error($"{_GMFUNCTION_} :: _body expected ElementsProgress", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/progress";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_progress()
 * Deletes a progress by the passed in identifier
 * @param {String} _progress_id
 * @param {Function} _callback
 */
function elements_delete_progress(_progress_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_progress_id)) show_error($"{_GMFUNCTION_} :: _progress_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/progress/progress/{_progress_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_progress_by_name_or_id()
 * Looks up a progress by the passed in identifier
 * @param {String} _progress_id
 * @param {Function} _callback
 */
function elements_get_progress_by_name_or_id(_progress_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_progress_id)) show_error($"{_GMFUNCTION_} :: _progress_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/progress/{_progress_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_progress()
 * Supplying a progress, this will update the Progress identified by the ID in the path with contents from the passed in request body. 
 * @param {String} _progress_id
 * @param {Struct.ElementsProgress} _body
 * @param {Function} _callback
 */
function elements_update_progress(_progress_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_progress_id)) show_error($"{_GMFUNCTION_} :: _progress_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 250421607) show_error($"{_GMFUNCTION_} :: _body expected ElementsProgress", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/progress/{_progress_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_reward_issuance()
 * @param {String} _reward_issuance_id
 * @param {Function} _callback
 */
function elements_get_reward_issuance(_reward_issuance_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_reward_issuance_id)) show_error($"{_GMFUNCTION_} :: _reward_issuance_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/reward_issuance/{_reward_issuance_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_reward_issuances()
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Array[String]} _states ( one of: ISSUED | REDEEMED).
 * @param {Array[String]} _tags
 * @param {Function} _callback
 */
function elements_get_reward_issuances(_offset = undefined, _count = undefined, _states = undefined, _tags = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_states) && !is_array(_states)) show_error($"{_GMFUNCTION_} :: _states expected string", true);
	if (!is_undefined(_tags) && !is_array(_tags)) show_error($"{_GMFUNCTION_} :: _tags expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/reward_issuance";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, states : _states, tags : _tags };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_redeem_reward_issuance()
 * @param {String} _reward_issuance_id
 * @param {Function} _callback
 */
function elements_redeem_reward_issuance(_reward_issuance_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_reward_issuance_id)) show_error($"{_GMFUNCTION_} :: _reward_issuance_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/reward_issuance/{_reward_issuance_id}/redeem";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_redeem_reward_issuances()
 * @param {Array[String]} _body
 * @param {String} _content_type
 * @param {Function} _callback
 */
function elements_redeem_reward_issuances(_body = undefined, _content_type = "*/*", _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	__content_type__ = _content_type;
	
	// argument validation
	if (!is_undefined(_body) && !is_array(_body)) show_error($"{_GMFUNCTION_} :: _body expected string", true);
	if (!is_undefined(__content_type__) && !is_string(__content_type__)) show_error($"{_GMFUNCTION_} :: __content_type__ expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/reward_issuance/redeem";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_schedule_events()
 * Searches all schedules in the system and returning a number of matches against the given search filter, delimited by the offset and count.
 * @param {String} _schedule_name_or_id
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Array[String]} _tags
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_schedule_events(_schedule_name_or_id, _offset = undefined, _count = undefined, _tags = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_schedule_name_or_id)) show_error($"{_GMFUNCTION_} :: _schedule_name_or_id expected string", true);
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_tags) && !is_array(_tags)) show_error($"{_GMFUNCTION_} :: _tags expected string", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/schedule/{_schedule_name_or_id}/event";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, tags : _tags, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_schedule_event()
 * Supplying a schedule object, this will create a new schedule with a newly assigned unique id.  The ScheduleEvent representation returned in the response body is a representation of the ScheduleEvent as persisted with a unique identifier assigned and with its fields properly normalized.  The supplied schedule object submitted with the request must have a name property that is unique across all items.
 * @param {String} _schedule_name_or_id
 * @param {Struct.ElementsCreateScheduleEventRequest} _body
 * @param {Function} _callback
 */
function elements_create_schedule_event(_schedule_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_schedule_name_or_id)) show_error($"{_GMFUNCTION_} :: _schedule_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3808981408) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateScheduleEventRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/schedule/{_schedule_name_or_id}/event";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_schedule_event_by_name_or_id()
 * Looks up a schedule by the passed in identifier
 * @param {String} _schedule_name_or_id
 * @param {String} _schedule_event_id
 * @param {Function} _callback
 */
function elements_get_schedule_event_by_name_or_id(_schedule_name_or_id, _schedule_event_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_schedule_name_or_id)) show_error($"{_GMFUNCTION_} :: _schedule_name_or_id expected string", true);
	if (!is_string(_schedule_event_id)) show_error($"{_GMFUNCTION_} :: _schedule_event_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/schedule/{_schedule_name_or_id}/event/{_schedule_event_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_schedule_event()
 * Supplying a schedule, this will update the ScheduleEvent identified by the name or ID in the path with contents from the passed in request body. 
 * @param {String} _schedule_name_or_id
 * @param {String} _schedule_event_id
 * @param {Struct.ElementsUpdateScheduleEventRequest} _body
 * @param {Function} _callback
 */
function elements_update_schedule_event(_schedule_name_or_id, _schedule_event_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_schedule_name_or_id)) show_error($"{_GMFUNCTION_} :: _schedule_name_or_id expected string", true);
	if (!is_string(_schedule_event_id)) show_error($"{_GMFUNCTION_} :: _schedule_event_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3327297397) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateScheduleEventRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/schedule/{_schedule_name_or_id}/event/{_schedule_event_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_schedule_event()
 * Deletes a schedule by the passed in identifier
 * @param {String} _schedule_name_or_id
 * @param {String} _schedule_event_id
 * @param {Function} _callback
 */
function elements_delete_schedule_event(_schedule_name_or_id, _schedule_event_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_schedule_name_or_id)) show_error($"{_GMFUNCTION_} :: _schedule_name_or_id expected string", true);
	if (!is_string(_schedule_event_id)) show_error($"{_GMFUNCTION_} :: _schedule_event_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/schedule/{_schedule_name_or_id}/event/{_schedule_event_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_schedule_progresses()
 * Fetches all current assignments to the currently logged-in profile.
 * @param {String} _schedule_name_or_id
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Array[String]} _tags
 * @param {Function} _callback
 */
function elements_get_schedule_progresses(_schedule_name_or_id, _offset = undefined, _count = undefined, _tags = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_schedule_name_or_id)) show_error($"{_GMFUNCTION_} :: _schedule_name_or_id expected string", true);
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_tags) && !is_array(_tags)) show_error($"{_GMFUNCTION_} :: _tags expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/schedule/{_schedule_name_or_id}/progress";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, tags : _tags };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_schedules()
 * Searches all schedules in the system and returning a number of matches against the given search filter, delimited by the offset and count.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Array[String]} _tags
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_schedules(_offset = undefined, _count = undefined, _tags = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_tags) && !is_array(_tags)) show_error($"{_GMFUNCTION_} :: _tags expected string", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/schedule";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, tags : _tags, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_schedule()
 * Supplying a schedule object, this will create a new schedule with a newly assigned unique id.  The Schedule representation returned in the response body is a representation of the Schedule as persisted with a unique identifier assigned and with its fields properly normalized.  The supplied schedule object submitted with the request must have a name property that is unique across all items.
 * @param {Struct.ElementsCreateScheduleRequest} _body
 * @param {Function} _callback
 */
function elements_create_schedule(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2403450450) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateScheduleRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/schedule";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_schedule_by_name_or_id()
 * Looks up a schedule by the passed in identifier
 * @param {String} _schedule_name_or_id
 * @param {Function} _callback
 */
function elements_get_schedule_by_name_or_id(_schedule_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_schedule_name_or_id)) show_error($"{_GMFUNCTION_} :: _schedule_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/schedule/{_schedule_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_schedule()
 * Supplying a schedule, this will update the Schedule identified by the name or ID in the path with contents from the passed in request body. 
 * @param {String} _schedule_name_or_id
 * @param {Struct.ElementsUpdateScheduleRequest} _body
 * @param {Function} _callback
 */
function elements_update_schedule(_schedule_name_or_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_schedule_name_or_id)) show_error($"{_GMFUNCTION_} :: _schedule_name_or_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3597890317) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateScheduleRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/schedule/{_schedule_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_schedule()
 * Deletes a schedule by the passed in identifier
 * @param {String} _schedule_name_or_id
 * @param {Function} _callback
 */
function elements_delete_schedule(_schedule_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_schedule_name_or_id)) show_error($"{_GMFUNCTION_} :: _schedule_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/schedule/{_schedule_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_fcm_registration()
 * Supplying FCM registration token, this will create a new token based on the information supplied to the endpoint.  The response will contain the token as it was written to the database.  Clients may subsequently update the token string with new values as they are issued by Firebase.
 * @param {Struct.ElementsFCMRegistration} _body
 * @param {Function} _callback
 */
function elements_create_fcm_registration(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1607130311) show_error($"{_GMFUNCTION_} :: _body expected ElementsFCMRegistration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/notification/fcm";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_registration()
 * Supplying FCM registration token, this will update the token string with the supplied values.  Clients may update the same registration with a different token issued with Firebase if they wish to simply retain the association with the 
 * @param {String} _fcm_registration_id
 * @param {Struct.ElementsFCMRegistration} _body
 * @param {Function} _callback
 */
function elements_update_registration(_fcm_registration_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_fcm_registration_id)) show_error($"{_GMFUNCTION_} :: _fcm_registration_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1607130311) show_error($"{_GMFUNCTION_} :: _body expected ElementsFCMRegistration", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/notification/fcm/{_fcm_registration_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_fcm_registration()
 * @param {String} _fcm_registration_id
 * @param {Function} _callback
 */
function elements_delete_fcm_registration(_fcm_registration_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_fcm_registration_id)) show_error($"{_GMFUNCTION_} :: _fcm_registration_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/notification/fcm/{_fcm_registration_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_profiles()
 * Searches all users in the system and returning the metadata for all matches against the given search filter. Optionally provide `before` and `after` params to specify a time range [`after`, `before`] for last-logged-in profiles matching in that range (inclusive). If `before` is not specified (or a negative number is provided) but `after` is valid, the query will return all records successive to the given `after` timestamp. Similarly, if `after` is not specified (or a negative number is provided) but `before` is valid, the query will return all records preceding the given `before` timestamp. Note that search and time range parameters currently cannot be combined in the same query.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Real} _before
 * @param {Real} _after
 * @param {String} _application
 * @param {String} _user
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_profiles(_offset = undefined, _count = undefined, _before = undefined, _after = undefined, _application = undefined, _user = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_before) && !is_real(_before)) show_error($"{_GMFUNCTION_} :: _before expected int64", true);
	if (!is_undefined(_after) && !is_real(_after)) show_error($"{_GMFUNCTION_} :: _after expected int64", true);
	if (!is_undefined(_application) && !is_string(_application)) show_error($"{_GMFUNCTION_} :: _application expected string", true);
	if (!is_undefined(_user) && !is_string(_user)) show_error($"{_GMFUNCTION_} :: _user expected string", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/profile";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, before : _before, after : _after, application : _application, user : _user, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_profile()
 * Supplying the create profile request, this will update the profile with the new information supplied in the body of the request. This will fire an event, dev.getelements.elements.service.profile.created, from the event manifest.
 * @param {Struct.ElementsCreateProfileRequest} _body
 * @param {Function} _callback
 */
function elements_create_profile(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 16877594) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateProfileRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/profile";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_profile()
 * Supplying an update request will attempt to update the profile.  The call will return the profile as it was written to the database.
 * @param {String} _profile_id
 * @param {Struct.ElementsUpdateProfileRequest} _body
 * @param {Function} _callback
 */
function elements_update_profile(_profile_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_profile_id)) show_error($"{_GMFUNCTION_} :: _profile_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 382495963) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateProfileRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/profile/{_profile_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_deactivate_profile()
 * Deletes and permanently removes the Profile from the server.  The server maykeep some record around to preserve relationships and references, but this profile will not be accessible again until it is recreated.
 * @param {String} _profile_id
 * @param {Function} _callback
 */
function elements_deactivate_profile(_profile_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_profile_id)) show_error($"{_GMFUNCTION_} :: _profile_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/profile/{_profile_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_current_profile()
 * This is a special endpoing which fetches the current Profile based on current auth credentials.  This considers the currently loggged-in Dser as well as the Application or Application Configuration against which the User is operating.  This may not be availble, in which case the appopraite error is rasied.
 * @param {Function} _callback
 */
function elements_get_current_profile(_callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/profile/current";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_profile()
 * Gets a specific profile by profile ID.
 * @param {String} _name
 * @param {Function} _callback
 */
function elements_get_profile(_name, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_name)) show_error($"{_GMFUNCTION_} :: _name expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/profile/{_name}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_profile_image()
 * @param {String} _profile_id
 * @param {Struct.ElementsUpdateProfileImageRequest} _body
 * @param {Function} _callback
 */
function elements_update_profile_image(_profile_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_profile_id)) show_error($"{_GMFUNCTION_} :: _profile_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1429530948) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateProfileImageRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/profile/{_profile_id}/image";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_save_data_documents()
 * Gets all save data documents available to the user.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _user_id
 * @param {String} _profile_id
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_save_data_documents(_offset = undefined, _count = undefined, _user_id = undefined, _profile_id = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_user_id) && !is_string(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected string", true);
	if (!is_undefined(_profile_id) && !is_string(_profile_id)) show_error($"{_GMFUNCTION_} :: _profile_id expected string", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/save_data";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, userId : _user_id, profileId : _profile_id, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_save_document()
 * Gets a single save data document.
 * @param {Struct.ElementsCreateSaveDataDocumentRequest} _body
 * @param {Function} _callback
 */
function elements_create_save_document(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 2901008509) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateSaveDataDocumentRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/save_data";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_save_document()
 * Gets a single save data document.
 * @param {String} _save_data_document_id
 * @param {Struct.ElementsUpdateSaveDataDocumentRequest} _body
 * @param {Function} _callback
 */
function elements_update_save_document(_save_data_document_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_save_data_document_id)) show_error($"{_GMFUNCTION_} :: _save_data_document_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3806683334) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateSaveDataDocumentRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/save_data/{_save_data_document_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_save_document()
 * @param {String} _save_data_document_id
 * @param {Function} _callback
 */
function elements_delete_save_document(_save_data_document_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_save_data_document_id)) show_error($"{_GMFUNCTION_} :: _save_data_document_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/save_data/{_save_data_document_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_profile_save_data_document_by_slot()
 * Gets a single save data document based on Profile ID and slot. This is a convenience method whichallows the client to fetch a save data based on slot an profile id.
 * @param {String} _profile_id
 * @param {Real} _slot
 * @param {Function} _callback
 */
function elements_get_profile_save_data_document_by_slot(_profile_id, _slot, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_profile_id)) show_error($"{_GMFUNCTION_} :: _profile_id expected string", true);
	if (!is_real(_slot)) show_error($"{_GMFUNCTION_} :: _slot expected int32", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/save_data/profile/{_profile_id}/{_slot}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_save_data_document()
 * Gets a single save data document
 * @param {String} _id
 * @param {Function} _callback
 */
function elements_get_save_data_document(_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_id)) show_error($"{_GMFUNCTION_} :: _id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/save_data/{_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_user_save_data_document_by_slot()
 * Gets a single save data document based on UserID and slot. This is a convenience method whichallows the client to fetch a save data based on slot an user id.
 * @param {String} _user_id
 * @param {Real} _slot
 * @param {Function} _callback
 */
function elements_get_user_save_data_document_by_slot(_user_id, _slot, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected string", true);
	if (!is_real(_slot)) show_error($"{_GMFUNCTION_} :: _slot expected int32", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/save_data/user/{_user_id}/{_slot}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_metadata_specs()
 * Gets a pagination of Metadata Specs for the given query.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {Function} _callback
 */
function elements_get_metadata_specs(_offset = undefined, _count = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata_spec";
	
	// create query params struct
	var _params = { offset : _offset, count : _count };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_metadata_spec()
 * Creates a new Metadata Spec definition.
 * @param {Struct.ElementsCreateMetadataSpecRequest} _body
 * @param {Function} _callback
 */
function elements_create_metadata_spec(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3295076267) show_error($"{_GMFUNCTION_} :: _body expected ElementsCreateMetadataSpecRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata_spec";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_metadata_spec()
 * Updates a MetadataSpec with the specified id.
 * @param {String} _metadata_spec_id
 * @param {Struct.ElementsUpdateMetadataSpecRequest} _body
 * @param {Function} _callback
 */
function elements_update_metadata_spec(_metadata_spec_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_metadata_spec_id)) show_error($"{_GMFUNCTION_} :: _metadata_spec_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1920219244) show_error($"{_GMFUNCTION_} :: _body expected ElementsUpdateMetadataSpecRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata_spec/{_metadata_spec_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_metadata_spec()
 * Deletes a MetadataSpec with the specified id.
 * @param {String} _metadata_spec_id
 * @param {Function} _callback
 */
function elements_delete_metadata_spec(_metadata_spec_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_metadata_spec_id)) show_error($"{_GMFUNCTION_} :: _metadata_spec_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata_spec/{_metadata_spec_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_editor_schema()
 * Gets a specific Metadata Editor Schema backed by the supplied MetadataSpec by name.
 * @param {String} _metadata_spec_name
 * @param {Function} _callback
 */
function elements_get_editor_schema(_metadata_spec_name, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_metadata_spec_name)) show_error($"{_GMFUNCTION_} :: _metadata_spec_name expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata_spec/{_metadata_spec_name}/editor.json";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_json_schema()
 * Gets a specific JSON Schema backed by the supplied MetadataSpec by name.
 * @param {String} _metadata_spec_name
 * @param {Function} _callback
 */
function elements_get_json_schema(_metadata_spec_name, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_metadata_spec_name)) show_error($"{_GMFUNCTION_} :: _metadata_spec_name expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata_spec/{_metadata_spec_name}/schema.json";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_metadata_spec()
 * Gets a specific MetadataSpec by name or Id.
 * @param {String} _metadata_spec_name_or_id
 * @param {Function} _callback
 */
function elements_get_metadata_spec(_metadata_spec_name_or_id, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_metadata_spec_name_or_id)) show_error($"{_GMFUNCTION_} :: _metadata_spec_name_or_id expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/metadata_spec/{_metadata_spec_name_or_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_mock_session()
 * Begins a session by accepting a mock session request.  The request must be made with an authenticated super-user.
 * @param {Struct.ElementsMockSessionRequest} _body
 * @param {Function} _callback
 */
function elements_create_mock_session(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3773080403) show_error($"{_GMFUNCTION_} :: _body expected ElementsMockSessionRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/mock_session";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_blacklist_session()
 * @param {String} _session_secret
 * @param {Function} _callback
 */
function elements_blacklist_session(_session_secret, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_session_secret)) show_error($"{_GMFUNCTION_} :: _session_secret expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/session/{_session_secret}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_username_password_session()
 * Begins a session by accepting both the UserID and the Passoword.  Upon successful completion of this call, the user will be added to the current HTTP session.  If the session expires, the user will have to reestablish the session by supplying credentials again.  This is most useful for applications delivered in a web page.
 * @param {Struct.ElementsUsernamePasswordSessionRequest} _body
 * @param {Function} _callback
 */
function elements_create_username_password_session(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 3751727376) show_error($"{_GMFUNCTION_} :: _body expected ElementsUsernamePasswordSessionRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/session";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_server_health()
 * Performs the health check for the server. What this actually does is deployment and implementation specific. However, any successful response code should indicate that the service is capable of servicing requests. Any unsuccessful error codes should indicate that the instance has internal issues and should be taken offline.
 * @param {Function} _callback
 */
function elements_get_server_health(_callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/health";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_version()
 * Returns information about the current server version.  This should always return theversion metadata.  This information is only known in packaged releases.
 * @param {Function} _callback
 */
function elements_get_version(_callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/version";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_sign_up_user()
 * Supplying the user create request object, this will create a new user.
 * @param {Struct.ElementsUserCreateRequest} _body
 * @param {Function} _callback
 */
function elements_sign_up_user(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 899782120) show_error($"{_GMFUNCTION_} :: _body expected ElementsUserCreateRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/signup";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_users()
 * Searches all users in the system and returning the metadata for all matches against the given search filter.
 * @param {Real} _offset
 * @param {Real} _count
 * @param {String} _search
 * @param {Function} _callback
 */
function elements_get_users(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_offset) && !is_real(_offset)) show_error($"{_GMFUNCTION_} :: _offset expected int32", true);
	if (!is_undefined(_count) && !is_real(_count)) show_error($"{_GMFUNCTION_} :: _count expected int32", true);
	if (!is_undefined(_search) && !is_string(_search)) show_error($"{_GMFUNCTION_} :: _search expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/user";
	
	// create query params struct
	var _params = { offset : _offset, count : _count, search : _search };
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, _params, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_user()
 * Supplying the user object, this will update the user with the new information supplied in the body of the request.  Optionally, the user's password may be provided in the User object.
 * @param {Struct.ElementsUserCreateRequest} _body
 * @param {Function} _callback
 */
function elements_create_user(_body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 899782120) show_error($"{_GMFUNCTION_} :: _body expected ElementsUserCreateRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/user";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "POST", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_user()
 * Gets a specific user by name, email, or unique user ID.
 * @param {String} _name
 * @param {Function} _callback
 */
function elements_get_user(_name, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_name)) show_error($"{_GMFUNCTION_} :: _name expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/user/{_name}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_deactivate_user()
 * Deletes and permanently removes the user from the server.  The server may keep some metadata as necessary to avoid data inconsistency.  However, the user has been deleted from the client standpoint and will not be accessible through any of the existing APIs.
 * @param {String} _name
 * @param {Function} _callback
 */
function elements_deactivate_user(_name, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_string(_name)) show_error($"{_GMFUNCTION_} :: _name expected string", true);
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/user/{_name}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_current_user()
 * A special endpoint used to get the current user for the request.  The current user is typically associated with the session but may be derived any other way.  This is essentially an alias for using GET /user/myUserId
 * @param {Function} _callback
 */
function elements_get_current_user(_callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	// argument validation
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/user/me";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "GET", undefined, undefined, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_user()
 * Supplying the user object, this will update the user with the new information supplied in the body of the request.  Optionally, the user's password may be provided in the User object.
 * @param {String} _user_id
 * @param {Struct.ElementsUserUpdateRequest} _body
 * @param {Function} _callback
 */
function elements_update_user(_user_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 45946483) show_error($"{_GMFUNCTION_} :: _body expected ElementsUserUpdateRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/user/{_user_id}";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_user_password()
 * Supplying the UserUpdatePasswordRequest, this will attempt to update the user's password only if they supply the correct existing password.
 * @param {String} _user_id
 * @param {Struct.ElementsUserUpdatePasswordRequest} _body
 * @param {Function} _callback
 */
function elements_update_user_password(_user_id, _body = undefined, _callback = undefined)
{
	static __base_url__ = _elements_options_get_rest_url();
	
	static __content_type__ = "application/json";
	
	// argument validation
	if (!is_string(_user_id)) show_error($"{_GMFUNCTION_} :: _user_id expected string", true);
	if (!is_undefined(_body))
	{
		if (!is_struct(_body) || _body[$ "__uid"] != 1441785724) show_error($"{_GMFUNCTION_} :: _body expected ElementsUserUpdatePasswordRequest", true);
		_body.validate(_GMFUNCTION_);
	}
	if (!is_undefined(_callback) && !is_callable(_callback)) show_error($"{_GMFUNCTION_} :: _callback expected function", true);
	
	// build url path
	var __url__ = $"{__base_url__}/user/{_user_id}/password";
	
	// create required security array
	var __security__ = [ "auth_bearer", "session_secret" ];
	
	return _elements_create_request(__url__, undefined, "PUT", _body, __content_type__, __security__, _callback, _GMFUNCTION_);
}

