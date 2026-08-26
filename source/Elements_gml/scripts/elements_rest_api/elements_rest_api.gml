// #####################################################################
// # Endpoint Definitions (auto-generated, DO NOT EDIT)
// #####################################################################

/**
 * @func elements_adjust_advanced_inventory_item_quantity(_inventory_item_id, _body = undefined, _callback = undefined)
 * Adjust the quantity of the first (primary) inventory item for the specified item.  This implicitly will create the InventoryItem if it does not exist.  The inventory item value
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsAdvancedInventoryItemQuantityAdjustment} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_adjust_advanced_inventory_item_quantity(_inventory_item_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_inventory_item_id)) throw $"{__where__} :: 'inventoryItemId' expected String";
    if (!is_undefined(_body))
    {
        ElementsAdvancedInventoryItemQuantityAdjustment_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/advanced/{_elements_url_encode(_inventory_item_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PATCH", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_adjust_simple_inventory_item_quantity(_inventory_item_id, _body = undefined, _callback = undefined)
 * Adjust the quantity of the first (primary) inventory item for the specified item.  This implicitly will create the InventoryItem if it does not exist.  The inventory item value
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsSimpleInventoryItemQuantityAdjustment} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_adjust_simple_inventory_item_quantity(_inventory_item_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_inventory_item_id)) throw $"{__where__} :: 'inventoryItemId' expected String";
    if (!is_undefined(_body))
    {
        ElementsSimpleInventoryItemQuantityAdjustment_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/simple/{_elements_url_encode(_inventory_item_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PATCH", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_blacklist_session(_session_secret, _callback = undefined)
 * Destroys the Session
 * @param {String} _session_secret
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_blacklist_session(_session_secret, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_session_secret)) throw $"{__where__} :: 'sessionSecret' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/session/{_elements_url_encode(_session_secret)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_build_indexes(_body = undefined, _callback = undefined)
 * Builds all indexes.
 * @param {Struct.ElementsBuildIndexRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_build_indexes(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsBuildIndexRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/index/build";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_callback(_provider, _code = undefined, _state = undefined, _error = undefined, _callback = undefined)
 * Not called by game clients. The provider redirects the system browser here after the user completes (or denies) authorization.
 * @param {String} _provider The provider identifier this login attempt was begun for.
 * @param {String} [_code] The authorization code from the provider, absent if error is set.
 * @param {String} [_state] The state value identifying the pending attempt.
 * @param {String} [_error] The provider's reported error, e.g. the user denied consent.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_callback(_provider, _code = undefined, _state = undefined, _error = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_provider)) throw $"{__where__} :: 'provider' expected String";
    if (!is_undefined(_code))
    {
        if (!is_string(_code)) throw $"{__where__} :: 'code' expected String";
    }
    if (!is_undefined(_state))
    {
        if (!is_string(_state)) throw $"{__where__} :: 'state' expected String";
    }
    if (!is_undefined(_error))
    {
        if (!is_string(_error)) throw $"{__where__} :: 'error' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/oidc/{_elements_url_encode(_provider)}/callback";

    // create query params struct
    var __params__ = { code : _code, state : _state, error : _error };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_complete_reset(_body = undefined, _callback = undefined)
 * Validates the reset token and sets the new password. All existing sessions are invalidated. Returns 400 if the token is invalid or expired.
 * @param {Struct.ElementsCompletePasswordResetRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_complete_reset(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCompletePasswordResetRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/password/reset/complete";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_complete_verification(_token = undefined, _callback = undefined)
 * Completes email verification by consuming the single-use token from a verification link. Moves the associated UID status to VERIFIED.
 * @param {String} [_token]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_complete_verification(_token = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_token))
    {
        if (!is_string(_token)) throw $"{__where__} :: 'token' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/verify";

    // create query params struct
    var __params__ = { token : _token };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_confirm_oidc_session_link(_id, _body = undefined, _callback = undefined)
 * Presents the confirmToken returned in the original POST /oidc/session response for this attempt, completing the deferred account-link mutation and returning the resulting session. Only applicable to a linking attempt; not needed for an anonymous one.
 * @param {String} _id The opaque poll id returned by POST /oidc/session.
 * @param {Struct.ElementsOidcLoginAttemptConfirmRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_confirm_oidc_session_link(_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_body))
    {
        ElementsOidcLoginAttemptConfirmRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/oidc/session/{_elements_url_encode(_id)}/confirm";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_consume_oculus_iap_purchase(_body = undefined, _callback = undefined)
 * Attempts to consume the Oculus IAP Receipt data. Returns the result of the consume action.
 * @param {Struct.ElementsOculusIapReceipt} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_consume_oculus_iap_purchase(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsOculusIapReceipt_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/meta/oculus/consume";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_advanced_inventory_item(_body = undefined, _callback = undefined)
 * Create an inventory item for the specified item
 * @param {Struct.ElementsCreateAdvancedInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_advanced_inventory_item(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateAdvancedInventoryItemRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/advanced";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_application(_body = undefined, _callback = undefined)
 * Gets the metadata for a single application.  This may include more specific details not available in the bulk-get or fetch operation.
 * @param {Struct.ElementsCreateApplicationRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_application(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateApplicationRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_custom_auth_scheme(_body = undefined, _callback = undefined)
 * Creates a new Auth Scheme, from the data in the given auth scheme request
 * @param {Struct.ElementsCreateAuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_custom_auth_scheme(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateAuthSchemeRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/custom";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_distinct_inventory_item(_body = undefined, _callback = undefined)
 * Create an inventory item for the specified item
 * @param {Struct.ElementsCreateDistinctInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_distinct_inventory_item(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateDistinctInventoryItemRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/distinct";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_element_deployment(_body = undefined, _callback = undefined)
 * @param {Struct.ElementsCreateElementDeploymentRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_element_deployment(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateElementDeploymentRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elements/deployment";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_facebook_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
 * Creates a new Facebook ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsFacebookApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_facebook_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsFacebookApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/facebook";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_facebook_iap_receipt(_body = undefined, _callback = undefined)
 * Attempts to create the Facebook IAP Receipt data.
 * @param {Struct.ElementsFacebookIapReceipt} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_facebook_iap_receipt(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsFacebookIapReceipt_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/meta/facebook";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_fcm_registration(_body = undefined, _callback = undefined)
 * Supplying FCM registration token, this will create a new token based on the information supplied to the endpoint.  The response will contain the token as it was written to the database.  Clients may subsequently update the token string with new values as they are issued by Firebase.
 * @param {Struct.ElementsFCMRegistration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_fcm_registration(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsFCMRegistration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/notification/fcm";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_firebase_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
 * Creates a new Firebase ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsFirebaseApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_firebase_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsFirebaseApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/firebase";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_follower(_profile_id, _body = undefined, _callback = undefined)
 * Supplying the follower object, this will store the information supplied in the body of the request.
 * @param {String} _profile_id
 * @param {Struct.ElementsCreateFollowerRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_follower(_profile_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_profile_id)) throw $"{__where__} :: 'profileId' expected String";
    if (!is_undefined(_body))
    {
        ElementsCreateFollowerRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/follower/{_elements_url_encode(_profile_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_google_play_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
 * Creates a new GooglePlay ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsGooglePlayApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_google_play_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsGooglePlayApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/google_play";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_ios_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
 * Creates a new iOS ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsIosApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_ios_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsIosApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/ios";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_item(_body = undefined, _callback = undefined)
 * Supplying an item object, this will create a new item with a newly assigned unique id.  The Item representation returned in the response body is a representation of the Item as persisted with a unique identifier signed and with its fields properly normalized.  The supplied item object submitted with the request must have a name property that is unique across all items.
 * @param {Struct.ElementsCreateItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_item(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateItemRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/item";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_large_object(_body = undefined, _callback = undefined)
 * Creates a LargeObject
 * @param {Struct.ElementsCreateLargeObjectRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_large_object(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateLargeObjectRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/large_object";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_large_object_from_url(_body = undefined, _callback = undefined)
 * Creates a LargeObject from provided URL
 * @param {Struct.ElementsCreateLargeObjectFromUrlRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_large_object_from_url(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateLargeObjectFromUrlRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/large_object/from_url";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_leaderboard(_body = undefined, _callback = undefined)
 * Gets the metadata for a single leaderboard.  This may include more specific details not available in the bulk-get or fetch operation.
 * @param {Struct.ElementsCreateLeaderboardRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_leaderboard(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateLeaderboardRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/leaderboard";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_match(_body = undefined, _callback = undefined)
 * This method accepts an instance of MultiMatch and creates a new DB entry for it. Though it is generally recommended to create a new MultiMatch via matchmaking code in an Element, it can be created via REST for the purposes of testing or custom workflows.
 * @param {Struct.ElementsMultiMatch} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_match(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsMultiMatch_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/multi_match";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_matchmaking_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
 * Creates a new iOS ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsMatchmakingApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_matchmaking_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsMatchmakingApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/matchmaking";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_metadata(_body = undefined, _callback = undefined)
 * Creates a new Metadata object with the provided details.
 * @param {Struct.ElementsCreateMetadataRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_metadata(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "*/*";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateMetadataRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_metadata_spec(_body = undefined, _callback = undefined)
 * Creates a new Metadata Spec definition.
 * @param {Struct.ElementsCreateMetadataSpecRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_metadata_spec(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateMetadataSpecRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata_spec";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_mission(_body = undefined, _callback = undefined)
 * Supplying a mission object, this will create a new mission with a newly assigned unique id.  The Mission representation returned in the response body is a representation of the Mission as persisted with a unique identifier assigned and with its fields properly normalized.  The supplied mission object submitted with the request must have a name property that is unique across all items.
 * @param {Struct.ElementsCreateMissionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_mission(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateMissionRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/mission";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_mock_session(_body = undefined, _callback = undefined)
 * Begins a session by accepting a mock session request.  The request must be made with an authenticated super-user.
 * @param {Struct.ElementsMockSessionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_mock_session(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsMockSessionRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/mock_session";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_multipart_large_object(_body = undefined, _callback = undefined)
 * Creates a LargeObject with content
 * @param {Struct.ElementsCreateMultipartLargeObjectBody} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_multipart_large_object(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "multipart/form-data";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateMultipartLargeObjectBody_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/large_object_mp";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_new_deployment(_application_id, _body = undefined, _callback = undefined)
 * @param {String} _application_id
 * @param {Struct.ElementsCreateDeploymentRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_new_deployment(_application_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_id)) throw $"{__where__} :: 'applicationId' expected String";
    if (!is_undefined(_body))
    {
        ElementsCreateDeploymentRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/deployment/{_elements_url_encode(_application_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_oauth2_auth_scheme(_body = undefined, _callback = undefined)
 * Creates a new Auth Scheme, from the data in the given auth scheme request
 * @param {Struct.ElementsCreateOrUpdateOAuth2AuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_oauth2_auth_scheme(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateOrUpdateOAuth2AuthSchemeRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oauth2";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_oauth2_session(_body = undefined, _callback = undefined)
 * Begins a session by accepting a session request with parameters matching the specified OAuth2 Scheme. Upon successful validation against the scheme provided in the path, this will return a Session which can be used for authentication. If there is no User associated with the supplied credentials, this will implicitly create a new account and will include that account information in the response. If there is an account, or this method receives an existing session key, this will link to the existing scheme if the account was not previously linked.
 * @param {Struct.ElementsOAuth2SessionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_oauth2_session(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsOAuth2SessionRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth/oauth2";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_oculus_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
 * Creates a new Oculus ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsOculusApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_oculus_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsOculusApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/oculus";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_oculus_iap_receipt(_body = undefined, _callback = undefined)
 * Attempts to create the Oculus IAP Receipt data.
 * @param {Struct.ElementsOculusIapReceipt} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_oculus_iap_receipt(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsOculusIapReceipt_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/meta/oculus";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_oidc_auth_scheme(_body = undefined, _callback = undefined)
 * Creates a new Auth Scheme, from the data in the given auth scheme request
 * @param {Struct.ElementsCreateOrUpdateOidcAuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_oidc_auth_scheme(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateOrUpdateOidcAuthSchemeRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oidc";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_oidc_session(_body = undefined, _callback = undefined)
 * Begins a session by accepting a JWT. Upon successful validation against the scheme provided in the path, this will return a Session which can be used for authentication. If there is no User associated with the supplied credentials, this will implicitly create a new account and will include that account information in the response. If there is an account, or this method receives an existing session key, this will link to the existing scheme if the account was not previously linked.
 * @param {Struct.ElementsOidcSessionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_oidc_session(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsOidcSessionRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth/oidc";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_oidc_session_1(_body = undefined, _callback = undefined)
 * Supplying only 'provider' starts a pending browser-redirect login attempt and returns an id plus the authorize URL to open in the system browser. Additionally supplying 'idToken' instead validates it directly and returns a completed session synchronously, sharing validation code with the callback path.
 * @param {Struct.ElementsOidcLoginAttemptRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_oidc_session_1(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsOidcLoginAttemptRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/oidc/session";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_product_bundle(_body = undefined, _callback = undefined)
 * Creates a new Product Bundle mapping an application + provider schema + productId to a set of rewards.
 * @param {Struct.ElementsProductBundle} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_product_bundle(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsProductBundle_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/product/bundle";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_product_sku_schema(_body = undefined, _callback = undefined)
 * Registers a payment-provider schema identifier. Returns an existing record if the schema value already exists.
 * @param {Struct.ElementsProductSkuSchema} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_product_sku_schema(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsProductSkuSchema_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/product/sku/schema";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_profile(_body = undefined, _callback = undefined)
 * Supplying the create profile request, this will update the profile with the new information supplied in the body of the request. This will fire an event, dev.getelements.elements.service.profile.created, from the event manifest.
 * @param {Struct.ElementsCreateProfileRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_profile(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateProfileRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/profile";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_progress(_body = undefined, _callback = undefined)
 * This will create a new progress with a compound id of the profile and mission.  The Progress representation returned in the response body is a representation of the Progress as persisted with a unique identifier assigned and with its fields properly normalized.
 * @param {Struct.ElementsCreateProgressRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_progress(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateProgressRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/progress";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_provider_configuration(_body = undefined, _callback = undefined)
 * Requires SUPERUSER access. Resolves the discovery document at the supplied discoveryUrl and auto-provisions the matching OIDC auth scheme by issuer, so a single request fully activates a new provider (e.g. Twitch) with no code changes.
 * @param {Struct.ElementsCreateOrUpdateOidcProviderConfigurationRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_provider_configuration(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateOrUpdateOidcProviderConfigurationRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oidc_provider";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_psn_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
 * Creates a new PSN ApplicationConfiguration with the specific ID or application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsPSNApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_psn_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsPSNApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/psn";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_receipt(_body = undefined, _callback = undefined)
 * Creates a new Receipt record.
 * @param {Struct.ElementsCreateReceiptRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_receipt(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateReceiptRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/receipt";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_save_document(_body = undefined, _callback = undefined)
 * Gets a single save data document.
 * @param {Struct.ElementsCreateSaveDataDocumentRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_save_document(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateSaveDataDocumentRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/save_data";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_schedule(_body = undefined, _callback = undefined)
 * Supplying a schedule object, this will create a new schedule with a newly assigned unique id.  The Schedule representation returned in the response body is a representation of the Schedule as persisted with a unique identifier assigned and with its fields properly normalized.  The supplied schedule object submitted with the request must have a name property that is unique across all items.
 * @param {Struct.ElementsCreateScheduleRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_schedule(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateScheduleRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/schedule";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_schedule_event(_schedule_name_or_id, _body = undefined, _callback = undefined)
 * Supplying a schedule object, this will create a new schedule with a newly assigned unique id.  The ScheduleEvent representation returned in the response body is a representation of the ScheduleEvent as persisted with a unique identifier assigned and with its fields properly normalized.  The supplied schedule object submitted with the request must have a name property that is unique across all items.
 * @param {String} _schedule_name_or_id
 * @param {Struct.ElementsCreateScheduleEventRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_schedule_event(_schedule_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_schedule_name_or_id)) throw $"{__where__} :: 'scheduleNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsCreateScheduleEventRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/schedule/{_elements_url_encode(_schedule_name_or_id)}/event";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_score(_leaderboard_name_or_id, _body = undefined, _callback = undefined)
 * Posts a single score for the currently logged-in profile. Conceptually, this is creationg a new resource, however the server may opt to overwrite the existing identifier if it sees fit.
 * @param {String} _leaderboard_name_or_id The name or id of the leaderboard.
 * @param {Struct.ElementsScore} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_score(_leaderboard_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_leaderboard_name_or_id)) throw $"{__where__} :: 'leaderboardNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsScore_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/score/{_elements_url_encode(_leaderboard_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_simple_inventory_item(_body = undefined, _callback = undefined)
 * Create an inventory item for the specified item
 * @param {Struct.ElementsCreateSimpleInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_simple_inventory_item(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateSimpleInventoryItemRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/simple";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_smart_contract(_body = undefined, _callback = undefined)
 * Patches a  Smart Contract entry, associated with the specified deployed script hash.
 * @param {Struct.ElementsCreateSmartContractRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_smart_contract(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateSmartContractRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/smart_contract";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_steam_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
 * Creates a new Steam ApplicationConfiguration for the specified application.
 * @param {String} _application_name_or_id
 * @param {Struct.ElementsSteamApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_steam_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsSteamApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/steam";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_user(_body = undefined, _callback = undefined)
 * Supplying the user object, this will update the user with the new information supplied in the body of the request.  Optionally, the user's password may be provided in the User object.
 * @param {Struct.ElementsUserCreateRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_user(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsUserCreateRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_username_password_session(_body = undefined, _callback = undefined)
 * Begins a session by accepting both the UserID and the Password.  Upon successful completion of this call, the user will be added to the current HTTP session.  If the session expires, the user will have to reestablish the session by supplying credentials again.  This is most useful for applications delivered in a web page.
 * @param {Struct.ElementsUsernamePasswordSessionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_username_password_session(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsUsernamePasswordSessionRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/session";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_vault(_body = undefined, _callback = undefined)
 * Creates a new  Vault, associated with the given user.
 * @param {Struct.ElementsCreateVaultRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_vault(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateVaultRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/vault";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_create_wallet(_vault_id, _body = undefined, _callback = undefined)
 * Creates a new  Wallet, associated with the given user.
 * @param {String} _vault_id
 * @param {Struct.ElementsCreateWalletRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_create_wallet(_vault_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_vault_id)) throw $"{__where__} :: 'vaultId' expected String";
    if (!is_undefined(_body))
    {
        ElementsCreateWalletRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/vault/{_elements_url_encode(_vault_id)}/wallet";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_deactivate_profile(_profile_id, _callback = undefined)
 * Deletes and permanently removes the Profile from the server.  The server maykeep some record around to preserve relationships and references, but this profile will not be accessible again until it is recreated.
 * @param {String} _profile_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_deactivate_profile(_profile_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_profile_id)) throw $"{__where__} :: 'profileId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/profile/{_elements_url_encode(_profile_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_deactivate_user(_name, _callback = undefined)
 * Deletes and permanently removes the user from the server.  The server may keep some metadata as necessary to avoid data inconsistency.  However, the user has been deleted from the client standpoint and will not be accessible through any of the existing APIs.
 * @param {String} _name
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_deactivate_user(_name, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_name)) throw $"{__where__} :: 'name' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/{_elements_url_encode(_name)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_advanced_inventory_item(_inventory_item_id, _callback = undefined)
 * Delete the inventory item as identified by the given item name/id
 * @param {String} _inventory_item_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_advanced_inventory_item(_inventory_item_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_inventory_item_id)) throw $"{__where__} :: 'inventoryItemId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/advanced/{_elements_url_encode(_inventory_item_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_all_matches(_callback = undefined)
 * Deletes and permanently removes all MultiMatches from he server.  This effectively will cancel any pending request for a match.  If a game is currently being played against the match, the server may reject the request to delete the match until the game concludes.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_all_matches(_callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/multi_match";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_application(_name_or_id, _callback = undefined)
 * Deletes a specific application known to the server.
 * @param {String} _name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_application(_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_name_or_id)) throw $"{__where__} :: 'nameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_contract(_contract_id, _callback = undefined)
 * Deletes a  Smart Contract with the specified contractId.
 * @param {String} _contract_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_contract(_contract_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_contract_id)) throw $"{__where__} :: 'contractId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/smart_contract/{_elements_url_encode(_contract_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_custom_auth_scheme(_auth_scheme_id, _callback = undefined)
 * Deletes an Auth Scheme with the specified id.
 * @param {String} _auth_scheme_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_custom_auth_scheme(_auth_scheme_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_auth_scheme_id)) throw $"{__where__} :: 'authSchemeId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/custom/{_elements_url_encode(_auth_scheme_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_deployment(_application_id, _deployment_id, _callback = undefined)
 * @param {String} _application_id
 * @param {String} _deployment_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_deployment(_application_id, _deployment_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_id)) throw $"{__where__} :: 'applicationId' expected String";
    if (!is_string(_deployment_id)) throw $"{__where__} :: 'deploymentId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/deployment/{_elements_url_encode(_application_id)}/{_elements_url_encode(_deployment_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_distinct_inventory_item(_distinct_inventory_item_id, _callback = undefined)
 * Delete the inventory item as identified by the given item name/id
 * @param {String} _distinct_inventory_item_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_distinct_inventory_item(_distinct_inventory_item_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_distinct_inventory_item_id)) throw $"{__where__} :: 'distinctInventoryItemId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/distinct/{_elements_url_encode(_distinct_inventory_item_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_element_deployment(_deployment_id, _callback = undefined)
 * @param {String} _deployment_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_element_deployment(_deployment_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_deployment_id)) throw $"{__where__} :: 'deploymentId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elements/deployment/{_elements_url_encode(_deployment_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Deletes an existing Facebook Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/facebook/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_fcm_registration(_fcm_registration_id, _callback = undefined)
 * @param {String} _fcm_registration_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_fcm_registration(_fcm_registration_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_fcm_registration_id)) throw $"{__where__} :: 'fcmRegistrationId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/notification/fcm/{_elements_url_encode(_fcm_registration_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Deletes an existing Firebase Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/firebase/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_follower(_profile_id, _profile_to_unfollow_id, _callback = undefined)
 * Deletes a Follower relationship
 * @param {String} _profile_id
 * @param {String} _profile_to_unfollow_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_follower(_profile_id, _profile_to_unfollow_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_profile_id)) throw $"{__where__} :: 'profileId' expected String";
    if (!is_string(_profile_to_unfollow_id)) throw $"{__where__} :: 'profileToUnfollowId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/follower/{_elements_url_encode(_profile_id)}/{_elements_url_encode(_profile_to_unfollow_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_friend_registration(_friend_id, _callback = undefined)
 * Once a friend is deleted, re-creating a friend will set the friendship status to outgoing.
 * @param {String} _friend_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_friend_registration(_friend_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_friend_id)) throw $"{__where__} :: 'friendId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/friend/{_elements_url_encode(_friend_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Deletes an existing Google Play Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/google_play/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Deletes an existing iOS Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/ios/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_item(_identifier, _callback = undefined)
 * Delete the item as identified by the given item name/id
 * @param {String} _identifier
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_item(_identifier, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_identifier)) throw $"{__where__} :: 'identifier' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/item/{_elements_url_encode(_identifier)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_large_object(_large_object_id, _callback = undefined)
 * Deletes a LargeObject
 * @param {String} _large_object_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_large_object(_large_object_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_large_object_id)) throw $"{__where__} :: 'largeObjectId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/large_object/{_elements_url_encode(_large_object_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_leaderboard(_name_or_id, _callback = undefined)
 * Deletes a specific leaderboard known to the server.
 * @param {String} _name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_leaderboard(_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_name_or_id)) throw $"{__where__} :: 'nameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/leaderboard/{_elements_url_encode(_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_match(_match_id, _callback = undefined)
 * Deletes and permanently removes the MultiMatch from he server.  This effectively will cancel any pending request for a match.  If a game is currently being played against the match, the server may reject the request to delete the match until the game concludes.
 * @param {String} _match_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_match(_match_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_match_id)) throw $"{__where__} :: 'matchId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/multi_match/{_elements_url_encode(_match_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Deletes an existing iOS Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/matchmaking/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_metadata(_id, _callback = undefined)
 * Deletes a specific metadata object by name or id.
 * @param {String} _id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_metadata(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_metadata_spec(_metadata_spec_id, _callback = undefined)
 * Deletes a MetadataSpec with the specified id.
 * @param {String} _metadata_spec_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_metadata_spec(_metadata_spec_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_metadata_spec_id)) throw $"{__where__} :: 'metadataSpecId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata_spec/{_elements_url_encode(_metadata_spec_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_mission(_mission_name_or_id, _callback = undefined)
 * Deletes a mission by the passed in identifier
 * @param {String} _mission_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_mission(_mission_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_mission_name_or_id)) throw $"{__where__} :: 'missionNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/mission/{_elements_url_encode(_mission_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_oauth2_auth_scheme(_oauth2_auth_scheme_id, _callback = undefined)
 * Deletes an Auth Scheme with the specified id.
 * @param {String} _oauth2_auth_scheme_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_oauth2_auth_scheme(_oauth2_auth_scheme_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_oauth2_auth_scheme_id)) throw $"{__where__} :: 'oAuth2AuthSchemeId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oauth2/{_elements_url_encode(_oauth2_auth_scheme_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_oculus_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Deletes an existing Oculus Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_oculus_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/oculus/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_oidc_auth_scheme(_oidc_auth_scheme_id, _callback = undefined)
 * Deletes an Auth Scheme with the specified id.
 * @param {String} _oidc_auth_scheme_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_oidc_auth_scheme(_oidc_auth_scheme_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_oidc_auth_scheme_id)) throw $"{__where__} :: 'oidcAuthSchemeId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oidc/{_elements_url_encode(_oidc_auth_scheme_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_product_bundle(_id, _callback = undefined)
 * Permanently removes the Product Bundle identified by the given database id.
 * @param {String} _id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_product_bundle(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/product/bundle/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_product_sku_schema(_id, _callback = undefined)
 * Permanently removes the schema identifier with the given database id.
 * @param {String} _id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_product_sku_schema(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/product/sku/schema/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_progress(_progress_id, _callback = undefined)
 * Deletes a progress by the passed in identifier
 * @param {String} _progress_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_progress(_progress_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_progress_id)) throw $"{__where__} :: 'progressId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/progress/progress/{_elements_url_encode(_progress_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_provider_configuration(_provider_configuration_id, _callback = undefined)
 * Deletes an OIDC provider configuration
 * @param {String} _provider_configuration_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_provider_configuration(_provider_configuration_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_provider_configuration_id)) throw $"{__where__} :: 'providerConfigurationId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oidc_provider/{_elements_url_encode(_provider_configuration_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Deletes an existing PSN Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/psn/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_receipt(_id, _callback = undefined)
 * Deletes and permanently removes the Receipt from the server.
 * @param {String} _id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_receipt(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/receipt/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_save_document(_save_data_document_id, _callback = undefined)
 * Deletes a save data document
 * @param {String} _save_data_document_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_save_document(_save_data_document_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_save_data_document_id)) throw $"{__where__} :: 'saveDataDocumentId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/save_data/{_elements_url_encode(_save_data_document_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_schedule(_schedule_name_or_id, _callback = undefined)
 * Deletes a schedule by the passed in identifier
 * @param {String} _schedule_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_schedule(_schedule_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_schedule_name_or_id)) throw $"{__where__} :: 'scheduleNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/schedule/{_elements_url_encode(_schedule_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_schedule_event(_schedule_name_or_id, _schedule_event_id, _callback = undefined)
 * Deletes a schedule by the passed in identifier
 * @param {String} _schedule_name_or_id
 * @param {String} _schedule_event_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_schedule_event(_schedule_name_or_id, _schedule_event_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_schedule_name_or_id)) throw $"{__where__} :: 'scheduleNameOrId' expected String";
    if (!is_string(_schedule_event_id)) throw $"{__where__} :: 'scheduleEventId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/schedule/{_elements_url_encode(_schedule_name_or_id)}/event/{_elements_url_encode(_schedule_event_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_simple_inventory_item(_inventory_item_id, _callback = undefined)
 * Delete the inventory item as identified by the given item name/id
 * @param {String} _inventory_item_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_simple_inventory_item(_inventory_item_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_inventory_item_id)) throw $"{__where__} :: 'inventoryItemId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/simple/{_elements_url_encode(_inventory_item_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_steam_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Deletes an existing Steam application configuration if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_steam_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/steam/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_vault(_vault_id, _callback = undefined)
 * Deletes a  Vault with the specified id.
 * @param {String} _vault_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_vault(_vault_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_vault_id)) throw $"{__where__} :: 'vaultId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/vault/{_elements_url_encode(_vault_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_delete_wallet(_vault_id, _wallet_id, _callback = undefined)
 * Deletes a  Wallet with the specified id.
 * @param {String} _vault_id
 * @param {String} _wallet_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_delete_wallet(_vault_id, _wallet_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_vault_id)) throw $"{__where__} :: 'vaultId' expected String";
    if (!is_string(_wallet_id)) throw $"{__where__} :: 'walletId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/vault/{_elements_url_encode(_vault_id)}/wallet/{_elements_url_encode(_wallet_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "DELETE", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_generate_code(_body = undefined, _callback = undefined)
 * Generates API code for use on the client. Will generate Elements core if no application is specified in the request body.The generated code will always be returned in JSON format. To get a YAML representation, use the Oas3DocumentationResource directly, such as /api/rest/openapi.yaml
 * @param {Struct.ElementsCodegenRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_generate_code(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "*/*";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCodegenRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/codegen";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_advanced_inventory_item(_inventory_item_id, _callback = undefined)
 * Gets the first (primary) inventory item for the specified item
 * @param {String} _inventory_item_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_advanced_inventory_item(_inventory_item_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_inventory_item_id)) throw $"{__where__} :: 'inventoryItemId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/advanced/{_elements_url_encode(_inventory_item_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_advanced_inventory_items(_offset = 0, _count = 20, _user_id = undefined, _search = undefined, _callback = undefined)
 * Searches all inventory items in the system and returns the metadata for all matches against the given search filter.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_advanced_inventory_items(_offset = 0, _count = 20, _user_id = undefined, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_user_id))
    {
        if (!is_string(_user_id)) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/advanced";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, userId : _user_id, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_all_builtin_spis(_callback = undefined)
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_all_builtin_spis(_callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elements/builtin_spi";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_all_containers(_callback = undefined)
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_all_containers(_callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elements/container";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_all_features(_callback = undefined)
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_all_features(_callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elements/features";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_all_runtimes(_callback = undefined)
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_all_runtimes(_callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elements/runtime";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_all_system_elements(_callback = undefined)
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_all_system_elements(_callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elements/system";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_application(_name_or_id, _callback = undefined)
 * Gets the metadata for a single application.  This may include more specific details not available in the bulk-get or fetch operation.
 * @param {String} _name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_application(_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_name_or_id)) throw $"{__where__} :: 'nameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_application_profiles(_application_name_or_id, _offset = 0, _count = 20, _search = undefined, _callback = undefined)
 * Searches all instances of ApplicationProfiles associated with  the application.  The search query may be a full text search.
 * @param {String} _application_name_or_id
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_application_profiles(_application_name_or_id, _offset = 0, _count = 20, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_applications(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
 * Performs a full-text search of all applications known to the server.  As with other full-text endpoints this allows for pagination and offset.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_applications(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_current_deployment(_application_id, _callback = undefined)
 * @param {String} _application_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_current_deployment(_application_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_id)) throw $"{__where__} :: 'applicationId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/deployment/{_elements_url_encode(_application_id)}/current";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_current_profile(_callback = undefined)
 * This is a special endpoing which fetches the current Profile based on current auth credentials.  This considers the currently loggged-in Dser as well as the Application or Application Configuration against which the User is operating.  This may not be availble, in which case the appopraite error is rasied.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_current_profile(_callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/profile/current";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_current_user(_callback = undefined)
 * A special endpoint used to get the current user for the request.  The current user is typically associated with the session but may be derived any other way.  This is essentially an alias for using GET /user/myUserId
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_current_user(_callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/me";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_custom_auth_scheme(_auth_scheme_id, _callback = undefined)
 * Gets a specific Auth Scheme by the authSchemeId.
 * @param {String} _auth_scheme_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_custom_auth_scheme(_auth_scheme_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_auth_scheme_id)) throw $"{__where__} :: 'authSchemeId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/custom/{_elements_url_encode(_auth_scheme_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_custom_auth_schemes(_offset = 0, _count = 20, _tags = undefined, _callback = undefined)
 * Requires SUPERUSER access. Gets a pagination of Auth Schemes for the given query.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array<String>} [_tags]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_custom_auth_schemes(_offset = 0, _count = 20, _tags = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_tags))
    {
        if (!is_array(_tags)) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/custom";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, tags : _tags };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_deployment(_application_id, _deployment_id, _callback = undefined)
 * @param {String} _application_id
 * @param {String} _deployment_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_deployment(_application_id, _deployment_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_id)) throw $"{__where__} :: 'applicationId' expected String";
    if (!is_string(_deployment_id)) throw $"{__where__} :: 'deploymentId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/deployment/{_elements_url_encode(_application_id)}/{_elements_url_encode(_deployment_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_deployments(_application_id, _callback = undefined)
 * @param {String} _application_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_deployments(_application_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_id)) throw $"{__where__} :: 'applicationId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/deployment/{_elements_url_encode(_application_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_distinct_inventory_item(_inventory_item_id, _callback = undefined)
 * Gets the first (primary) inventory item for the specified item
 * @param {String} _inventory_item_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_distinct_inventory_item(_inventory_item_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_inventory_item_id)) throw $"{__where__} :: 'inventoryItemId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/distinct/{_elements_url_encode(_inventory_item_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_distinct_inventory_items(_offset = 0, _count = 20, _user_id = undefined, _profile_id = undefined, _search = undefined, _callback = undefined)
 * Searches all inventory items in the system and returns the metadata for all matches against the given search filter.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {String} [_profile_id]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_distinct_inventory_items(_offset = 0, _count = 20, _user_id = undefined, _profile_id = undefined, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_user_id))
    {
        if (!is_string(_user_id)) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(_profile_id))
    {
        if (!is_string(_profile_id)) throw $"{__where__} :: 'profileId' expected String";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/distinct";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, userId : _user_id, profileId : _profile_id, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_editor_schema(_metadata_spec_name, _callback = undefined)
 * Gets a specific Metadata Editor Schema backed by the supplied MetadataSpec by name.
 * @param {String} _metadata_spec_name
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_editor_schema(_metadata_spec_name, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_metadata_spec_name)) throw $"{__where__} :: 'metadataSpecName' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata_spec/{_elements_url_encode(_metadata_spec_name)}/editor.json";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_element_deployment(_deployment_id, _callback = undefined)
 * @param {String} _deployment_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_element_deployment(_deployment_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_deployment_id)) throw $"{__where__} :: 'deploymentId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elements/deployment/{_elements_url_encode(_deployment_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_element_deployments(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_element_deployments(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elements/deployment";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_element_path_record_for_artifact(_coordinates, _callback = undefined)
 * Inspects the artifact with the supplied coordinates.
 * @param {String} _coordinates
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_element_path_record_for_artifact(_coordinates, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_coordinates)) throw $"{__where__} :: 'coordinates' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elm/inspector/artifact/{_elements_url_encode(_coordinates)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_element_path_record_for_large_object_id(_large_object_id, _callback = undefined)
 * Inspects the artifact with the supplied large object id.
 * @param {String} _large_object_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_element_path_record_for_large_object_id(_large_object_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_large_object_id)) throw $"{__where__} :: 'largeObjectId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elm/inspector/large_object/{_elements_url_encode(_large_object_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Gets a single Facebook application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/facebook/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_facebook_iap_receipt(_id, _callback = undefined)
 * Fetches the facebook iap receipt with the matching database id.
 * @param {String} _id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_facebook_iap_receipt(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/meta/facebook/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_facebook_iap_receipts(_offset = 0, _count = 20, _callback = undefined)
 * Fetches the facebook iap receipt with the matching database id.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_facebook_iap_receipts(_offset = 0, _count = 20, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/meta/facebook";

    // create query params struct
    var __params__ = { offset : _offset, count : _count };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Gets a single Firebase application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/firebase/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_followees(_profile_id, _offset = 0, _count = 20, _callback = undefined)
 * Searches for all profiles that are being followed by the given profile id.
 * @param {String} _profile_id
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_followees(_profile_id, _offset = 0, _count = 20, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_profile_id)) throw $"{__where__} :: 'profileId' expected String";
    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/followee/{_elements_url_encode(_profile_id)}";

    // create query params struct
    var __params__ = { offset : _offset, count : _count };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_follower(_profile_id, _followed_id, _callback = undefined)
 * Gets a specific profile using the ID of the profile and followed id.
 * @param {String} _profile_id
 * @param {String} _followed_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_follower(_profile_id, _followed_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_profile_id)) throw $"{__where__} :: 'profileId' expected String";
    if (!is_string(_followed_id)) throw $"{__where__} :: 'followedId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/follower/{_elements_url_encode(_profile_id)}/{_elements_url_encode(_followed_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_followers(_profile_id, _offset = 0, _count = 20, _callback = undefined)
 * Searches all followers in the system and returning the metadata for all matches against the given profile id.
 * @param {String} _profile_id
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_followers(_profile_id, _offset = 0, _count = 20, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_profile_id)) throw $"{__where__} :: 'profileId' expected String";
    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/follower/{_elements_url_encode(_profile_id)}";

    // create query params struct
    var __params__ = { offset : _offset, count : _count };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_friend(_friend_id, _callback = undefined)
 * Gets a specific friend using the ID of the friend.
 * @param {String} _friend_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_friend(_friend_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_friend_id)) throw $"{__where__} :: 'friendId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/friend/{_elements_url_encode(_friend_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_friends(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
 * Searches all friends in the system and returning the metadata for all matches against the given search filter.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_friends(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/friend";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_global_rank_tabular(_leaderboard_name_or_id, _leaderboard_epoch = 0, _callback = undefined)
 * Gets the current Profile's rank among all players for the particular leaderboard.
 * @param {String} _leaderboard_name_or_id Specifies the leaderboard name or ID.
 * @param {Real} [_leaderboard_epoch] Specifies the epoch for the leaderboard. If not provided, the current epoch will be used by default for epochal leaderboards. This value will be ignored for all-time leaderboards. Set this value to 0 to explicitly reference the current epoch (when applicable).
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_global_rank_tabular(_leaderboard_name_or_id, _leaderboard_epoch = 0, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_leaderboard_name_or_id)) throw $"{__where__} :: 'leaderboardNameOrId' expected String";
    if (!is_undefined(_leaderboard_epoch))
    {
        if (!is_numeric(_leaderboard_epoch)) throw $"{__where__} :: 'leaderboardEpoch' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/rank/global/{_elements_url_encode(_leaderboard_name_or_id)}";

    // create query params struct
    var __params__ = { leaderboardEpoch : _leaderboard_epoch };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Gets a single Google Play application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/google_play/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Gets a single iOS application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/ios/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_item_by_identifier(_identifier, _callback = undefined)
 * Looks up an item by the passed in identifier
 * @param {String} _identifier
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_item_by_identifier(_identifier, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_identifier)) throw $"{__where__} :: 'identifier' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/item/{_elements_url_encode(_identifier)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_items(_offset = 0, _count = 20, _tags = undefined, _category = undefined, _search = undefined, _callback = undefined)
 * Searches all items and returns all matching items, filtered by the passed in search parameters.  If multiple tags are specified, then all items that contain at least one of the passed in tags is returned.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array<String>} [_tags]
 * @param {String} [_category]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_items(_offset = 0, _count = 20, _tags = undefined, _category = undefined, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_tags))
    {
        if (!is_array(_tags)) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(_category))
    {
        if (!is_string(_category)) throw $"{__where__} :: 'category' expected String";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/item";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, tags : _tags, category : _category, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_json_schema(_metadata_spec_name, _callback = undefined)
 * Gets a specific JSON Schema backed by the supplied MetadataSpec by name.
 * @param {String} _metadata_spec_name
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_json_schema(_metadata_spec_name, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_metadata_spec_name)) throw $"{__where__} :: 'metadataSpecName' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata_spec/{_elements_url_encode(_metadata_spec_name)}/schema.json";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_large_object(_large_object_id, _callback = undefined)
 * Get a LargeObject
 * @param {String} _large_object_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_large_object(_large_object_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_large_object_id)) throw $"{__where__} :: 'largeObjectId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/large_object/{_elements_url_encode(_large_object_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_large_objects(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
 * Get a LargeObject
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_large_objects(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/large_object";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_leaderboard(_name_or_id, _callback = undefined)
 * Gets the metadata for a single leaderboard.  This may include more specific details not availble in the bulk-get or fetch operation.
 * @param {String} _name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_leaderboard(_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_name_or_id)) throw $"{__where__} :: 'nameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/leaderboard/{_elements_url_encode(_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_leaderboards(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
 * Performs a full-text search of all leaderboards known to the server.  As with other full-text endpoints this allows for pagination and offset.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_leaderboards(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/leaderboard";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_ledger_entries(_inventory_item_id = undefined, _user_id = undefined, _event_type = undefined, _from = undefined, _to = undefined, _offset = 0, _count = 20, _callback = undefined)
 * Returns paginated ledger entries for a specific inventory item or user, sorted most-recent first. Exactly one of inventoryItemId or userId must be supplied. All other parameters are optional filters.
 * @param {String} [_inventory_item_id] Filter entries for a specific inventory item ID.
 * @param {String} [_user_id] Filter entries for a specific user ID (across all their inventory items).
 * @param {String} [_event_type] Optional event type filter. When omitted, all event types are returned.
 * @param {Real} [_from] Optional inclusive lower bound as epoch milliseconds. When omitted, no lower bound is applied.
 * @param {Real} [_to] Optional inclusive upper bound as epoch milliseconds. When omitted, no upper bound is applied.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_ledger_entries(_inventory_item_id = undefined, _user_id = undefined, _event_type = undefined, _from = undefined, _to = undefined, _offset = 0, _count = 20, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_inventory_item_id))
    {
        if (!is_string(_inventory_item_id)) throw $"{__where__} :: 'inventoryItemId' expected String";
    }
    if (!is_undefined(_user_id))
    {
        if (!is_string(_user_id)) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(_event_type))
    {
        ElementsParamEventType_validate(_event_type, $"{__where__} :: 'eventType'");
    }
    if (!is_undefined(_from))
    {
        if (!is_numeric(_from)) throw $"{__where__} :: 'from' expected Real";
    }
    if (!is_undefined(_to))
    {
        if (!is_numeric(_to)) throw $"{__where__} :: 'to' expected Real";
    }
    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/ledger";

    // create query params struct
    var __params__ = { inventoryItemId : _inventory_item_id, userId : _user_id, eventType : _event_type, from : _from, to : _to, offset : _offset, count : _count };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_match(_match_id, _callback = undefined)
 * Gets a specific match given the match's unique ID.  Additionally, it is possible to instruct the API to wait for a period of time before sending the response.  The request will intentionally hang until the requested MultiMatch with ID has been updated in the database.
 * @param {String} _match_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_match(_match_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_match_id)) throw $"{__where__} :: 'matchId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/multi_match/{_elements_url_encode(_match_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_matched_user_profiles_with_phone_numbers(_offset = 0, _count = 20, _body = undefined, _callback = undefined)
 * Both phones from request and from DB are normalized and compared.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Struct.ElementsInviteViaPhonesRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_matched_user_profiles_with_phone_numbers(_offset = 0, _count = 20, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_body))
    {
        ElementsInviteViaPhonesRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/invite";

    // create query params struct
    var __params__ = { offset : _offset, count : _count };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_matches(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
 * Lists all matches available.  Under most circumstances, this will requires that a profile be made available to the request.  The server may choose to return an error if no suitable profile can be determined.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_matches(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/multi_match";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Gets a single iOS application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/matchmaking/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_metadata_object(_id, _callback = undefined)
 * Gets a specific metadata object by name or id.
 * @param {String} _id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_metadata_object(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_metadata_objects(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
 * Searches all metadata in the system and returning all matches against the given search filter.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_metadata_objects(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_metadata_spec(_metadata_spec_name_or_id, _callback = undefined)
 * Gets a specific MetadataSpec by name or Id.
 * @param {String} _metadata_spec_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_metadata_spec(_metadata_spec_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_metadata_spec_name_or_id)) throw $"{__where__} :: 'metadataSpecNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata_spec/{_elements_url_encode(_metadata_spec_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_metadata_specs(_offset = 0, _count = 20, _callback = undefined)
 * Gets a pagination of Metadata Specs for the given query.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_metadata_specs(_offset = 0, _count = 20, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata_spec";

    // create query params struct
    var __params__ = { offset : _offset, count : _count };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_mission_by_name_or_id(_mission_name_or_id, _callback = undefined)
 * Looks up a mission by the passed in identifier
 * @param {String} _mission_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_mission_by_name_or_id(_mission_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_mission_name_or_id)) throw $"{__where__} :: 'missionNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/mission/{_elements_url_encode(_mission_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_missions(_offset = 0, _count = 20, _tags = undefined, _search = undefined, _callback = undefined)
 * Searches all missions in the system and returning a number of matches against the given search filter, delimited by the offset and count.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array<String>} [_tags]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_missions(_offset = 0, _count = 20, _tags = undefined, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_tags))
    {
        if (!is_array(_tags)) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/mission";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, tags : _tags, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_oauth2_auth_scheme(_oauth2_auth_scheme_id, _callback = undefined)
 * Gets a specific Auth Scheme by the oAuth2AuthSchemeId.
 * @param {String} _oauth2_auth_scheme_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_oauth2_auth_scheme(_oauth2_auth_scheme_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_oauth2_auth_scheme_id)) throw $"{__where__} :: 'oAuth2AuthSchemeId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oauth2/{_elements_url_encode(_oauth2_auth_scheme_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_oauth2_auth_schemes(_offset = 0, _count = 20, _tags = undefined, _callback = undefined)
 * Requires SUPERUSER access. Gets a pagination of Auth Schemes for the given query.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array<String>} [_tags]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_oauth2_auth_schemes(_offset = 0, _count = 20, _tags = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_tags))
    {
        if (!is_array(_tags)) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oauth2";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, tags : _tags };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_oculus_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Gets a single Oculus application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_oculus_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/oculus/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_oculus_iap_receipt(_id, _callback = undefined)
 * Fetches the oculus iap receipt with the matching database id.
 * @param {String} _id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_oculus_iap_receipt(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/meta/oculus/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_oculus_iap_receipts(_offset = 0, _count = 20, _callback = undefined)
 * Fetches the oculus iap receipt with the matching database id.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_oculus_iap_receipts(_offset = 0, _count = 20, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/meta/oculus";

    // create query params struct
    var __params__ = { offset : _offset, count : _count };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_oidc_auth_scheme(_oidc_auth_scheme_id, _callback = undefined)
 * Gets a specific Auth Scheme by the oidcAuthSchemeId.
 * @param {String} _oidc_auth_scheme_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_oidc_auth_scheme(_oidc_auth_scheme_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_oidc_auth_scheme_id)) throw $"{__where__} :: 'oidcAuthSchemeId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oidc/{_elements_url_encode(_oidc_auth_scheme_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_oidc_auth_schemes(_offset = 0, _count = 20, _tags = undefined, _callback = undefined)
 * Requires SUPERUSER access. Gets a pagination of Auth Schemes for the given query.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array<String>} [_tags]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_oidc_auth_schemes(_offset = 0, _count = 20, _tags = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_tags))
    {
        if (!is_array(_tags)) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oidc";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, tags : _tags };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_plans(_offset = 0, _count = 20, _callback = undefined)
 * Gets all index plans.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_plans(_offset = 0, _count = 20, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/index/plan";

    // create query params struct
    var __params__ = { offset : _offset, count : _count };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_product_bundle(_id, _callback = undefined)
 * Returns the Product Bundle identified by the given database id.
 * @param {String} _id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_product_bundle(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/product/bundle/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_product_bundle_by_key(_application_name_or_id, _schema, _product_id, _callback = undefined)
 * Returns the Product Bundle matching the given application, provider schema and product id.
 * @param {String} _application_name_or_id
 * @param {String} _schema
 * @param {String} _product_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_product_bundle_by_key(_application_name_or_id, _schema, _product_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_schema)) throw $"{__where__} :: 'schema' expected String";
    if (!is_string(_product_id)) throw $"{__where__} :: 'productId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/product/bundle/{_elements_url_encode(_application_name_or_id)}/{_elements_url_encode(_schema)}/{_elements_url_encode(_product_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_product_bundles(_application_name_or_id = undefined, _schema = undefined, _product_id = undefined, _tag = undefined, _offset = 0, _count = 20, _callback = undefined)
 * Returns all Product Bundles, optionally filtered by application and/or schema.
 * @param {String} [_application_name_or_id]
 * @param {String} [_schema]
 * @param {String} [_product_id]
 * @param {Array<String>} [_tag]
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_product_bundles(_application_name_or_id = undefined, _schema = undefined, _product_id = undefined, _tag = undefined, _offset = 0, _count = 20, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_application_name_or_id))
    {
        if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    }
    if (!is_undefined(_schema))
    {
        if (!is_string(_schema)) throw $"{__where__} :: 'schema' expected String";
    }
    if (!is_undefined(_product_id))
    {
        if (!is_string(_product_id)) throw $"{__where__} :: 'productId' expected String";
    }
    if (!is_undefined(_tag))
    {
        if (!is_array(_tag)) throw $"{__where__} :: 'tag' expected Array<String>";
    }
    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/product/bundle";

    // create query params struct
    var __params__ = { applicationNameOrId : _application_name_or_id, schema : _schema, productId : _product_id, tag : _tag, offset : _offset, count : _count };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_product_sku_schema(_id, _callback = undefined)
 * Returns the schema identifier with the given database id.
 * @param {String} _id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_product_sku_schema(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/product/sku/schema/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_product_sku_schemas(_offset = 0, _count = 20, _callback = undefined)
 * Returns all registered payment-provider schema identifiers.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_product_sku_schemas(_offset = 0, _count = 20, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/product/sku/schema";

    // create query params struct
    var __params__ = { offset : _offset, count : _count };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_profile(_name, _callback = undefined)
 * Gets a specific profile by profile ID.
 * @param {String} _name
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_profile(_name, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_name)) throw $"{__where__} :: 'name' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/profile/{_elements_url_encode(_name)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_profile_save_data_document_by_slot(_profile_id, _slot, _callback = undefined)
 * Gets a single save data document based on Profile ID and slot. This is a convenience method whichallows the client to fetch a save data based on slot an profile id.
 * @param {String} _profile_id
 * @param {Real} _slot
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_profile_save_data_document_by_slot(_profile_id, _slot, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_profile_id)) throw $"{__where__} :: 'profileId' expected String";
    if (!is_numeric(_slot)) throw $"{__where__} :: 'slot' expected Real";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/save_data/profile/{_elements_url_encode(_profile_id)}/{_elements_url_encode(_slot)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_profiles(_offset = 0, _count = 20, _before = undefined, _after = undefined, _application = undefined, _user = undefined, _search = undefined, _callback = undefined)
 * Searches all users in the system and returning the metadata for all matches against the given search filter. Optionally provide `before` and `after` params to specify a time range [`after`, `before`] for last-logged-in profiles matching in that range (inclusive). If `before` is not specified (or a negative number is provided) but `after` is valid, the query will return all records successive to the given `after` timestamp. Similarly, if `after` is not specified (or a negative number is provided) but `before` is valid, the query will return all records preceding the given `before` timestamp. Note that search and time range parameters currently cannot be combined in the same query.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Real} [_before]
 * @param {Real} [_after]
 * @param {String} [_application]
 * @param {String} [_user]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_profiles(_offset = 0, _count = 20, _before = undefined, _after = undefined, _application = undefined, _user = undefined, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_before))
    {
        if (!is_numeric(_before)) throw $"{__where__} :: 'before' expected Real";
    }
    if (!is_undefined(_after))
    {
        if (!is_numeric(_after)) throw $"{__where__} :: 'after' expected Real";
    }
    if (!is_undefined(_application))
    {
        if (!is_string(_application)) throw $"{__where__} :: 'application' expected String";
    }
    if (!is_undefined(_user))
    {
        if (!is_string(_user)) throw $"{__where__} :: 'user' expected String";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/profile";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, before : _before, after : _after, application : _application, user : _user, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_progress_by_name_or_id(_progress_id, _callback = undefined)
 * Looks up a progress by the passed in identifier
 * @param {String} _progress_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_progress_by_name_or_id(_progress_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_progress_id)) throw $"{__where__} :: 'progressId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/progress/{_elements_url_encode(_progress_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_progress_tabular(_callback = undefined)
 * Gets the current Profile's rank among all players for the particular leaderboard.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_progress_tabular(_callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/progress";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_provider_configuration(_provider_configuration_id, _callback = undefined)
 * Gets a specific OIDC provider configuration
 * @param {String} _provider_configuration_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_provider_configuration(_provider_configuration_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_provider_configuration_id)) throw $"{__where__} :: 'providerConfigurationId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oidc_provider/{_elements_url_encode(_provider_configuration_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_provider_configurations(_offset = 0, _count = 20, _tags = undefined, _callback = undefined)
 * Requires SUPERUSER access. Gets a pagination of OIDC provider configurations.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array<String>} [_tags]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_provider_configurations(_offset = 0, _count = 20, _tags = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_tags))
    {
        if (!is_array(_tags)) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oidc_provider";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, tags : _tags };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Gets a single PSN application based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/psn/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_rank_among_friends(_leaderboard_name_or_id, _offset = 0, _count = 20, _relative = false, _leaderboard_epoch = 0, _callback = undefined)
 * Gets the current Profile's rank among friends for the particular leaderboard.
 * @param {String} _leaderboard_name_or_id Specifies the leaderboard name or ID.
 * @param {Real} [_offset] May be negative to place the requested player in the middle of the page.
 * @param {Real} [_count] The number of results to return in the page.
 * @param {Bool} [_relative] Indicates whether or not to fetch results in a relative fashion.
 * @param {Real} [_leaderboard_epoch] Specifies the epoch for the leaderboard. If no value is provided, the current epoch will befetched.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_rank_among_friends(_leaderboard_name_or_id, _offset = 0, _count = 20, _relative = false, _leaderboard_epoch = 0, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_leaderboard_name_or_id)) throw $"{__where__} :: 'leaderboardNameOrId' expected String";
    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_relative))
    {
        if (!(is_bool(_relative) || _relative == 0 || _relative == 1)) throw $"{__where__} :: 'relative' expected Bool";
    }
    if (!is_undefined(_leaderboard_epoch))
    {
        if (!is_numeric(_leaderboard_epoch)) throw $"{__where__} :: 'leaderboardEpoch' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/rank/friends/{_elements_url_encode(_leaderboard_name_or_id)}";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, relative : (is_undefined(_relative) ? undefined : (_relative ? "true" : "false")), leaderboardEpoch : _leaderboard_epoch };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_rank_among_mutual_followers(_leaderboard_name_or_id, _offset = 0, _count = 20, _relative = false, _leaderboard_epoch = 0, _callback = undefined)
 * Gets the current Profile's rank among mutual followers for the particular leaderboard.
 * @param {String} _leaderboard_name_or_id Specifies the leaderboard name or ID.
 * @param {Real} [_offset] May be negative to place the requested player in the middle of the page.
 * @param {Real} [_count] The number of results to return in the page.
 * @param {Bool} [_relative] Indicates whether or not to fetch results in a relative fashion.
 * @param {Real} [_leaderboard_epoch] Specifies the epoch for the leaderboard. If no value is provided, the current epoch will befetched.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_rank_among_mutual_followers(_leaderboard_name_or_id, _offset = 0, _count = 20, _relative = false, _leaderboard_epoch = 0, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_leaderboard_name_or_id)) throw $"{__where__} :: 'leaderboardNameOrId' expected String";
    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_relative))
    {
        if (!(is_bool(_relative) || _relative == 0 || _relative == 1)) throw $"{__where__} :: 'relative' expected Bool";
    }
    if (!is_undefined(_leaderboard_epoch))
    {
        if (!is_numeric(_leaderboard_epoch)) throw $"{__where__} :: 'leaderboardEpoch' expected Real";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/rank/mutual_followers/{_elements_url_encode(_leaderboard_name_or_id)}";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, relative : (is_undefined(_relative) ? undefined : (_relative ? "true" : "false")), leaderboardEpoch : _leaderboard_epoch };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_receipt(_id, _callback = undefined)
 * Gets a Receipt using the database id provided in the URL path.
 * @param {String} _id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_receipt(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/receipt/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_receipts(_user_id = undefined, _offset = 0, _count = 20, _search = undefined, _callback = undefined)
 * Retrieves a pagination of Receipt objects for the given user (SUPERUSER level), or the current user (USER level).Can search by originalTransactionId or scheme.
 * @param {String} [_user_id]
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_receipts(_user_id = undefined, _offset = 0, _count = 20, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_user_id))
    {
        if (!is_string(_user_id)) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/receipt";

    // create query params struct
    var __params__ = { userId : _user_id, offset : _offset, count : _count, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_reward_issuance(_reward_issuance_id, _callback = undefined)
 * Retrieves a single RewardIssuance by id.
 * @param {String} _reward_issuance_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_reward_issuance(_reward_issuance_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_reward_issuance_id)) throw $"{__where__} :: 'rewardIssuanceId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/reward_issuance/{_elements_url_encode(_reward_issuance_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_reward_issuances(_offset = 0, _count = 20, _states = undefined, _tags = undefined, _callback = undefined)
 * Retrieves the current user's reward issuances, optionally filtered by the given state.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array<String>} [_states]
 * @param {Array<String>} [_tags]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_reward_issuances(_offset = 0, _count = 20, _states = undefined, _tags = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_states))
    {
        if (!is_array(_states)) throw $"{__where__} :: 'states' expected Array<ElementsParamStatesItem>";
    }
    if (!is_undefined(_tags))
    {
        if (!is_array(_tags)) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/reward_issuance";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, states : _states, tags : _tags };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_reward_issuances_for_oculus_iap_receipt(_body = undefined, _callback = undefined)
 * Attempts to verify the Oculus IAP Receipt data.Returns a list of RewardIssuances, some or all of which may be already redeemed.
 * @param {Struct.ElementsOculusIapReceipt} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_reward_issuances_for_oculus_iap_receipt(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "*/*";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsOculusIapReceipt_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/meta/oculus/reward";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_save_data_document(_id, _callback = undefined)
 * Gets a single save data document
 * @param {String} _id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_save_data_document(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/save_data/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_save_data_documents(_offset = 0, _count = 20, _user_id = undefined, _profile_id = undefined, _search = undefined, _callback = undefined)
 * Gets all save data documents available to the user.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {String} [_profile_id]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_save_data_documents(_offset = 0, _count = 20, _user_id = undefined, _profile_id = undefined, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_user_id))
    {
        if (!is_string(_user_id)) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(_profile_id))
    {
        if (!is_string(_profile_id)) throw $"{__where__} :: 'profileId' expected String";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/save_data";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, userId : _user_id, profileId : _profile_id, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_schedule_by_name_or_id(_schedule_name_or_id, _callback = undefined)
 * Looks up a schedule by the passed in identifier
 * @param {String} _schedule_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_schedule_by_name_or_id(_schedule_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_schedule_name_or_id)) throw $"{__where__} :: 'scheduleNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/schedule/{_elements_url_encode(_schedule_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_schedule_event_by_name_or_id(_schedule_name_or_id, _schedule_event_id, _callback = undefined)
 * Looks up a schedule by the passed in identifier
 * @param {String} _schedule_name_or_id
 * @param {String} _schedule_event_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_schedule_event_by_name_or_id(_schedule_name_or_id, _schedule_event_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_schedule_name_or_id)) throw $"{__where__} :: 'scheduleNameOrId' expected String";
    if (!is_string(_schedule_event_id)) throw $"{__where__} :: 'scheduleEventId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/schedule/{_elements_url_encode(_schedule_name_or_id)}/event/{_elements_url_encode(_schedule_event_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_schedule_events(_schedule_name_or_id, _offset = 0, _count = 20, _tags = undefined, _search = undefined, _callback = undefined)
 * Searches all schedules in the system and returning a number of matches against the given search filter, delimited by the offset and count.
 * @param {String} _schedule_name_or_id
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array<String>} [_tags]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_schedule_events(_schedule_name_or_id, _offset = 0, _count = 20, _tags = undefined, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_schedule_name_or_id)) throw $"{__where__} :: 'scheduleNameOrId' expected String";
    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_tags))
    {
        if (!is_array(_tags)) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/schedule/{_elements_url_encode(_schedule_name_or_id)}/event";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, tags : _tags, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_schedule_progresses(_schedule_name_or_id, _offset = 0, _count = 20, _tags = undefined, _callback = undefined)
 * Fetches all current assignments to the currently logged-in profile.
 * @param {String} _schedule_name_or_id
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array<String>} [_tags]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_schedule_progresses(_schedule_name_or_id, _offset = 0, _count = 20, _tags = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_schedule_name_or_id)) throw $"{__where__} :: 'scheduleNameOrId' expected String";
    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_tags))
    {
        if (!is_array(_tags)) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/schedule/{_elements_url_encode(_schedule_name_or_id)}/progress";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, tags : _tags };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_schedules(_offset = 0, _count = 20, _tags = undefined, _search = undefined, _callback = undefined)
 * Searches all schedules in the system and returning a number of matches against the given search filter, delimited by the offset and count.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array<String>} [_tags]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_schedules(_offset = 0, _count = 20, _tags = undefined, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_tags))
    {
        if (!is_array(_tags)) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/schedule";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, tags : _tags, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_server_health(_callback = undefined)
 * Performs the health check for the server. What this actually does is deployment and implementation specific. However, any successful response code should indicate that the service is capable of servicing requests. Any unsuccessful error codes should indicate that the instance has internal issues and should be taken offline.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_server_health(_callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/health";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_simple_inventory_item(_inventory_item_id, _callback = undefined)
 * Gets the first (primary) inventory item for the specified item
 * @param {String} _inventory_item_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_simple_inventory_item(_inventory_item_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_inventory_item_id)) throw $"{__where__} :: 'inventoryItemId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/simple/{_elements_url_encode(_inventory_item_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_simple_inventory_items(_offset = 0, _count = 20, _user_id = undefined, _search = undefined, _callback = undefined)
 * Searches all inventory items in the system and returns the metadata for all matches against the given search filter.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_simple_inventory_items(_offset = 0, _count = 20, _user_id = undefined, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_user_id))
    {
        if (!is_string(_user_id)) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/simple";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, userId : _user_id, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_smart_contract(_contract_id, _callback = undefined)
 * Gets a specific  Smart Contract by contractId.
 * @param {String} _contract_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_smart_contract(_contract_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_contract_id)) throw $"{__where__} :: 'contractId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/smart_contract/{_elements_url_encode(_contract_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_smart_contracts(_offset = 0, _count = 20, _api = undefined, _network = undefined, _callback = undefined)
 * Gets a pagination of  SmartContracts.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_api]
 * @param {Array<String>} [_network]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_smart_contracts(_offset = 0, _count = 20, _api = undefined, _network = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_api))
    {
        ElementsParamApi_validate(_api, $"{__where__} :: 'api'");
    }
    if (!is_undefined(_network))
    {
        if (!is_array(_network)) throw $"{__where__} :: 'network' expected Array<ElementsParamNetworkItem>";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/smart_contract";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, api : _api, network : _network };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_steam_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
 * Gets a single Steam application configuration based on unique name or ID.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_steam_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/steam/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_user(_name, _callback = undefined)
 * Gets a specific user by name, email, or unique user ID.
 * @param {String} _name
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_user(_name, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_name)) throw $"{__where__} :: 'name' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/{_elements_url_encode(_name)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_user_save_data_document_by_slot(_user_id, _slot, _callback = undefined)
 * Gets a single save data document based on UserID and slot. This is a convenience method whichallows the client to fetch a save data based on slot an user id.
 * @param {String} _user_id
 * @param {Real} _slot
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_user_save_data_document_by_slot(_user_id, _slot, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_user_id)) throw $"{__where__} :: 'userId' expected String";
    if (!is_numeric(_slot)) throw $"{__where__} :: 'slot' expected Real";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/save_data/user/{_elements_url_encode(_user_id)}/{_elements_url_encode(_slot)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_users(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
 * Searches all users in the system and returning the metadata for all matches against the given search filter.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_users(_offset = 0, _count = 20, _search = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_search))
    {
        if (!is_string(_search)) throw $"{__where__} :: 'search' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, search : _search };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_vault(_vault_id, _callback = undefined)
 * Gets a specific  Vault by Id.
 * @param {String} _vault_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_vault(_vault_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_vault_id)) throw $"{__where__} :: 'vaultId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/vault/{_elements_url_encode(_vault_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_vaults(_offset = 0, _count = 20, _user_id = undefined, _callback = undefined)
 * Gets a pagination of  Wallets. Optionally a user Id can be specified to filter for a given user.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_vaults(_offset = 0, _count = 20, _user_id = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_user_id))
    {
        if (!is_string(_user_id)) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/vault";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, userId : _user_id };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_version(_callback = undefined)
 * Returns information about the current server version.  This should always return theversion metadata.  This information is only known in packaged releases.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_version(_callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/version";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_wallet(_wallet_id, _callback = undefined)
 * Gets a specific  Wallet by Id.
 * @param {String} _wallet_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_wallet(_wallet_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_wallet_id)) throw $"{__where__} :: 'walletId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/wallet/{_elements_url_encode(_wallet_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_wallet_for_vault(_vault_id, _wallet_id, _callback = undefined)
 * Gets a specific  Wallet by Id.
 * @param {String} _vault_id
 * @param {String} _wallet_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_wallet_for_vault(_vault_id, _wallet_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_vault_id)) throw $"{__where__} :: 'vaultId' expected String";
    if (!is_string(_wallet_id)) throw $"{__where__} :: 'walletId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/vault/{_elements_url_encode(_vault_id)}/wallet/{_elements_url_encode(_wallet_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_get_wallets(_vault_id, _offset = 0, _count = 20, _user_id = undefined, _api = undefined, _network = undefined, _callback = undefined)
 * Gets a pagination of  Wallets. Optionally a user Id can be specified to filter for a given user.
 * @param {String} _vault_id
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {String} [_api]
 * @param {Array<String>} [_network]
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_get_wallets(_vault_id, _offset = 0, _count = 20, _user_id = undefined, _api = undefined, _network = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_vault_id)) throw $"{__where__} :: 'vaultId' expected String";
    if (!is_undefined(_offset))
    {
        if (!is_numeric(_offset)) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(_count))
    {
        if (!is_numeric(_count)) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(_user_id))
    {
        if (!is_string(_user_id)) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(_api))
    {
        ElementsParamApi2_validate(_api, $"{__where__} :: 'api'");
    }
    if (!is_undefined(_network))
    {
        if (!is_array(_network)) throw $"{__where__} :: 'network' expected Array<ElementsParamNetworkItem2>";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/vault/{_elements_url_encode(_vault_id)}/wallet";

    // create query params struct
    var __params__ = { offset : _offset, count : _count, userId : _user_id, api : _api, network : _network };

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, __params__, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_inspect_uploaded_elm(_body = undefined, _callback = undefined)
 * Inspects an ELM file uploaded via multipart form.
 * @param {Struct.ElementsInspectUploadedElmBody} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_inspect_uploaded_elm(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "multipart/form-data";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsInspectUploadedElmBody_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elm/inspector/upload";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_link_email_password(_body = undefined, _callback = undefined)
 * Links email+password credentials to the currently authenticated user. The email must first be verified via POST /user/me/email/verify.
 * @param {Struct.ElementsLinkEmailPasswordRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_link_email_password(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsLinkEmailPasswordRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/me/link/email-password";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_link_oauth2(_body = undefined, _callback = undefined)
 * Links an external OAuth2 identity to the currently authenticated user. Requires an active user session. Returns the updated session information.
 * @param {Struct.ElementsOAuth2SessionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_link_oauth2(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsOAuth2SessionRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/me/link/oauth2";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_link_oidc(_body = undefined, _callback = undefined)
 * Links an external OIDC identity to the currently authenticated user. Requires an active user session. Returns the updated session information.
 * @param {Struct.ElementsOidcSessionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_link_oidc(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsOidcSessionRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/me/link/oidc";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_link_username_password(_body = undefined, _callback = undefined)
 * Links username+password credentials to the currently authenticated user. If the account has no username yet, the supplied username is claimed. If a username is already set it must match; name changes must be done explicitly.
 * @param {Struct.ElementsLinkUsernamePasswordRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_link_username_password(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsLinkUsernamePasswordRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/me/link/username-password";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_poll_oidc_session(_id, _callback = undefined)
 * Returns COMPLETE with the session exactly once, on the poll that first observes completion; a subsequent poll for the same id, or a poll for an unknown/expired id, returns 404. An account-linking attempt cannot be finalized this way -- once its external identity is validated, this returns an error directing the caller to POST {id}/confirm instead.
 * @param {String} _id The opaque poll id returned by POST /oidc/session.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_poll_oidc_session(_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/oidc/session/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "GET", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_redeem_facebook_iap_purchase(_body = undefined, _callback = undefined)
 * Attempts to verify the Facebook IAP Receipt data.Returns a list of RewardIssuances, some or all of which may be already redeemed.
 * @param {Struct.ElementsFacebookIapReceipt} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_redeem_facebook_iap_purchase(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsFacebookIapReceipt_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/meta/facebook/verify";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_redeem_reward_issuance(_reward_issuance_id, _callback = undefined)
 * Redeems the RewardIssuance.
 * @param {String} _reward_issuance_id
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_redeem_reward_issuance(_reward_issuance_id, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_reward_issuance_id)) throw $"{__where__} :: 'rewardIssuanceId' expected String";
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/reward_issuance/{_elements_url_encode(_reward_issuance_id)}/redeem";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, undefined, undefined, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_redeem_reward_issuances(_body = undefined, _callback = undefined)
 * Redeems the given list of RewardIssuances.
 * @param {Array<String>} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_redeem_reward_issuances(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "*/*";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        if (!is_array(_body)) throw $"{__where__} :: '_body' expected Array<String>";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/reward_issuance/redeem";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_request_reset(_body = undefined, _callback = undefined)
 * Sends a password reset link to the given email address if an account exists. Always returns 200 to prevent user enumeration.
 * @param {Struct.ElementsPasswordResetRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_request_reset(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsPasswordResetRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/password/reset/request";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_request_verification(_body = undefined, _callback = undefined)
 * Sends a verification link to the given email address associated with the current user.
 * @param {Struct.ElementsEmailVerificationRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_request_verification(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsEmailVerificationRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/me/email/verify";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_sign_up_user(_body = undefined, _callback = undefined)
 * Supplying the user create request object, this will create a new user.
 * @param {Struct.ElementsUserCreateRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_sign_up_user(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsUserCreateRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/signup";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_sign_up_user_and_create_session(_body = undefined, _callback = undefined)
 * Supplying the UserCreateRequest object, this will create a new user and create a session for it.  If any Profiles are supplied, the first one will be selected for the session creation.
 * @param {Struct.ElementsUserCreateRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_sign_up_user_and_create_session(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsUserCreateRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/signup/session";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_advanced_inventory_item(_inventory_item_id, _body = undefined, _callback = undefined)
 * Updates an inventory item for the specified item
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsUpdateInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_advanced_inventory_item(_inventory_item_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_inventory_item_id)) throw $"{__where__} :: 'inventoryItemId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateInventoryItemRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/advanced/{_elements_url_encode(_inventory_item_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_application(_name_or_id, _body = undefined, _callback = undefined)
 * Performs an update to an existing application known to the server.
 * @param {String} _name_or_id
 * @param {Struct.ElementsUpdateApplicationRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_application(_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_name_or_id)) throw $"{__where__} :: 'nameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateApplicationRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_custom_auth_scheme(_auth_scheme_id, _body = undefined, _callback = undefined)
 * Updates an Auth Scheme with the specified data in the auth scheme request.
 * @param {String} _auth_scheme_id
 * @param {Struct.ElementsUpdateAuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_custom_auth_scheme(_auth_scheme_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_auth_scheme_id)) throw $"{__where__} :: 'authSchemeId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateAuthSchemeRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/custom/{_elements_url_encode(_auth_scheme_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_deployment(_application_id, _version, _body = undefined, _callback = undefined)
 * @param {String} _application_id
 * @param {String} _version
 * @param {Struct.ElementsUpdateDeploymentRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_deployment(_application_id, _version, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_id)) throw $"{__where__} :: 'applicationId' expected String";
    if (!is_string(_version)) throw $"{__where__} :: 'version' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateDeploymentRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/deployment/{_elements_url_encode(_application_id)}/{_elements_url_encode(_version)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_distinct_inventory_item(_distinct_inventory_item_id, _body = undefined, _callback = undefined)
 * Updates an inventory item for the specified item
 * @param {String} _distinct_inventory_item_id
 * @param {Struct.ElementsUpdateDistinctInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_distinct_inventory_item(_distinct_inventory_item_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_distinct_inventory_item_id)) throw $"{__where__} :: 'distinctInventoryItemId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateDistinctInventoryItemRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/distinct/{_elements_url_encode(_distinct_inventory_item_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_element_deployment(_deployment_id, _body = undefined, _callback = undefined)
 * @param {String} _deployment_id
 * @param {Struct.ElementsUpdateElementDeploymentRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_element_deployment(_deployment_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_deployment_id)) throw $"{__where__} :: 'deploymentId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateElementDeploymentRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/elements/deployment/{_elements_url_encode(_deployment_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
 * Updates an existing Facebook Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsFacebookApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsFacebookApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/facebook/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
 * Updates an existing Firebase Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsFirebaseApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsFirebaseApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/firebase/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
 * Updates an existing Google Play Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsGooglePlayApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsGooglePlayApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/google_play/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
 * Updates an existing iOS Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsIosApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsIosApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/ios/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_item(_identifier, _body = undefined, _callback = undefined)
 * Supplying an item, this will update the Item identified by the identifier in the path with contents from the passed in request body. 
 * @param {String} _identifier
 * @param {Struct.ElementsUpdateItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_item(_identifier, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_identifier)) throw $"{__where__} :: 'identifier' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateItemRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/item/{_elements_url_encode(_identifier)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_large_object(_large_object_id, _body = undefined, _callback = undefined)
 * Updates a LargeObject
 * @param {String} _large_object_id
 * @param {Struct.ElementsUpdateLargeObjectRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_large_object(_large_object_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_large_object_id)) throw $"{__where__} :: 'largeObjectId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateLargeObjectRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/large_object/{_elements_url_encode(_large_object_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_large_object_contents(_large_object_id, _body = undefined, _callback = undefined)
 * Updates a LargeObject content
 * @param {String} _large_object_id
 * @param {Struct.ElementsUpdateLargeObjectContentsBody} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_large_object_contents(_large_object_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "multipart/form-data";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_large_object_id)) throw $"{__where__} :: 'largeObjectId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateLargeObjectContentsBody_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/large_object/{_elements_url_encode(_large_object_id)}/content";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_leaderboard(_name_or_id, _body = undefined, _callback = undefined)
 * Performs an update to an existing leaderboard known to the server.
 * @param {String} _name_or_id
 * @param {Struct.ElementsUpdateLeaderboardRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_leaderboard(_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_name_or_id)) throw $"{__where__} :: 'nameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateLeaderboardRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/leaderboard/{_elements_url_encode(_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_match(_match_id, _body = undefined, _callback = undefined)
 * This method accepts an instance of MultiMatch and updates the DB entry for it that matches the matchId. Though it is generally recommended to update a MultiMatch via matchmaking code in an Element, it can be updated via REST for the purposes of testing or custom workflows.
 * @param {String} _match_id
 * @param {Struct.ElementsMultiMatch} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_match(_match_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_match_id)) throw $"{__where__} :: 'matchId' expected String";
    if (!is_undefined(_body))
    {
        ElementsMultiMatch_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/multi_match/{_elements_url_encode(_match_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
 * Updates an existing iOS Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsMatchmakingApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsMatchmakingApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/matchmaking/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_metadata(_id, _body = undefined, _callback = undefined)
 * Updates a specific metadata object by name or id.
 * @param {String} _id
 * @param {Struct.ElementsUpdateMetadataRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_metadata(_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "*/*";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateMetadataRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_metadata_spec(_metadata_spec_id, _body = undefined, _callback = undefined)
 * Updates a MetadataSpec with the specified id.
 * @param {String} _metadata_spec_id
 * @param {Struct.ElementsUpdateMetadataSpecRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_metadata_spec(_metadata_spec_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_metadata_spec_id)) throw $"{__where__} :: 'metadataSpecId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateMetadataSpecRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/metadata_spec/{_elements_url_encode(_metadata_spec_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_mission(_mission_name_or_id, _body = undefined, _callback = undefined)
 * Supplying a mission, this will update the Mission identified by the name or ID in the path with contents from the passed in request body. 
 * @param {String} _mission_name_or_id
 * @param {Struct.ElementsUpdateMissionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_mission(_mission_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_mission_name_or_id)) throw $"{__where__} :: 'missionNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateMissionRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/mission/{_elements_url_encode(_mission_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_oauth2_auth_scheme(_oauth2_auth_scheme_id, _body = undefined, _callback = undefined)
 * Updates an Auth Scheme with the specified data in the auth scheme request.
 * @param {String} _oauth2_auth_scheme_id
 * @param {Struct.ElementsCreateOrUpdateOAuth2AuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_oauth2_auth_scheme(_oauth2_auth_scheme_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_oauth2_auth_scheme_id)) throw $"{__where__} :: 'oAuth2AuthSchemeId' expected String";
    if (!is_undefined(_body))
    {
        ElementsCreateOrUpdateOAuth2AuthSchemeRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oauth2/{_elements_url_encode(_oauth2_auth_scheme_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_oculus_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
 * Updates an existing Oculus Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsOculusApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_oculus_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsOculusApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/oculus/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_oidc_auth_scheme(_oidc_auth_scheme_id, _body = undefined, _callback = undefined)
 * Updates an Auth Scheme with the specified data in the auth scheme request.
 * @param {String} _oidc_auth_scheme_id
 * @param {Struct.ElementsCreateOrUpdateOidcAuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_oidc_auth_scheme(_oidc_auth_scheme_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_oidc_auth_scheme_id)) throw $"{__where__} :: 'oidcAuthSchemeId' expected String";
    if (!is_undefined(_body))
    {
        ElementsCreateOrUpdateOidcAuthSchemeRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oidc/{_elements_url_encode(_oidc_auth_scheme_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_product_bundle(_id, _body = undefined, _callback = undefined)
 * Updates the Product Bundle identified by the given database id.
 * @param {String} _id
 * @param {Struct.ElementsProductBundle} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_product_bundle(_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_id)) throw $"{__where__} :: 'id' expected String";
    if (!is_undefined(_body))
    {
        ElementsProductBundle_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/product/bundle/{_elements_url_encode(_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_product_bundle_for_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
 * Updates the ProductBundle for the given ApplicationConfiguration
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Array<Struct.ElementsProductBundle>} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_product_bundle_for_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "*/*";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        if (!is_array(_body)) throw $"{__where__} :: '_body' expected Array<ElementsProductBundle>";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/google_play/{_elements_url_encode(_application_configuration_name_or_id)}/product_bundles";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_product_bundle_for_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
 * Updates the ProductBundle for the given ApplicationConfiguration
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Array<Struct.ElementsProductBundle>} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_product_bundle_for_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        if (!is_array(_body)) throw $"{__where__} :: '_body' expected Array<ElementsProductBundle>";
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/ios/{_elements_url_encode(_application_configuration_name_or_id)}/product_bundles";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_profile(_profile_id, _body = undefined, _callback = undefined)
 * Supplying an update request will attempt to update the profile.  The call will return the profile as it was written to the database.
 * @param {String} _profile_id
 * @param {Struct.ElementsUpdateProfileRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_profile(_profile_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_profile_id)) throw $"{__where__} :: 'profileId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateProfileRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/profile/{_elements_url_encode(_profile_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_profile_image(_profile_id, _body = undefined, _callback = undefined)
 * Updates a Profile image object
 * @param {String} _profile_id
 * @param {Struct.ElementsUpdateProfileImageRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_profile_image(_profile_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_profile_id)) throw $"{__where__} :: 'profileId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateProfileImageRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/profile/{_elements_url_encode(_profile_id)}/image";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_progress(_progress_id, _body = undefined, _callback = undefined)
 * This will update the Progress identified by the ID in the path with contents from the passed in request body. 
 * @param {String} _progress_id
 * @param {Struct.ElementsUpdateProgressRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_progress(_progress_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_progress_id)) throw $"{__where__} :: 'progressId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateProgressRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/progress/{_elements_url_encode(_progress_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_provider_configuration(_provider_configuration_id, _body = undefined, _callback = undefined)
 * Updates an OIDC provider configuration
 * @param {String} _provider_configuration_id
 * @param {Struct.ElementsCreateOrUpdateOidcProviderConfigurationRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_provider_configuration(_provider_configuration_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_provider_configuration_id)) throw $"{__where__} :: 'providerConfigurationId' expected String";
    if (!is_undefined(_body))
    {
        ElementsCreateOrUpdateOidcProviderConfigurationRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/auth_scheme/oidc_provider/{_elements_url_encode(_provider_configuration_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
 * Updates an existing PSN Application profile if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsPSNApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsPSNApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/psn/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_registration(_fcm_registration_id, _body = undefined, _callback = undefined)
 * Supplying FCM registration token, this will update the token string with the supplied values.  Clients may update the same registration with a different token issued with Firebase if they wish to simply retain the association with the 
 * @param {String} _fcm_registration_id
 * @param {Struct.ElementsFCMRegistration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_registration(_fcm_registration_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_fcm_registration_id)) throw $"{__where__} :: 'fcmRegistrationId' expected String";
    if (!is_undefined(_body))
    {
        ElementsFCMRegistration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/notification/fcm/{_elements_url_encode(_fcm_registration_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_save_document(_save_data_document_id, _body = undefined, _callback = undefined)
 * Gets a single save data document.
 * @param {String} _save_data_document_id
 * @param {Struct.ElementsUpdateSaveDataDocumentRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_save_document(_save_data_document_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_save_data_document_id)) throw $"{__where__} :: 'saveDataDocumentId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateSaveDataDocumentRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/save_data/{_elements_url_encode(_save_data_document_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_schedule(_schedule_name_or_id, _body = undefined, _callback = undefined)
 * Supplying a schedule, this will update the Schedule identified by the name or ID in the path with contents from the passed in request body. 
 * @param {String} _schedule_name_or_id
 * @param {Struct.ElementsUpdateScheduleRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_schedule(_schedule_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_schedule_name_or_id)) throw $"{__where__} :: 'scheduleNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateScheduleRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/schedule/{_elements_url_encode(_schedule_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_schedule_event(_schedule_name_or_id, _schedule_event_id, _body = undefined, _callback = undefined)
 * Supplying a schedule, this will update the ScheduleEvent identified by the name or ID in the path with contents from the passed in request body. 
 * @param {String} _schedule_name_or_id
 * @param {String} _schedule_event_id
 * @param {Struct.ElementsUpdateScheduleEventRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_schedule_event(_schedule_name_or_id, _schedule_event_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_schedule_name_or_id)) throw $"{__where__} :: 'scheduleNameOrId' expected String";
    if (!is_string(_schedule_event_id)) throw $"{__where__} :: 'scheduleEventId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateScheduleEventRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/schedule/{_elements_url_encode(_schedule_name_or_id)}/event/{_elements_url_encode(_schedule_event_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_simple_inventory_item(_inventory_item_id, _body = undefined, _callback = undefined)
 * Updates an inventory item for the specified item
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsUpdateInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_simple_inventory_item(_inventory_item_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_inventory_item_id)) throw $"{__where__} :: 'inventoryItemId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateInventoryItemRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/inventory/simple/{_elements_url_encode(_inventory_item_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_smart_contract(_contract_id, _body = undefined, _callback = undefined)
 * Patches a  Smart Contract entry, associated with the specified deployed script hash.
 * @param {String} _contract_id
 * @param {Struct.ElementsUpdateSmartContractRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_smart_contract(_contract_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_contract_id)) throw $"{__where__} :: 'contractId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateSmartContractRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/smart_contract/{_elements_url_encode(_contract_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_steam_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
 * Updates an existing Steam application configuration if it is known to the server.
 * @param {String} _application_name_or_id
 * @param {String} _application_configuration_name_or_id
 * @param {Struct.ElementsSteamApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_steam_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_application_name_or_id)) throw $"{__where__} :: 'applicationNameOrId' expected String";
    if (!is_string(_application_configuration_name_or_id)) throw $"{__where__} :: 'applicationConfigurationNameOrId' expected String";
    if (!is_undefined(_body))
    {
        ElementsSteamApplicationConfiguration_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/application/{_elements_url_encode(_application_name_or_id)}/configuration/steam/{_elements_url_encode(_application_configuration_name_or_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_user(_user_id, _body = undefined, _callback = undefined)
 * Supplying the user object, this will update the user with the new information supplied in the body of the request.  Optionally, the user's password may be provided in the User object.
 * @param {String} _user_id
 * @param {Struct.ElementsUserUpdateRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_user(_user_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_user_id)) throw $"{__where__} :: 'userId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUserUpdateRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/{_elements_url_encode(_user_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_user_password(_user_id, _body = undefined, _callback = undefined)
 * Supplying the UserUpdatePasswordRequest, this will attempt to update the user's password only if they supply the correct existing password.
 * @param {String} _user_id
 * @param {Struct.ElementsUserUpdatePasswordRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_user_password(_user_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_user_id)) throw $"{__where__} :: 'userId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUserUpdatePasswordRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/user/{_elements_url_encode(_user_id)}/password";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_vault(_vault_id, _body = undefined, _callback = undefined)
 * Updates a  Vault with the specified name or id.
 * @param {String} _vault_id
 * @param {Struct.ElementsUpdateVaultRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_vault(_vault_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_vault_id)) throw $"{__where__} :: 'vaultId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateVaultRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/vault/{_elements_url_encode(_vault_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_update_wallet(_vault_id, _wallet_id, _body = undefined, _callback = undefined)
 * Updates a  Wallet with the specified name or id.
 * @param {String} _vault_id
 * @param {String} _wallet_id
 * @param {Struct.ElementsUpdateWalletRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_update_wallet(_vault_id, _wallet_id, _body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_string(_vault_id)) throw $"{__where__} :: 'vaultId' expected String";
    if (!is_string(_wallet_id)) throw $"{__where__} :: 'walletId' expected String";
    if (!is_undefined(_body))
    {
        ElementsUpdateWalletRequest_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/blockchain/omni/vault/{_elements_url_encode(_vault_id)}/wallet/{_elements_url_encode(_wallet_id)}";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "PUT", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_upload_apple_iap_receipt(_body = undefined, _callback = undefined)
 * Upload Apple IAP Receipt. Returns a list of RewardIssuances, which may contain already-redeemed issuances.
 * @param {Struct.ElementsCreateAppleIapReceipt} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_upload_apple_iap_receipt(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateAppleIapReceipt_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/ios/receipt";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_upload_google_play_iap_purchase(_body = undefined, _callback = undefined)
 * Upload Google Play IAP Receipt data (package name, product id and Google Play-issued purchase token). Returns a list of RewardIssuances, some or all of which may be already redeemed.
 * @param {Struct.ElementsCreateGooglePlayIapReceipt} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_upload_google_play_iap_purchase(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateGooglePlayIapReceipt_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/google/purchase";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_upload_steam_iap_purchase(_body = undefined, _callback = undefined)
 * Verify a Steam IAP purchase by order ID and return a list of RewardIssuances. The order ID is validated against the Steam ISteamMicroTxn API using the publisher key and app ID stored in the application's SteamApplicationConfiguration. Some or all of the returned RewardIssuances may already be redeemed.
 * @param {Struct.ElementsCreateSteamIapReceipt} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_upload_steam_iap_purchase(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsCreateSteamIapReceipt_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/steam/purchase";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

/**
 * @func elements_verify_oculus_iap_purchase(_body = undefined, _callback = undefined)
 * Attempts to verify the Oculus IAP Receipt data.Returns the result of the verification.
 * @param {Struct.ElementsOculusIapReceipt} [_body] The body to be included in the http request.
 * @param {Function} [_callback] Callback with signature (status, data, request). status is the HTTP status code, or negative when the request never reached a server.
 */
function elements_verify_oculus_iap_purchase(_body = undefined, _callback = undefined)
{
    var __base_url__ = _elements_options_get_rest_url();

    var __content_type__ = "application/json";

    // argument validation
    var __where__ = _GMFUNCTION_;

    if (!is_undefined(_body))
    {
        ElementsOculusIapReceipt_validate(_body, $"{__where__} :: '_body'");
    }
    if (!is_undefined(_callback))
    {
        if (!is_callable(_callback)) throw $"{__where__} :: '_callback' expected Function";
    }

    // build url path
    var __url__ = $"{__base_url__}/meta/oculus/verify";

    var __security__ = [ "auth_bearer", "session_secret" ];

    return _elements_create_request(__url__, undefined, "POST", undefined, _body, __content_type__, __security__, undefined, _callback, _GMFUNCTION_);
}

