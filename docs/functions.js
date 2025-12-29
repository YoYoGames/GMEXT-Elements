// #####################################################################
// # Final Documentation (manual edits and additions)
// #####################################################################

/**
 * @func elements_upload_apple_iap_receipt
 * @desc > **Elements Operation**: [uploadAppleIapReceipt](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/uploadAppleIapReceipt)
 * 
 * Upload Apple IAP Receipt. Returns a list of RewardIssuances, which may contain already-redeemed issuances.
 * 
 * @param {Struct.ElementsCreateAppleIapReceipt} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_upload_apple_iap_receipt(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_application_profiles
 * @desc > **Elements Operation**: [getApplicationProfiles](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getApplicationProfiles)
 * 
 * Searches all instances of ApplicationProfiles associated wit. the application. The search query may be a full text search.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_application_profiles(_application_name_or_id, _offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_applications
 * @desc > **Elements Operation**: [getApplications](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getApplications)
 * 
 * Performs a full-text search of all applications known to the server. As with other full-text endpoints this allows for pagination and offset.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_applications(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_application
 * @desc > **Elements Operation**: [createApplication](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createApplication)
 * 
 * Gets the metadata for a single application. This may include more specific details not available in the bulk-get or fetch operation.
 * 
 * @param {Struct.ElementsCreateApplicationRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_application(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_application
 * @desc > **Elements Operation**: [getApplication](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getApplication)
 * 
 * Gets the metadata for a single application. This may include more specific details not available in the bulk-get or fetch operation.
 * 
 * @param {String} _name_or_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_application(_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_application
 * @desc > **Elements Operation**: [updateApplication](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateApplication)
 * 
 * Performs an update to an existing application known to the server.
 * 
 * @param {String} _name_or_id
 * @param {Struct.ElementsUpdateApplicationRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_application(_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_application
 * @desc > **Elements Operation**: [deleteApplication](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteApplication)
 * 
 * Deletes a specific application known to the server.
 * 
 * @param {String} _name_or_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_application(_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_create_facebook_application_configuration
 * @desc > **Elements Operation**: [createFacebookApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createFacebookApplicationConfiguration)
 * 
 * Creates a new Facebook ApplicationConfiguration with the specific ID or application.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {Struct.ElementsFacebookApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_facebook_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_facebook_application_configuration
 * @desc > **Elements Operation**: [getFacebookApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getFacebookApplicationConfiguration)
 * 
 * Gets a single Facebook application based on unique name or ID.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_facebook_application_configuration
 * @desc > **Elements Operation**: [updateFacebookApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateFacebookApplicationConfiguration)
 * 
 * Updates an existing Facebook Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Struct.ElementsFacebookApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_facebook_application_configuration
 * @desc > **Elements Operation**: [deleteFacebookApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteFacebookApplicationConfiguration)
 * 
 * Deletes an existing Facebook Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_facebook_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_create_firebase_application_configuration
 * @desc > **Elements Operation**: [createFirebaseApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createFirebaseApplicationConfiguration)
 * 
 * Creates a new Firebase ApplicationConfiguration with the specific ID or application.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {Struct.ElementsFirebaseApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_firebase_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_firebase_application_configuration
 * @desc > **Elements Operation**: [getFirebaseApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getFirebaseApplicationConfiguration)
 * 
 * Gets a single Firebase application based on unique name or ID.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_firebase_application_configuration
 * @desc > **Elements Operation**: [updateFirebaseApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateFirebaseApplicationConfiguration)
 * 
 * Updates an existing Firebase Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Struct.ElementsFirebaseApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_firebase_application_configuration
 * @desc > **Elements Operation**: [deleteFirebaseApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteFirebaseApplicationConfiguration)
 * 
 * Deletes an existing Firebase Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_firebase_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_create_google_play_application_configuration
 * @desc > **Elements Operation**: [createGooglePlayApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createGooglePlayApplicationConfiguration)
 * 
 * Creates a new GooglePlay ApplicationConfiguration with the specific ID or application.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {Struct.ElementsGooglePlayApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_google_play_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_google_play_application_configuration
 * @desc > **Elements Operation**: [getGooglePlayApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getGooglePlayApplicationConfiguration)
 * 
 * Gets a single Google Play application based on unique name or ID.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_google_play_application_configuration
 * @desc > **Elements Operation**: [updateGooglePlayApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateGooglePlayApplicationConfiguration)
 * 
 * Updates an existing Google Play Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Struct.ElementsGooglePlayApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_google_play_application_configuration
 * @desc > **Elements Operation**: [deleteGooglePlayApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteGooglePlayApplicationConfiguration)
 * 
 * Deletes an existing Google Play Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_google_play_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_product_bundle_for_application_configuration
 * @desc > **Elements Operation**: [updateProductBundleForApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateProductBundleForApplicationConfiguration)
 * 
 * Updates the ProductBundle for the given ApplicationConfiguration
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Array[Struct.ElementsProductBundle]} [_body] The body to be included in the http request.
 * @param {String} [_content_type] The type of the body (this will be used by the mapper to convert the body argument to the correct type).
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_product_bundle_for_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _content_type = "*/*", _callback = undefined)
{
}

/**
 * @func elements_create_ios_application_configuration
 * @desc > **Elements Operation**: [createIosApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createIosApplicationConfiguration)
 * 
 * Creates a new iOS ApplicationConfiguration with the specific ID or application.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {Struct.ElementsIosApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_ios_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_ios_application_configuration
 * @desc > **Elements Operation**: [getIosApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getIosApplicationConfiguration)
 * 
 * Gets a single iOS application based on unique name or ID.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_ios_application_configuration
 * @desc > **Elements Operation**: [updateIosApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateIosApplicationConfiguration)
 * 
 * Updates an existing iOS Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Struct.ElementsIosApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_ios_application_configuration
 * @desc > **Elements Operation**: [deleteIosApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteIosApplicationConfiguration)
 * 
 * Deletes an existing iOS Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_ios_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_product_bundle_for_application_configuration_1
 * @desc > **Elements Operation**: [updateProductBundleForApplicationConfiguration_1](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateProductBundleForApplicationConfiguration_1)
 * 
 * Updates the ProductBundle for the given ApplicationConfiguration
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Array[Struct.ElementsProductBundle]} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_product_bundle_for_application_configuration_1(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_matchmaking_application_configuration
 * @desc > **Elements Operation**: [createMatchmakingApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createMatchmakingApplicationConfiguration)
 * 
 * Creates a new iOS ApplicationConfiguration with the specific ID or application.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {Struct.ElementsMatchmakingApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_matchmaking_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_matchmaking_application_configuration
 * @desc > **Elements Operation**: [getMatchmakingApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getMatchmakingApplicationConfiguration)
 * 
 * Gets a single iOS application based on unique name or ID.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_matchmaking_application_configuration
 * @desc > **Elements Operation**: [updateMatchmakingApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateMatchmakingApplicationConfiguration)
 * 
 * Updates an existing iOS Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Struct.ElementsMatchmakingApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_matchmaking_application_configuration
 * @desc > **Elements Operation**: [deleteMatchmakingApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteMatchmakingApplicationConfiguration)
 * 
 * Deletes an existing iOS Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_matchmaking_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_create_psn_application_configuration
 * @desc > **Elements Operation**: [createPsnApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createPsnApplicationConfiguration)
 * 
 * Creates a new PSN ApplicationConfiguration with the specific ID or application.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {Struct.ElementsPSNApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_psn_application_configuration(_application_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_psn_application_configuration
 * @desc > **Elements Operation**: [getPsnApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getPsnApplicationConfiguration)
 * 
 * Gets a single PSN application based on unique name or ID.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_psn_application_configuration
 * @desc > **Elements Operation**: [updatePsnApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updatePsnApplicationConfiguration)
 * 
 * Updates an existing PSN Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Struct.ElementsPSNApplicationConfiguration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_psn_application_configuration
 * @desc > **Elements Operation**: [deletePsnApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deletePsnApplicationConfiguration)
 * 
 * Deletes an existing PSN Application profile if it is known to the server.
 * 
 * @param {String} _application_name_or_id The name or ID of the application.
 * @param {String} _application_configuration_name_or_id The name or ID of the application configuration.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_psn_application_configuration(_application_name_or_id, _application_configuration_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_get_auth_schemes
 * @desc > **Elements Operation**: [getAuthSchemes](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getAuthSchemes)
 * 
 * Requires SUPERUSER access. Gets a pagination of Auth Schemes for the given query.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array[String]} [_tags]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_auth_schemes(_offset = undefined, _count = undefined, _tags = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_auth_scheme
 * @desc > **Elements Operation**: [createAuthScheme](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createAuthScheme)
 * 
 * Creates a new Auth Scheme, from the data in the given auth scheme request
 * 
 * @param {Struct.ElementsCreateAuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_auth_scheme(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_auth_scheme
 * @desc > **Elements Operation**: [getAuthScheme](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getAuthScheme)
 * 
 * Gets a specific Auth Scheme by the authSchemeId.
 * 
 * @param {String} _auth_scheme_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_auth_scheme(_auth_scheme_id, _callback = undefined)
{
}

/**
 * @func elements_update_auth_scheme
 * @desc > **Elements Operation**: [updateAuthScheme](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateAuthScheme)
 * 
 * Updates an Auth Scheme with the specified data in the auth scheme request.
 * 
 * @param {String} _auth_scheme_id
 * @param {Struct.ElementsUpdateAuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_auth_scheme(_auth_scheme_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_auth_scheme
 * @desc > **Elements Operation**: [deleteAuthScheme](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteAuthScheme)
 * 
 * Deletes an Auth Scheme with the specified id.
 * 
 * @param {String} _auth_scheme_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_auth_scheme(_auth_scheme_id, _callback = undefined)
{
}

/**
 * @func elements_create_oauth2_session
 * @desc > **Elements Operation**: [createOauth2Session](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createOauth2Session)
 * 
 * Begins a session by accepting a session request with parameters matching the specified OAuth2 Scheme. Upon successful validation against the scheme provided in the path, this will return a Session which can be used for authentication. If there is no User associated with the supplied credentials, this will implicitly create a new account and will include that account information in the response. If there is an account, or this method receives an existing session key, this will link to the existing scheme if the account was not previously linked.
 * 
 * @param {Struct.ElementsOAuth2SessionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_oauth2_session(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_auth_schemes_1
 * @desc > **Elements Operation**: [getAuthSchemes1](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getAuthSchemes1)
 * 
 * Requires SUPERUSER access. Gets a pagination of Auth Schemes for the given query.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array[String]} [_tags]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_auth_schemes_1(_offset = undefined, _count = undefined, _tags = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_auth_scheme_1
 * @desc > **Elements Operation**: [createAuthScheme_1](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createAuthScheme_1)
 * 
 * Creates a new Auth Scheme, from the data in the given auth scheme request
 * 
 * @param {Struct.ElementsCreateOrUpdateOAuth2AuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_auth_scheme_1(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_auth_scheme_1
 * @desc > **Elements Operation**: [getAuthScheme_1](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getAuthScheme_1)
 * 
 * Gets a specific Auth Scheme by the oAuth2AuthSchemeId.
 * 
 * @param {String} _oauth2_auth_scheme_id The ID of the authentication scheme.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_auth_scheme_1(_oauth2_auth_scheme_id, _callback = undefined)
{
}

/**
 * @func elements_update_auth_scheme_1
 * @desc > **Elements Operation**: [updateAuthScheme1](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateAuthScheme1)
 * 
 * Updates an Auth Scheme with the specified data in the auth scheme request.
 * 
 * @param {String} _oauth2_auth_scheme_id The ID of the authentication scheme.
 * @param {Struct.ElementsCreateOrUpdateOAuth2AuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_auth_scheme_1(_oauth2_auth_scheme_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_auth_scheme_1
 * @desc > **Elements Operation**: [deleteAuthScheme_1](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteAuthScheme_1)
 * 
 * Deletes an Auth Scheme with the specified id.
 * 
 * @param {String} _oauth2_auth_scheme_id The ID of the authentication scheme.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_auth_scheme_1(_oauth2_auth_scheme_id, _callback = undefined)
{
}

/**
 * @func elements_create_oidc_session
 * @desc > **Elements Operation**: [createOidcSession](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createOidcSession)
 * 
 * Begins a session by accepting a JWT. Upon successful validation against the scheme provided in the path, this will return a Session which can be used for authentication. If there is no User associated with the supplied credentials, this will implicitly create a new account and will include that account information in the response. If there is an account, or this method receives an existing session key, this will link to the existing scheme if the account was not previously linked.
 * 
 * @param {Struct.ElementsOidcSessionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_oidc_session(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_auth_schemes_2
 * @desc > **Elements Operation**: [getAuthSchemes_2](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getAuthSchemes_2)
 * 
 * Requires SUPERUSER access. Gets a pagination of Auth Schemes for the given query.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array[String]} [_tags]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_auth_schemes_2(_offset = undefined, _count = undefined, _tags = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_auth_scheme_2
 * @desc > **Elements Operation**: [createAuthScheme_2](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createAuthScheme_2)
 * 
 * Creates a new Auth Scheme, from the data in the given auth scheme request.
 * 
 * @param {Struct.ElementsCreateOrUpdateOidcAuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_auth_scheme_2(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_auth_scheme_2
 * @desc > **Elements Operation**: [getAuthScheme_2](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getAuthScheme_2)
 * 
 * Gets a specific Auth Scheme by the oidcAuthSchemeId.
 * 
 * @param {String} _oidc_auth_scheme_id The ID of the scheme.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_auth_scheme_2(_oidc_auth_scheme_id, _callback = undefined)
{
}

/**
 * @func elements_update_auth_scheme_2
 * @desc > **Elements Operation**: [updateAuthScheme_2](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateAuthScheme_2)
 * 
 * Updates an Auth Scheme with the specified data in the auth scheme request.
 * 
 * @param {String} _oidc_auth_scheme_id The ID of the scheme.
 * @param {Struct.ElementsCreateOrUpdateOidcAuthSchemeRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_auth_scheme_2(_oidc_auth_scheme_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_auth_scheme_2
 * @desc > **Elements Operation**: [deleteAuthScheme_2](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteAuthScheme_2)
 * 
 * Deletes an Auth Scheme with the specified id.
 * 
 * @param {String} _oidc_auth_scheme_id The ID of the scheme.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_auth_scheme_2(_oidc_auth_scheme_id, _callback = undefined)
{
}

/**
 * @func elements_get_smart_contracts
 * @desc > **Elements Operation**: [getSmartContracts](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getSmartContracts)
 * 
 * Gets a pagination of SmartContracts.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_api] ( one of: NEO | ETHEREUM | SOLANA | FLOW | NEAR).
 * @param {Array[String]} [_network] ( one of: NEO | NEO_TEST | ETHEREUM | ETHEREUM_TEST | BSC | BSC_TEST | POLYGON | POLYGON_TEST | SOLANA | SOLANA_TEST | FLOW | FLOW_TEST | NEAR | NEAR_TEST).
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_smart_contracts(_offset = undefined, _count = undefined, _api = undefined, _network = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_smart_contract
 * @desc > **Elements Operation**: [createSmartContract](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createSmartContract)
 * 
 * Patches a Smart Contract entry, associated with the specified deployed script hash.
 * 
 * @param {Struct.ElementsCreateSmartContractRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_smart_contract(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_smart_contract
 * @desc > **Elements Operation**: [getSmartContract](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getSmartContract)
 * 
 * Gets a specific Smart Contract by contractId.
 * 
 * @param {String} _contract_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_smart_contract(_contract_id, _callback = undefined)
{
}

/**
 * @func elements_update_smart_contract
 * @desc > **Elements Operation**: [updateSmartContract](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateSmartContract)
 * 
 * Patches a Smart Contract entry, associated with the specified deployed script hash.
 * 
 * @param {String} _contract_id
 * @param {Struct.ElementsUpdateSmartContractRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_smart_contract(_contract_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_contract
 * @desc > **Elements Operation**: [deleteContract](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteContract)
 * 
 * Deletes a Smart Contract with the specified contractId.
 * 
 * @param {String} _contract_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_contract(_contract_id, _callback = undefined)
{
}

/**
 * @func elements_get_vaults
 * @desc > **Elements Operation**: [getVaults](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getVaults)
 * 
 * Gets a pagination of Wallets. Optionally a user Id can be specified to filter for a given user.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_vaults(_offset = undefined, _count = undefined, _user_id = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_vault
 * @desc > **Elements Operation**: [createVault](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createVault)
 * 
 * Creates a new Vault, associated with the given user.
 * 
 * @param {Struct.ElementsCreateVaultRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_vault(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_vault
 * @desc > **Elements Operation**: [getVault](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getVault)
 * 
 * Gets a specific Vault by Id.
 * 
 * @param {String} _vault_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_vault(_vault_id, _callback = undefined)
{
}

/**
 * @func elements_update_vault
 * @desc > **Elements Operation**: [updateVault](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateVault)
 * 
 * Updates a Vault with the specified name or id.
 * 
 * @param {String} _vault_id
 * @param {Struct.ElementsUpdateVaultRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_vault(_vault_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_vault
 * @desc > **Elements Operation**: [deleteVault](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteVault)
 * 
 * Deletes a Vault with the specified id.
 * 
 * @param {String} _vault_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_vault(_vault_id, _callback = undefined)
{
}

/**
 * @func elements_get_wallets
 * @desc > **Elements Operation**: [getWallets](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getWallets)
 * 
 * Gets a pagination of Wallets. Optionally a user Id can be specified to filter for a given user.
 * 
 * @param {String} _vault_id
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {String} [_api] ( one of: NEO | ETHEREUM | SOLANA | FLOW | NEAR).
 * @param {Array[String]} [_network] ( one of: NEO | NEO_TEST | ETHEREUM | ETHEREUM_TEST | BSC | BSC_TEST | POLYGON | POLYGON_TEST | SOLANA | SOLANA_TEST | FLOW | FLOW_TEST | NEAR | NEAR_TEST).
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_wallets(_vault_id, _offset = undefined, _count = undefined, _user_id = undefined, _api = undefined, _network = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_wallet
 * @desc > **Elements Operation**: [createWallet](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createWallet)
 * 
 * Creates a new Wallet, associated with the given user.
 * 
 * @param {String} _vault_id
 * @param {Struct.ElementsCreateWalletRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_wallet(_vault_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_wallet
 * @desc > **Elements Operation**: [getWallet](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getWallet)
 * 
 * Gets a specific Wallet by Id.
 * 
 * @param {String} _vault_id
 * @param {String} _wallet_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_wallet(_vault_id, _wallet_id, _callback = undefined)
{
}

/**
 * @func elements_update_wallet
 * @desc > **Elements Operation**: [updateWallet](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateWallet)
 * 
 * Updates a Wallet with the specified name or id.
 * 
 * @param {String} _vault_id
 * @param {String} _wallet_id
 * @param {Struct.ElementsUpdateWalletRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_wallet(_vault_id, _wallet_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_wallet
 * @desc > **Elements Operation**: [deleteWallet](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteWallet)
 * 
 * Deletes a Wallet with the specified id.
 * 
 * @param {String} _vault_id
 * @param {String} _wallet_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_wallet(_vault_id, _wallet_id, _callback = undefined)
{
}

/**
 * @func elements_get_wallet_1
 * @desc > **Elements Operation**: [getWallet_1](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getWallet_1)
 * 
 * Gets a specific Wallet by ID.
 * 
 * @param {String} _wallet_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_wallet_1(_wallet_id, _callback = undefined)
{
}

/**
 * @func elements_get_deployments
 * @desc > **Elements Operation**: [getDeployments](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getDeployments)
 * 
 * This function retrieves the deployments for the given application.
 * 
 * @param {String} _application_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_deployments(_application_id, _callback = undefined)
{
}

/**
 * @func elements_create_new_deployment
 * @desc > **Elements Operation**: [createNewDeployment](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createNewDeployment)
 * 
 * Creates a new deployment.
 * 
 * @param {String} _application_id
 * @param {Struct.ElementsCreateDeploymentRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_new_deployment(_application_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_deployment
 * @desc > **Elements Operation**: [getDeployment](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getDeployment)
 * 
 * Gets the deployment for the given application with the given ID.
 * 
 * @param {String} _application_id
 * @param {String} _deployment_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_deployment(_application_id, _deployment_id, _callback = undefined)
{
}

/**
 * @func elements_delete_deployment
 * @desc > **Elements Operation**: [deleteDeployment](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteDeployment)
 * 
 * Deletes the given deployment for the given application ID.
 * 
 * @param {String} _application_id
 * @param {String} _deployment_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_deployment(_application_id, _deployment_id, _callback = undefined)
{
}

/**
 * @func elements_get_current_deployment
 * @desc > **Elements Operation**: [getCurrentDeployment](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getCurrentDeployment)
 * 
 * Gets the current deployment.
 * 
 * @param {String} _application_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_current_deployment(_application_id, _callback = undefined)
{
}

/**
 * @func elements_update_deployment
 * @desc > **Elements Operation**: [updateDeployment](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateDeployment)
 * 
 * Updates the deployment.
 * 
 * @param {String} _application_id
 * @param {String} _version
 * @param {Struct.ElementsUpdateDeploymentRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_deployment(_application_id, _version, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_generate_code
 * @desc > **Elements Operation**: [generateCode](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/generateCode)
 * 
 * Generates API code for use on the client. Will generate Elements core if no application is specified in the request body.
 * 
 * @param {Struct.ElementsCodegenRequest} [_body] The body to be included in the http request.
 * @param {String} [_content_type] The type of the body (this will be used by the mapper to convert the body argument to the correct type).
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_generate_code(_body = undefined, _content_type = "*/*", _callback = undefined)
{
}

/**
 * @func elements_get_followers
 * @desc > **Elements Operation**: [getFollowers](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getFollowers)
 * 
 * Searches all followers in the system and returning the metadata for all matches against the given profile id.
 * 
 * @param {String} _profile_id
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_followers(_profile_id, _offset = undefined, _count = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_followers_1
 * @desc > **Elements Operation**: [getFollowers_1](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getFollowers_1)
 * 
 * Searches all followers in the system and returning the metadata for all matches against the given profile id.
 * 
 * @param {String} _profile_id
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_followers_1(_profile_id, _offset = undefined, _count = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_follower
 * @desc > **Elements Operation**: [createFollower](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createFollower)
 * 
 * Supplying the follower object, this will store the information supplied in the body of the request.
 * 
 * @param {String} _profile_id
 * @param {Struct.ElementsCreateFollowerRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_follower(_profile_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_follower
 * @desc > **Elements Operation**: [deleteFollower](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteFollower)
 * 
 * Deletes the given follower.
 * 
 * @param {String} _profile_id
 * @param {String} _profile_to_unfollow_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_follower(_profile_id, _profile_to_unfollow_id, _callback = undefined)
{
}

/**
 * @func elements_get_follower
 * @desc > **Elements Operation**: [getFollower](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getFollower)
 * 
 * Gets the follower with the given ID.
 * 
 * @param {String} _profile_id
 * @param {String} _followed_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_follower(_profile_id, _followed_id, _callback = undefined)
{
}

/**
 * @func elements_get_friend
 * @desc > **Elements Operation**: [getFriend](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getFriend)
 * 
 * Gets a specific friend using the ID of the friend.
 * 
 * @param {String} _friend_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_friend(_friend_id, _callback = undefined)
{
}

/**
 * @func elements_delete_friend_registration
 * @desc > **Elements Operation**: [deleteFriendRegistration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteFriendRegistration)
 * 
 * Once a friend is deleted, re-creating a friend will set the friendship status to outgoing.
 * 
 * @param {String} _friend_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_friend_registration(_friend_id, _callback = undefined)
{
}

/**
 * @func elements_get_friends
 * @desc > **Elements Operation**: [getFriends](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getFriends)
 * 
 * Searches all friends in the system and returning the metadata for all matches against the given search filter.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_friends(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_items
 * @desc > **Elements Operation**: [getItems](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getItems)
 * 
 * Searches all items and returns all matching items, filtered by the passed in search parameters. If multiple tags are specified, then all items that contain at least one of the passed in tags is returned.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array[String]} [_tags]
 * @param {String} [_category]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_items(_offset = undefined, _count = undefined, _tags = undefined, _category = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_item
 * @desc > **Elements Operation**: [createItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createItem)
 * 
 * Supplying an item object, this will create a new item with a newly assigned unique id. The Item representation returned in the response body is a representation of the Item as persisted with a unique identifier signed and with its fields properly normalized. The supplied item object submitted with the request must have a name property that is unique across all items.
 * 
 * @param {Struct.ElementsCreateItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_item(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_item_by_identifier
 * @desc > **Elements Operation**: [getItemByIdentifier](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getItemByIdentifier)
 * 
 * Looks up an item by the passed in identifier.
 * 
 * @param {String} _identifier
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_item_by_identifier(_identifier, _callback = undefined)
{
}

/**
 * @func elements_update_item
 * @desc > **Elements Operation**: [updateItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateItem)
 * 
 * Supplying an item, this will update the Item identified by the identifier in the path with contents from the passed in request body. 
 * 
 * @param {String} _identifier
 * @param {Struct.ElementsUpdateItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_item(_identifier, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_upload_google_play_iap_purchase
 * @desc > **Elements Operation**: [uploadGooglePlayIapPurchase](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/uploadGooglePlayIapPurchase)
 * 
 * @param {Struct.ElementsCreateGooglePlayIapReceipt} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_upload_google_play_iap_purchase(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_build_indexes
 * @desc > **Elements Operation**: [buildIndexes](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/buildIndexes)
 * 
 * @param {Struct.ElementsBuildIndexRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_build_indexes(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_plans
 * @desc > **Elements Operation**: [getPlans](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getPlans)
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_plans(_offset = undefined, _count = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_advanced_inventory_item
 * @desc > **Elements Operation**: [getAdvancedInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getAdvancedInventoryItem)
 * 
 * Gets the first (primary) inventory item for the specified item.
 * 
 * @param {String} _inventory_item_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_advanced_inventory_item(_inventory_item_id, _callback = undefined)
{
}

/**
 * @func elements_update_simple_inventory_item
 * @desc > **Elements Operation**: [updateSimpleInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateSimpleInventoryItem)
 * 
 * Updates an inventory item for the specified item.
 * 
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsUpdateInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_simple_inventory_item(_inventory_item_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_advanced_inventory_item
 * @desc > **Elements Operation**: [deleteAdvancedInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteAdvancedInventoryItem)
 * 
 * Delete the inventory item as identified by the given item name/id.
 * 
 * @param {String} _inventory_item_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_advanced_inventory_item(_inventory_item_id, _callback = undefined)
{
}

/**
 * @func elements_adjust_advanced_inventory_item_quantity
 * @desc > **Elements Operation**: [adjustAdvancedInventoryItemQuantity](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/adjustAdvancedInventoryItemQuantity)
 * 
 * Adjust the quantity of the first (primary) inventory item for the specified item. This implicitly will create the InventoryItem if it does not exist. The inventory item value
 * 
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsAdvancedInventoryItemQuantityAdjustment} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_adjust_advanced_inventory_item_quantity(_inventory_item_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_advanced_inventory_items
 * @desc > **Elements Operation**: [getAdvancedInventoryItems](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getAdvancedInventoryItems)
 * 
 * Searches all inventory items in the system and returns the metadata for all matches against the given search filter.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_advanced_inventory_items(_offset = undefined, _count = undefined, _user_id = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_advanced_inventory_item
 * @desc > **Elements Operation**: [createAdvancedInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createAdvancedInventoryItem)
 * 
 * Create an inventory item for the specified item.
 * 
 * @param {Struct.ElementsCreateAdvancedInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_advanced_inventory_item(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_distinct_inventory_items
 * @desc > **Elements Operation**: [getDistinctInventoryItems](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getDistinctInventoryItems)
 * 
 * Searches all inventory items in the system and returns the metadata for all matches against the given search filter.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {String} [_profile_id]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_distinct_inventory_items(_offset = undefined, _count = undefined, _user_id = undefined, _profile_id = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_distinct_inventory_item
 * @desc > **Elements Operation**: [createDistinctInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createDistinctInventoryItem)
 * 
 * Create an inventory item for the specified item.
 * 
 * @param {Struct.ElementsCreateDistinctInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_distinct_inventory_item(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_update_distinct_inventory_item
 * @desc > **Elements Operation**: [updateDistinctInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateDistinctInventoryItem)
 * 
 * Updates an inventory item for the specified item.
 * 
 * @param {String} _distinct_inventory_item_id
 * @param {Struct.ElementsUpdateDistinctInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_distinct_inventory_item(_distinct_inventory_item_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_distinct_inventory_item
 * @desc > **Elements Operation**: [deleteDistinctInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteDistinctInventoryItem)
 * 
 * Delete the inventory item as identified by the given item name/id.
 * 
 * @param {String} _distinct_inventory_item_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_distinct_inventory_item(_distinct_inventory_item_id, _callback = undefined)
{
}

/**
 * @func elements_get_distinct_inventory_item
 * @desc > **Elements Operation**: [getDistinctInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getDistinctInventoryItem)
 * 
 * Gets the first (primary) inventory item for the specified item.
 * 
 * @param {String} _inventory_item_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_distinct_inventory_item(_inventory_item_id, _callback = undefined)
{
}

/**
 * @func elements_get_simple_inventory_item
 * @desc > **Elements Operation**: [getSimpleInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getSimpleInventoryItem)
 * 
 * Gets the first (primary) inventory item for the specified item.
 * 
 * @param {String} _inventory_item_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_simple_inventory_item(_inventory_item_id, _callback = undefined)
{
}

/**
 * @func elements_update_simple_inventory_item_1
 * @desc > **Elements Operation**: [updateSimpleInventoryItem_1](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateSimpleInventoryItem_1)
 * 
 * Updates an inventory item for the specified item.
 * 
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsUpdateInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_simple_inventory_item_1(_inventory_item_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_simple_inventory_item
 * @desc > **Elements Operation**: [deleteSimpleInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteSimpleInventoryItem)
 * 
 * Delete the inventory item as identified by the given item name/id.
 * 
 * @param {String} _inventory_item_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_simple_inventory_item(_inventory_item_id, _callback = undefined)
{
}

/**
 * @func elements_adjust_simple_inventory_item_quantity
 * @desc > **Elements Operation**: [adjustSimpleInventoryItemQuantity](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/adjustSimpleInventoryItemQuantity)
 * 
 * Adjust the quantity of the first (primary) inventory item for the specified item. This implicitly will create the InventoryItem if it does not exist. The inventory item value
 * 
 * @param {String} _inventory_item_id
 * @param {Struct.ElementsSimpleInventoryItemQuantityAdjustment} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_adjust_simple_inventory_item_quantity(_inventory_item_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_simple_inventory_items
 * @desc > **Elements Operation**: [getSimpleInventoryItems](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getSimpleInventoryItems)
 * 
 * Searches all inventory items in the system and returns the metadata for all matches against the given search filter.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_simple_inventory_items(_offset = undefined, _count = undefined, _user_id = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_simple_inventory_item
 * @desc > **Elements Operation**: [createSimpleInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createSimpleInventoryItem)
 * 
 * Create an inventory item for the specified item.
 * 
 * @param {Struct.ElementsCreateSimpleInventoryItemRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_simple_inventory_item(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_matched_user_profiles_with_phone_numbers
 * @desc > **Elements Operation**: [getMatchedUserProfilesWithPhoneNumbers](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getMatchedUserProfilesWithPhoneNumbers)
 * 
 * Both phones from request and from DB are normalized and compared.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Struct.ElementsInviteViaPhonesRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_matched_user_profiles_with_phone_numbers(_offset = undefined, _count = undefined, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_large_object
 * @desc > **Elements Operation**: [createLargeObject](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createLargeObject)
 * 
 * @param {Struct} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_large_object(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_large_object_1
 * @desc > **Elements Operation**: [createLargeObject_1](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createLargeObject_1)
 * 
 * @param {Struct.ElementsCreateLargeObjectRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_large_object_1(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_large_object_from_url
 * @desc > **Elements Operation**: [createLargeObjectFromUrl](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createLargeObjectFromUrl)
 * 
 * @param {Struct.ElementsCreateLargeObjectFromUrlRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_large_object_from_url(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_large_object
 * @desc > **Elements Operation**: [getLargeObject](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getLargeObject)
 * 
 * @param {String} _large_object_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_large_object(_large_object_id, _callback = undefined)
{
}

/**
 * @func elements_update_large_object
 * @desc > **Elements Operation**: [updateLargeObject](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateLargeObject)
 * 
 * @param {String} _large_object_id
 * @param {Struct.ElementsUpdateLargeObjectRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_large_object(_large_object_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_large_object
 * @desc > **Elements Operation**: [deleteLargeObject](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteLargeObject)
 * 
 * @param {String} _large_object_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_large_object(_large_object_id, _callback = undefined)
{
}

/**
 * @func elements_update_large_object_contents
 * @desc > **Elements Operation**: [updateLargeObjectContents](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateLargeObjectContents)
 * 
 * @param {String} _large_object_id
 * @param {Struct} [_body] The body to be included in the http request.
 * @param {String} [_content_type] The type of the body (this will be used by the mapper to convert the body argument to the correct type).
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_large_object_contents(_large_object_id, _body = undefined, _content_type = "*/*", _callback = undefined)
{
}

/**
 * @func elements_get_leaderboards
 * @desc > **Elements Operation**: [getLeaderboards](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getLeaderboards)
 * 
 * Performs a full-text search of all leaderboards known to the server. As with other full-text endpoints this allows for pagination and offset.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_leaderboards(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_leaderboard
 * @desc > **Elements Operation**: [createLeaderboard](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createLeaderboard)
 * 
 * Gets the metadata for a single leaderboard. This may include more specific details not available in the bulk-get or fetch operation.
 * 
 * @param {Struct.ElementsLeaderboard} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_leaderboard(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_leaderboard
 * @desc > **Elements Operation**: [getLeaderboard](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getLeaderboard)
 * 
 * Gets the metadata for a single leaderboard. This may include more specific details not available in the bulk-get or fetch operation.
 * 
 * @param {String} _name_or_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_leaderboard(_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_leaderboard
 * @desc > **Elements Operation**: [updateLeaderboard](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateLeaderboard)
 * 
 * Performs an update to an existing leaderboard known to the server.
 * 
 * @param {String} _name_or_id
 * @param {Struct.ElementsLeaderboard} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_leaderboard(_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_leaderboard
 * @desc > **Elements Operation**: [deleteLeaderboard](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteLeaderboard)
 * 
 * Deletes a specific leaderboard known to the server.
 * 
 * @param {String} _name_or_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_leaderboard(_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_get_global_rank_tabular
 * @desc > **Elements Operation**: [getGlobalRankTabular](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getGlobalRankTabular)
 * 
 * Gets the current Profile's rank among all players for the particular leaderboard.
 * 
 * @param {String} _leaderboard_name_or_id Specifies the leaderboard name or ID.
 * @param {Real} [_leaderboard_epoch] Specifies the epoch for the leaderboard. If not provided, the current epoch will be used by default for epochal leaderboards. This value will be ignored for all-time leaderboards. Set this value to 0 to explicitly reference the current epoch (when applicable).
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_global_rank_tabular(_leaderboard_name_or_id, _leaderboard_epoch = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_rank_among_friends
 * @desc > **Elements Operation**: [getRankAmongFriends](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getRankAmongFriends)
 * 
 * Gets the current Profile's rank among friends for the particular leaderboard.
 * 
 * @param {String} _leaderboard_name_or_id Specifies the leaderboard name or ID.
 * @param {Real} [_offset] May be negative to place the requested player in the middle of the page.
 * @param {Real} [_count] The number of results to return in the page.
 * @param {Real} [_relative] Indicates whether or not to fetch results in a relative fashion.
 * @param {Real} [_leaderboard_epoch] Specifies the epoch for the leaderboard. If no value is provided, the current epoch will befetched.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_rank_among_friends(_leaderboard_name_or_id, _offset = undefined, _count = undefined, _relative = undefined, _leaderboard_epoch = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_rank_among_mutual_followers
 * @desc > **Elements Operation**: [getRankAmongMutualFollowers](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getRankAmongMutualFollowers)
 * 
 * Gets the current Profile's rank among mutual followers for the particular leaderboard.
 * 
 * @param {String} _leaderboard_name_or_id Specifies the leaderboard name or ID.
 * @param {Real} [_offset] May be negative to place the requested player in the middle of the page.
 * @param {Real} [_count] The number of results to return in the page.
 * @param {Real} [_relative] Indicates whether or not to fetch results in a relative fashion.
 * @param {Real} [_leaderboard_epoch] Specifies the epoch for the leaderboard. If no value is provided, the current epoch will befetched.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_rank_among_mutual_followers(_leaderboard_name_or_id, _offset = undefined, _count = undefined, _relative = undefined, _leaderboard_epoch = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_score
 * @desc > **Elements Operation**: [createScore](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createScore)
 * 
 * Posts a single score for the currently logged-in profile. Conceptually, this is creating a new resource, however the server may opt to overwrite the existing identifier if it sees fit.
 * 
 * @param {String} _leaderboard_name_or_id The name or id of the leaderboard.
 * @param {Struct.ElementsScore} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_score(_leaderboard_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_matches
 * @desc > **Elements Operation**: [getMatches](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getMatches)
 * 
 * Lists all matches available. Under most circumstances, this will requires that a profile be made available to the request. The server may choose to return an error if no suitable profile can be determined.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_matches(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_match
 * @desc > **Elements Operation**: [createMatch](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createMatch)
 * 
 * This method accepts an instance of Match, effectively requesting that the server find a suitable opponent for a game. As other suitable players create matches the created match object may be updated as a suitable opponent is found. The client must poll matches for updates and react accordingly.
 * 
 * @param {Struct.ElementsMatch} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_match(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_match
 * @desc > **Elements Operation**: [getMatch](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getMatch)
 * 
 * Gets a specific match given the match's unique ID. Additionally, it is possible to instruct the API to wait for a period of time before sending the response. The request will intentionally hang until the requested Match with ID has been updated in the database.
 * 
 * @param {String} _match_id
 * @param {Real} [_social_engine_long_poll_timeout] The maximum amount time the server will wait until a request returns a default set of data for long polling. Specifying a zero will request that the server wait indefinitely until responding. Though, the server may enforce a practical upper limit on the amount of time it takes to return. Omitting this header will prompt the server to treat the request as a normal request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_match(_match_id, _social_engine_long_poll_timeout = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_match
 * @desc > **Elements Operation**: [deleteMatch](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteMatch)
 * 
 * Deletes and permanently removes the Match from the server. This effectively will cancel any pending request for a match. If a game is currently being played agaist the match, the server may reject the request to delete the match until the game concludes.
 * 
 * @param {String} _match_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_match(_match_id, _callback = undefined)
{
}

/**
 * @func elements_get_metadata_objects
 * @desc > **Elements Operation**: [getMetadataObjects](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getMetadataObjects)
 * 
 * Searches all metadata in the system and returning all matches against the given search filter.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_metadata_objects(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_metadata
 * @desc > **Elements Operation**: [createMetadata](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createMetadata)
 * 
 * Creates a new Metadata object with the provided details.
 * 
 * @param {Struct.ElementsCreateMetadataRequest} [_body] The body to be included in the http request.
 * @param {String} [_content_type] The type of the body (this will be used by the mapper to convert the body argument to the correct type).
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_metadata(_body = undefined, _content_type = "*/*", _callback = undefined)
{
}

/**
 * @func elements_get_metadata_object
 * @desc > **Elements Operation**: [getMetadataObject](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getMetadataObject)
 * 
 * Gets a specific metadata object by name or id.
 * 
 * @param {String} _id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_metadata_object(_id, _callback = undefined)
{
}

/**
 * @func elements_update_metadata
 * @desc > **Elements Operation**: [updateMetadata](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateMetadata)
 * 
 * Updates a specific metadata object by name or id.
 * 
 * @param {String} _id
 * @param {Struct.ElementsUpdateMetadataRequest} [_body] The body to be included in the http request.
 * @param {String} [_content_type] The type of the body (this will be used by the mapper to convert the body argument to the correct type).
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_metadata(_id, _body = undefined, _content_type = "*/*", _callback = undefined)
{
}

/**
 * @func elements_delete_metadata
 * @desc > **Elements Operation**: [deleteMetadata](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteMetadata)
 * 
 * Deletes a specific metadata object by name or id.
 * 
 * @param {String} _id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_metadata(_id, _callback = undefined)
{
}

/**
 * @func elements_get_missions
 * @desc > **Elements Operation**: [getMissions](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getMissions)
 * 
 * Searches all missions in the system and returning a number of matches against the given search filter, delimited by the offset and count.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array[String]} [_tags]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_missions(_offset = undefined, _count = undefined, _tags = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_mission
 * @desc > **Elements Operation**: [createMission](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createMission)
 * 
 * Supplying a mission object, this will create a new mission with a newly assigned unique id. The Mission representation returned in the response body is a representation of the Mission as persisted with a unique identifier assigned and with its fields properly normalized. The supplied mission object submitted with the request must have a name property that is unique across all items.
 * 
 * @param {Struct.ElementsMission} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_mission(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_mission_by_name_or_id
 * @desc > **Elements Operation**: [getMissionByNameOrId](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getMissionByNameOrId)
 * 
 * Looks up a mission by the passed in identifier.
 * 
 * @param {String} _mission_name_or_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_mission_by_name_or_id(_mission_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_mission
 * @desc > **Elements Operation**: [updateMission](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateMission)
 * 
 * Supplying a mission, this will update the Mission identified by the name or ID in the path with contents from the passed in request body. 
 * 
 * @param {String} _mission_name_or_id
 * @param {Struct.ElementsMission} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_mission(_mission_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_mission
 * @desc > **Elements Operation**: [deleteMission](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteMission)
 * 
 * Deletes a mission by the passed in identifier.
 * 
 * @param {String} _mission_name_or_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_mission(_mission_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_get_progress_tabular
 * @desc > **Elements Operation**: [getProgressTabular](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getProgressTabular)
 * Gets the current Profile's rank among all players for the particular leaderboard.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_progress_tabular(_callback = undefined)
{
}

/**
 * @func elements_create_progress
 * @desc > **Elements Operation**: [createProgress](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createProgress)
 * 
 * Supplying a progress object, this will create a new progress with a newly assigned unique id. The Progress representation returned in the response body is a representation of the Progress as persisted with a unique identifier assigned and with its fields properly normalized.
 * 
 * @param {Struct.ElementsProgress} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_progress(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_progress
 * @desc > **Elements Operation**: [deleteProgress](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteProgress)
 * 
 * Deletes a progress by the passed in identifier.
 * 
 * @param {String} _progress_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_progress(_progress_id, _callback = undefined)
{
}

/**
 * @func elements_get_progress_by_name_or_id
 * @desc > **Elements Operation**: [getProgressByNameOrId](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getProgressByNameOrId)
 * 
 * Looks up a progress by the passed in identifier.
 * 
 * @param {String} _progress_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_progress_by_name_or_id(_progress_id, _callback = undefined)
{
}

/**
 * @func elements_update_progress
 * @desc > **Elements Operation**: [updateProgress](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateProgress)
 * 
 * Supplying a progress, this will update the Progress identified by the ID in the path with contents from the passed in request body. 
 * 
 * @param {String} _progress_id
 * @param {Struct.ElementsProgress} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_progress(_progress_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_reward_issuance
 * @desc > **Elements Operation**: [getRewardIssuance](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getRewardIssuance)
 * 
 * @param {String} _reward_issuance_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_reward_issuance(_reward_issuance_id, _callback = undefined)
{
}

/**
 * @func elements_get_reward_issuances
 * @desc > **Elements Operation**: [getRewardIssuances](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getRewardIssuances)
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array[String]} [_states] ( one of: ISSUED | REDEEMED).
 * @param {Array[String]} [_tags]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_reward_issuances(_offset = undefined, _count = undefined, _states = undefined, _tags = undefined, _callback = undefined)
{
}

/**
 * @func elements_redeem_reward_issuance
 * @desc > **Elements Operation**: [redeemRewardIssuance](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/redeemRewardIssuance)
 * 
 * @param {String} _reward_issuance_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_redeem_reward_issuance(_reward_issuance_id, _callback = undefined)
{
}

/**
 * @func elements_redeem_reward_issuances
 * @desc > **Elements Operation**: [redeemRewardIssuances](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/redeemRewardIssuances)
 * 
 * @param {Array[String]} [_body] The body to be included in the http request.
 * @param {String} [_content_type] The type of the body (this will be used by the mapper to convert the body argument to the correct type).
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_redeem_reward_issuances(_body = undefined, _content_type = "*/*", _callback = undefined)
{
}

/**
 * @func elements_get_schedule_events
 * @desc > **Elements Operation**: [getScheduleEvents](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getScheduleEvents)
 * 
 * Searches all schedules in the system and returning a number of matches against the given search filter, delimited by the offset and count.
 * 
 * @param {String} _schedule_name_or_id
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array[String]} [_tags]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_schedule_events(_schedule_name_or_id, _offset = undefined, _count = undefined, _tags = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_schedule_event
 * @desc > **Elements Operation**: [createScheduleEvent](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createScheduleEvent)
 * 
 * Supplying a schedule object, this will create a new schedule with a newly assigned unique id. The ScheduleEvent representation returned in the response body is a representation of the ScheduleEvent as persisted with a unique identifier assigned and with its fields properly normalized. The supplied schedule object submitted with the request must have a name property that is unique across all items.
 * 
 * @param {String} _schedule_name_or_id
 * @param {Struct.ElementsCreateScheduleEventRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_schedule_event(_schedule_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_schedule_event_by_name_or_id
 * @desc > **Elements Operation**: [getScheduleEventByNameOrId](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getScheduleEventByNameOrId)
 * 
 * Looks up a schedule by the passed in identifier.
 * 
 * @param {String} _schedule_name_or_id
 * @param {String} _schedule_event_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_schedule_event_by_name_or_id(_schedule_name_or_id, _schedule_event_id, _callback = undefined)
{
}

/**
 * @func elements_update_schedule_event
 * @desc > **Elements Operation**: [updateScheduleEvent](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateScheduleEvent)
 * 
 * Supplying a schedule, this will update the ScheduleEvent identified by the name or ID in the path with contents from the passed in request body. 
 * 
 * @param {String} _schedule_name_or_id
 * @param {String} _schedule_event_id
 * @param {Struct.ElementsUpdateScheduleEventRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_schedule_event(_schedule_name_or_id, _schedule_event_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_schedule_event
 * @desc > **Elements Operation**: [deleteScheduleEvent](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteScheduleEvent)
 * 
 * Deletes a schedule by the passed in identifier.
 * 
 * @param {String} _schedule_name_or_id
 * @param {String} _schedule_event_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_schedule_event(_schedule_name_or_id, _schedule_event_id, _callback = undefined)
{
}

/**
 * @func elements_get_schedule_progresses
 * @desc > **Elements Operation**: [getScheduleProgresses](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getScheduleProgresses)
 * 
 * Fetches all current assignments to the currently logged-in profile.
 * 
 * @param {String} _schedule_name_or_id
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array[String]} [_tags]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_schedule_progresses(_schedule_name_or_id, _offset = undefined, _count = undefined, _tags = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_schedules
 * @desc > **Elements Operation**: [getSchedules](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getSchedules)
 * 
 * Searches all schedules in the system and returning a number of matches against the given search filter, delimited by the offset and count.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Array[String]} [_tags]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_schedules(_offset = undefined, _count = undefined, _tags = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_schedule
 * @desc > **Elements Operation**: [createSchedule](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createSchedule)
 * 
 * Supplying a schedule object, this will create a new schedule with a newly assigned unique id. The Schedule representation returned in the response body is a representation of the Schedule as persisted with a unique identifier assigned and with its fields properly normalized. The supplied schedule object submitted with the request must have a name property that is unique across all items.
 * 
 * @param {Struct.ElementsCreateScheduleRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_schedule(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_schedule_by_name_or_id
 * @desc > **Elements Operation**: [getScheduleByNameOrId](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getScheduleByNameOrId)
 * 
 * Looks up a schedule by the passed in identifier.
 * 
 * @param {String} _schedule_name_or_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_schedule_by_name_or_id(_schedule_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_update_schedule
 * @desc > **Elements Operation**: [updateSchedule](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateSchedule)
 * 
 * Supplying a schedule, this will update the Schedule identified by the name or ID in the path with contents from the passed in request body. 
 * 
 * @param {String} _schedule_name_or_id
 * @param {Struct.ElementsUpdateScheduleRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_schedule(_schedule_name_or_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_schedule
 * @desc > **Elements Operation**: [deleteSchedule](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteSchedule)
 * 
 * Deletes a schedule by the passed in identifier.
 * 
 * @param {String} _schedule_name_or_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_schedule(_schedule_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_create_fcm_registration
 * @desc > **Elements Operation**: [createFcmRegistration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createFcmRegistration)
 * 
 * Supplying FCM registration token, this will create a new token based on the information supplied to the endpoint. The response will contain the token as it was written to the database. Clients may subsequently update the token string with new values as they are issued by Firebase.
 * 
 * @param {Struct.ElementsFCMRegistration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_fcm_registration(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_update_registration
 * @desc > **Elements Operation**: [updateRegistration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateRegistration)
 * 
 * Supplying FCM registration token, this will update the token string with the supplied values. Clients may update the same registration with a different token issued with Firebase if they wish to simply retain the association with the 
 * 
 * @param {String} _fcm_registration_id
 * @param {Struct.ElementsFCMRegistration} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_registration(_fcm_registration_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_fcm_registration
 * @desc > **Elements Operation**: [deleteFcmRegistration](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteFcmRegistration)
 * 
 * @param {String} _fcm_registration_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_fcm_registration(_fcm_registration_id, _callback = undefined)
{
}

/**
 * @func elements_get_profiles
 * @desc > **Elements Operation**: [getProfiles](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getProfiles)
 * 
 * Searches all users in the system and returning the metadata for all matches against the given search filter. Optionally provide `before` and `after` params to specify a time range [`after`, `before`] for last-logged-in profiles matching in that range (inclusive). If `before` is not specified (or a negative number is provided) but `after` is valid, the query will return all records successive to the given `after` timestamp. Similarly, if `after` is not specified (or a negative number is provided) but `before` is valid, the query will return all records preceding the given `before` timestamp. Note that search and time range parameters currently cannot be combined in the same query.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Real} [_before]
 * @param {Real} [_after]
 * @param {String} [_application]
 * @param {String} [_user]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_profiles(_offset = undefined, _count = undefined, _before = undefined, _after = undefined, _application = undefined, _user = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_profile
 * @desc > **Elements Operation**: [createProfile](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createProfile)
 * 
 * Supplying the create profile request, this will update the profile with the new information supplied in the body of the request. This will fire an event, dev.getelements.elements.service.profile.created, from the event manifest.
 * 
 * @param {Struct.ElementsCreateProfileRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_profile(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_update_profile
 * @desc > **Elements Operation**: [updateProfile](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateProfile)
 * 
 * Supplying an update request will attempt to update the profile. The call will return the profile as it was written to the database.
 * 
 * @param {String} _profile_id
 * @param {Struct.ElementsUpdateProfileRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_profile(_profile_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_deactivate_profile
 * @desc > **Elements Operation**: [deactivateProfile](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deactivateProfile)
 * 
 * Deletes and permanently removes the Profile from the server. The server maykeep some record around to preserve relationships and references, but this profile will not be accessible again until it is recreated.
 * 
 * @param {String} _profile_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_deactivate_profile(_profile_id, _callback = undefined)
{
}

/**
 * @func elements_get_current_profile
 * @desc > **Elements Operation**: [getCurrentProfile](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getCurrentProfile)
 * 
 * This is a special endpoint which fetches the current Profile based on current auth credentials. This considers the currently loggged-in Dser as well as the Application or Application Configuration against which the User is operating. This may not be availble, in which case the appopraite error is rasied.
 * 
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_current_profile(_callback = undefined)
{
}

/**
 * @func elements_get_profile
 * @desc > **Elements Operation**: [getProfile](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getProfile)
 * 
 * Gets a specific profile by profile ID.
 * 
 * @param {String} _name
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_profile(_name, _callback = undefined)
{
}

/**
 * @func elements_update_profile_image
 * @desc > **Elements Operation**: [updateProfileImage](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateProfileImage)
 * 
 * @param {String} _profile_id
 * @param {Struct.ElementsUpdateProfileImageRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_profile_image(_profile_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_save_data_documents
 * @desc > **Elements Operation**: [getSaveDataDocuments](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getSaveDataDocuments)
 * 
 * Gets all save data documents available to the user.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_user_id]
 * @param {String} [_profile_id]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_save_data_documents(_offset = undefined, _count = undefined, _user_id = undefined, _profile_id = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_save_document
 * @desc > **Elements Operation**: [createSaveDocument](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createSaveDocument)
 * 
 * Gets a single save data document.
 * 
 * @param {Struct.ElementsCreateSaveDataDocumentRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_save_document(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_update_save_document
 * @desc > **Elements Operation**: [updateSaveDocument](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateSaveDocument)
 * 
 * Gets a single save data document.
 * 
 * @param {String} _save_data_document_id
 * @param {Struct.ElementsUpdateSaveDataDocumentRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_save_document(_save_data_document_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_save_document
 * @desc > **Elements Operation**: [deleteSaveDocument](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteSaveDocument)
 * 
 * @param {String} _save_data_document_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_save_document(_save_data_document_id, _callback = undefined)
{
}

/**
 * @func elements_get_profile_save_data_document_by_slot
 * @desc > **Elements Operation**: [getProfileSaveDataDocumentBySlot](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getProfileSaveDataDocumentBySlot)
 * 
 * Gets a single save data document based on Profile ID and slot. This is a convenience method which allows the client to fetch a save data based on slot and profile id.
 * 
 * @param {String} _profile_id
 * @param {Real} _slot
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_profile_save_data_document_by_slot(_profile_id, _slot, _callback = undefined)
{
}

/**
 * @func elements_get_save_data_document
 * @desc > **Elements Operation**: [getSaveDataDocument](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getSaveDataDocument)
 * 
 * Gets a single save data document.
 * 
 * @param {String} _id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_save_data_document(_id, _callback = undefined)
{
}

/**
 * @func elements_get_user_save_data_document_by_slot
 * @desc > **Elements Operation**: [getUserSaveDataDocumentBySlot](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getUserSaveDataDocumentBySlot)
 * 
 * Gets a single save data document based on UserID and slot. This is a convenience method which allows the client to fetch a save data based on slot an user id.
 * 
 * @param {String} _user_id
 * @param {Real} _slot
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_user_save_data_document_by_slot(_user_id, _slot, _callback = undefined)
{
}

/**
 * @func elements_get_metadata_specs
 * @desc > **Elements Operation**: [getMetadataSpecs](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getMetadataSpecs)
 * 
 * Gets a pagination of Metadata Specs for the given query.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_metadata_specs(_offset = undefined, _count = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_metadata_spec
 * @desc > **Elements Operation**: [createMetadataSpec](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createMetadataSpec)
 * 
 * Creates a new Metadata Spec definition.
 * 
 * @param {Struct.ElementsCreateMetadataSpecRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_metadata_spec(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_update_metadata_spec
 * @desc > **Elements Operation**: [updateMetadataSpec](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateMetadataSpec)
 * 
 * Updates a MetadataSpec with the specified id.
 * 
 * @param {String} _metadata_spec_id
 * @param {Struct.ElementsUpdateMetadataSpecRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_metadata_spec(_metadata_spec_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_delete_metadata_spec
 * @desc > **Elements Operation**: [deleteMetadataSpec](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deleteMetadataSpec)
 * 
 * Deletes a MetadataSpec with the specified id.
 * 
 * @param {String} _metadata_spec_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_delete_metadata_spec(_metadata_spec_id, _callback = undefined)
{
}

/**
 * @func elements_get_editor_schema
 * @desc > **Elements Operation**: [getEditorSchema](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getEditorSchema)
 * 
 * Gets a specific Metadata Editor Schema backed by the supplied MetadataSpec by name.
 * 
 * @param {String} _metadata_spec_name
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_editor_schema(_metadata_spec_name, _callback = undefined)
{
}

/**
 * @func elements_get_json_schema
 * @desc > **Elements Operation**: [getJsonSchema](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getJsonSchema)
 * 
 * Gets a specific JSON Schema backed by the supplied MetadataSpec by name.
 * 
 * @param {String} _metadata_spec_name
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_json_schema(_metadata_spec_name, _callback = undefined)
{
}

/**
 * @func elements_get_metadata_spec
 * @desc > **Elements Operation**: [getMetadataSpec](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getMetadataSpec)
 * 
 * Gets a specific MetadataSpec by name or Id.
 * 
 * @param {String} _metadata_spec_name_or_id
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_metadata_spec(_metadata_spec_name_or_id, _callback = undefined)
{
}

/**
 * @func elements_create_mock_session
 * @desc > **Elements Operation**: [createMockSession](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createMockSession)
 * 
 * Begins a session by accepting a mock session request. The request must be made with an authenticated super-user.
 * 
 * @param {Struct.ElementsMockSessionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_mock_session(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_blacklist_session
 * @desc > **Elements Operation**: [blacklistSession](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/blacklistSession)
 * 
 * @param {String} _session_secret
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_blacklist_session(_session_secret, _callback = undefined)
{
}

/**
 * @func elements_create_username_password_session
 * @desc > **Elements Operation**: [createUsernamePasswordSession](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createUsernamePasswordSession)
 * 
 * Begins a session by accepting both the UserID and the Passoword. Upon successful completion of this call, the user will be added to the current HTTP session. If the session expires, the user will have to reestablish the session by supplying credentials again. This is most useful for applications delivered in a web page.
 * 
 * @param {Struct.ElementsUsernamePasswordSessionRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_username_password_session(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_server_health
 * @desc > **Elements Operation**: [getServerHealth](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getServerHealth)
 * 
 * Performs the health check for the server. What this actually does is deployment and implementation specific. However, any successful response code should indicate that the service is capable of servicing requests. Any unsuccessful error codes should indicate that the instance has internal issues and should be taken offline.
 * 
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_server_health(_callback = undefined)
{
}

/**
 * @func elements_get_version
 * @desc > **Elements Operation**: [getVersion](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getVersion)
 * 
 * Returns information about the current server version. This should always return theversion metadata. This information is only known in packaged releases.
 * 
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_version(_callback = undefined)
{
}

/**
 * @func elements_sign_up_user
 * @desc > **Elements Operation**: [signUpUser](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/signUpUser)
 * 
 * Supplying the user create request object, this will create a new user.
 * 
 * @param {Struct.ElementsUserCreateRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_sign_up_user(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_users
 * @desc > **Elements Operation**: [getUsers](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getUsers)
 * 
 * Searches all users in the system and returning the metadata for all matches against the given search filter.
 * 
 * @param {Real} [_offset]
 * @param {Real} [_count]
 * @param {String} [_search]
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_users(_offset = undefined, _count = undefined, _search = undefined, _callback = undefined)
{
}

/**
 * @func elements_create_user
 * @desc > **Elements Operation**: [createUser](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/createUser)
 * 
 * Supplying the user object, this will update the user with the new information supplied in the body of the request. Optionally, the user's password may be provided in the User object.
 * 
 * @param {Struct.ElementsUserCreateRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_create_user(_body = undefined, _callback = undefined)
{
}

/**
 * @func elements_get_user
 * @desc > **Elements Operation**: [getUser](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getUser)
 * 
 * Gets a specific user by name, email, or unique user ID.
 * 
 * @param {String} _name
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_user(_name, _callback = undefined)
{
}

/**
 * @func elements_deactivate_user
 * @desc > **Elements Operation**: [deactivateUser](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/deactivateUser)
 * 
 * Deletes and permanently removes the user from the server. The server may keep some metadata as necessary to avoid data inconsistency. However, the user has been deleted from the client standpoint and will not be accessible through any of the existing APIs.
 * 
 * @param {String} _name
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_deactivate_user(_name, _callback = undefined)
{
}

/**
 * @func elements_get_current_user
 * @desc > **Elements Operation**: [getCurrentUser](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/getCurrentUser)
 * 
 * A special endpoint used to get the current user for the request. The current user is typically associated with the session but may be derived any other way. This is essentially an alias for using GET /user/myUserId
 * 
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_get_current_user(_callback = undefined)
{
}

/**
 * @func elements_update_user
 * @desc > **Elements Operation**: [updateUser](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateUser)
 * 
 * Supplying the user object, this will update the user with the new information supplied in the body of the request. Optionally, the user's password may be provided in the User object.
 * 
 * @param {String} _user_id
 * @param {Struct.ElementsUserUpdateRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_user(_user_id, _body = undefined, _callback = undefined)
{
}

/**
 * @func elements_update_user_password
 * @desc > **Elements Operation**: [updateUserPassword](https://namazustudios.com/rest/api/?version=3.3.10/#/operations/updateUserPassword)
 * 
 * Supplying the UserUpdatePasswordRequest, this will attempt to update the user's password only if they supply the correct existing password.
 * 
 * @param {String} _user_id
 * @param {Struct.ElementsUserUpdatePasswordRequest} [_body] The body to be included in the http request.
 * @param {Function} [_callback] The function - with signature (status, data, request) - that will be executed upon request completion.
 * @func_end
 */
function elements_update_user_password(_user_id, _body = undefined, _callback = undefined)
{
}