// #####################################################################
// # Schema Definitions (auto-generated, DO NOT EDIT)
// #####################################################################

/**
 * @func ElementsAccessPermissions(_read, _write, _delete)
 * Permission associated with LargeObject.
 * @param {Struct.ElementsSubjects} _read Subjects allowed to delete
 * @param {Struct.ElementsSubjects} _write Subjects allowed to delete
 * @param {Struct.ElementsSubjects} _delete Subjects allowed to delete
 */
function ElementsAccessPermissions(_read, _write, _delete) constructor
{
    read = _read;
    write = _write;
    self[$ "delete"] = _delete;
}

/**
 * @func ElementsAdvancedInventoryItemQuantityAdjustment(_user_id, _quantity_delta, _priority = undefined)
 * @param {String} _user_id The User whose inventory to modify.ß
 * @param {Real} _quantity_delta The delta to be applied to the inventory item quantity (positive or negative)
 * @param {Real} [_priority] The priority slot for the item.
 */
function ElementsAdvancedInventoryItemQuantityAdjustment(_user_id, _quantity_delta, _priority = undefined) constructor
{
    userId = _user_id;
    quantityDelta = _quantity_delta;
    priority = _priority;
}

/**
 * @func ElementsApplication(_name, _id = undefined, _description = undefined, _git_branch = undefined, _script_repo_url = undefined, _http_documentation_url = undefined, _http_documentation_ui_url = undefined, _http_tunnel_endpoint_url = undefined, _attributes = undefined, _application_configuration = undefined, _max_profiles = undefined, _auto_create_profile = undefined, _authoritative_profile_picture = undefined, _display_name_regex = undefined)
 * @param {String} _name
 * @param {String} [_id]
 * @param {String} [_description]
 * @param {String} [_git_branch]
 * @param {String} [_script_repo_url]
 * @param {String} [_http_documentation_url]
 * @param {String} [_http_documentation_ui_url]
 * @param {String} [_http_tunnel_endpoint_url]
 * @param {Struct.ElementsApplicationAttributes} [_attributes]
 * @param {Struct.ElementsApplicationConfiguration} [_application_configuration]
 * @param {Real} [_max_profiles] The maximum number of profiles a user may create for this application. If unspecified, defaults to 1.
 * @param {Bool} [_auto_create_profile] Whether a user's primary profile for this application should be created automatically when the user is created. If unspecified, defaults to true.
 * @param {Bool} [_authoritative_profile_picture] If true, a user cannot edit their own profile picture for this application via the REST API -- it must be set by backend/Element code instead. If false (the default), users may edit their own profile picture via the REST API.
 * @param {String} [_display_name_regex] A Java regular expression that a profile's display name must match for this application, or the profile create/update is rejected. If blank or unspecified, no additional check is performed.
 */
function ElementsApplication(_name, _id = undefined, _description = undefined, _git_branch = undefined, _script_repo_url = undefined, _http_documentation_url = undefined, _http_documentation_ui_url = undefined, _http_tunnel_endpoint_url = undefined, _attributes = undefined, _application_configuration = undefined, _max_profiles = undefined, _auto_create_profile = undefined, _authoritative_profile_picture = undefined, _display_name_regex = undefined) constructor
{
    name = _name;
    id = _id;
    description = _description;
    gitBranch = _git_branch;
    scriptRepoUrl = _script_repo_url;
    httpDocumentationUrl = _http_documentation_url;
    httpDocumentationUiUrl = _http_documentation_ui_url;
    httpTunnelEndpointUrl = _http_tunnel_endpoint_url;
    attributes = _attributes;
    applicationConfiguration = _application_configuration;
    maxProfiles = _max_profiles;
    autoCreateProfile = _auto_create_profile;
    authoritativeProfilePicture = _authoritative_profile_picture;
    displayNameRegex = _display_name_regex;
}

/**
 * @func ElementsApplicationAttributes()
 */
function ElementsApplicationAttributes() constructor
{
}

/**
 * @func ElementsApplicationConfiguration(_name, _type, _parent, _id = undefined, _description = undefined)
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {Struct.ElementsApplication} _parent
 * @param {String} [_id] The database assigned ID for the application configuration.
 * @param {String} [_description]
 */
function ElementsApplicationConfiguration(_name, _type, _parent, _id = undefined, _description = undefined) constructor
{
    name = _name;
    type = _type;
    parent = _parent;
    id = _id;
    description = _description;
}

/**
 * @func ElementsAuthScheme(_audience, _public_key, _algorithm, _user_level, _tags, _allowed_issuers, _id = undefined)
 * The full JSON response as described in AuthScheme
 * @param {String} _audience A unique name used to identify the scheme within the instance of Elements.
 * @param {String} _public_key A base-64 encoded string representing an x509 encoded public key.
 * @param {String} _algorithm The digital signature matching the public key format.
 * @param {String} _user_level The highest permitted user level this particular scheme will authorize.
 * @param {Array<String>} _tags The tags used to tag this auth scheme.
 * @param {Array<String>} _allowed_issuers A list of issuers allowed to use this scheme.
 * @param {String} [_id] The unique ID of the auth scheme.
 */
function ElementsAuthScheme(_audience, _public_key, _algorithm, _user_level, _tags, _allowed_issuers, _id = undefined) constructor
{
    audience = _audience;
    publicKey = _public_key;
    algorithm = _algorithm;
    userLevel = _user_level;
    tags = _tags;
    allowedIssuers = _allowed_issuers;
    id = _id;
}

/**
 * @func ElementsBodyPart(_content_disposition = undefined, _entity = undefined, _headers = undefined, _media_type = undefined, _message_body_workers = undefined, _parent = undefined, _providers = undefined, _parameterized_headers = undefined)
 * @param {Struct.ElementsContentDisposition} [_content_disposition]
 * @param {Struct} [_entity]
 * @param {Struct.ElementsBodyPartHeaders} [_headers]
 * @param {Struct.ElementsMediaType} [_media_type]
 * @param {Struct.ElementsMessageBodyWorkers} [_message_body_workers]
 * @param {Struct.ElementsMultiPart} [_parent]
 * @param {Struct.ElementsProviders} [_providers]
 * @param {Struct.ElementsBodyPartParameterizedHeaders} [_parameterized_headers]
 */
function ElementsBodyPart(_content_disposition = undefined, _entity = undefined, _headers = undefined, _media_type = undefined, _message_body_workers = undefined, _parent = undefined, _providers = undefined, _parameterized_headers = undefined) constructor
{
    contentDisposition = _content_disposition;
    entity = _entity;
    headers = _headers;
    mediaType = _media_type;
    messageBodyWorkers = _message_body_workers;
    parent = _parent;
    providers = _providers;
    parameterizedHeaders = _parameterized_headers;
}

/**
 * @func ElementsBodyPartHeaders(_empty = undefined)
 * @param {Bool} [_empty]
 */
function ElementsBodyPartHeaders(_empty = undefined) constructor
{
    empty = _empty;
}

/**
 * @func ElementsBodyPartParameterizedHeaders(_empty = undefined)
 * @param {Bool} [_empty]
 */
function ElementsBodyPartParameterizedHeaders(_empty = undefined) constructor
{
    empty = _empty;
}

/**
 * @func ElementsBuildIndexRequest(_plan = undefined, _to_index = undefined)
 * Starts a new indexing operation.
 * @param {Bool} [_plan] Set to true to plan the index building.
 * @param {Array<String>} [_to_index] Set to true to perform the index building.
 */
function ElementsBuildIndexRequest(_plan = undefined, _to_index = undefined) constructor
{
    plan = _plan;
    toIndex = _to_index;
}

/**
 * @func ElementsCallbackDefinition(_method, _service)
 * Defines a script method and a module to invoke.
 * @param {String} _method Specifies the method to invoke.
 * @param {Struct.ElementsElementServiceReference} _service Describes the matchmaker (dev.getelements.elements.sdk.dao.Matchmaker) to use for this configuration.
 */
function ElementsCallbackDefinition(_method, _service) constructor
{
    self[$ "method"] = _method;
    service = _service;
}

/**
 * @func ElementsCodegenRequest(_element_spec_url = undefined, _language = undefined, _package_name = undefined, _options = undefined)
 * @param {String} [_element_spec_url] The URL for the Element OpenApi spec. Usually /app/rest/elementName/openapi.json
 * @param {String} [_language] The target language that you want to generate the code to.
 * @param {String} [_package_name] The package name to set the generated code to. E.g. com.mycompany.mygame.Elements
 * @param {String} [_options] Any additional options that you want to pass to the generator
 */
function ElementsCodegenRequest(_element_spec_url = undefined, _language = undefined, _package_name = undefined, _options = undefined) constructor
{
    elementSpecUrl = _element_spec_url;
    language = _language;
    packageName = _package_name;
    options = _options;
}

/**
 * @func ElementsCompletePasswordResetRequest(_token, _password)
 * Request to complete a password reset using the token from the reset email.
 * @param {String} _token The opaque reset token from the password reset email.
 * @param {String} _password The new password.
 */
function ElementsCompletePasswordResetRequest(_token, _password) constructor
{
    token = _token;
    password = _password;
}

/**
 * @func ElementsContentDisposition(_type = undefined, _parameters = undefined, _file_name = undefined, _creation_date = undefined, _modification_date = undefined, _read_date = undefined, _size = undefined)
 * @param {String} [_type]
 * @param {Struct.ElementsContentDispositionParameters} [_parameters]
 * @param {String} [_file_name]
 * @param {String} [_creation_date]
 * @param {String} [_modification_date]
 * @param {String} [_read_date]
 * @param {Real} [_size]
 */
function ElementsContentDisposition(_type = undefined, _parameters = undefined, _file_name = undefined, _creation_date = undefined, _modification_date = undefined, _read_date = undefined, _size = undefined) constructor
{
    type = _type;
    parameters = _parameters;
    fileName = _file_name;
    creationDate = _creation_date;
    modificationDate = _modification_date;
    readDate = _read_date;
    size = _size;
}

/**
 * @func ElementsContentDispositionParameters()
 */
function ElementsContentDispositionParameters() constructor
{
}

/**
 * @func ElementsCreateAdvancedInventoryItemRequest(_user_id, _item_id, _quantity = undefined, _priority = undefined)
 * @param {String} _user_id The User ID
 * @param {String} _item_id The item to reference.
 * @param {Real} [_quantity] The quantity of the Item in inventory
 * @param {Real} [_priority] The priority slot for the item.
 */
function ElementsCreateAdvancedInventoryItemRequest(_user_id, _item_id, _quantity = undefined, _priority = undefined) constructor
{
    userId = _user_id;
    itemId = _item_id;
    quantity = _quantity;
    priority = _priority;
}

/**
 * @func ElementsCreateAppleIapReceipt(_receipt_data, _create_apple_iap_receipt_environment = undefined)
 * @param {String} _receipt_data The base64-encoded string of the raw IAP receipt.
 * @param {String} [_create_apple_iap_receipt_environment]
 */
function ElementsCreateAppleIapReceipt(_receipt_data, _create_apple_iap_receipt_environment = undefined) constructor
{
    receiptData = _receipt_data;
    createAppleIapReceiptEnvironment = _create_apple_iap_receipt_environment;
}

/**
 * @func ElementsCreateApplicationRequest(_name, _description = undefined, _attributes = undefined, _max_profiles = undefined, _auto_create_profile = undefined, _authoritative_profile_picture = undefined, _display_name_regex = undefined)
 * @param {String} _name
 * @param {String} [_description]
 * @param {Struct.ElementsCreateApplicationRequestAttributes} [_attributes]
 * @param {Real} [_max_profiles] The maximum number of profiles a user may create for this application. If unspecified, defaults to 1.
 * @param {Bool} [_auto_create_profile] Whether a user's primary profile for this application should be created automatically when the user is created. If unspecified, defaults to true.
 * @param {Bool} [_authoritative_profile_picture] If true, a user cannot edit their own profile picture for this application via the REST API -- it must be set by backend/Element code instead. If false (the default), users may edit their own profile picture via the REST API.
 * @param {String} [_display_name_regex] A Java regular expression that a profile's display name must match for this application, or the profile create/update is rejected. If blank or unspecified, no additional check is performed.
 */
function ElementsCreateApplicationRequest(_name, _description = undefined, _attributes = undefined, _max_profiles = undefined, _auto_create_profile = undefined, _authoritative_profile_picture = undefined, _display_name_regex = undefined) constructor
{
    name = _name;
    description = _description;
    attributes = _attributes;
    maxProfiles = _max_profiles;
    autoCreateProfile = _auto_create_profile;
    authoritativeProfilePicture = _authoritative_profile_picture;
    displayNameRegex = _display_name_regex;
}

/**
 * @func ElementsCreateApplicationRequestAttributes()
 */
function ElementsCreateApplicationRequestAttributes() constructor
{
}

/**
 * @func ElementsCreateAuthSchemeRequest(_audience, _algorithm, _user_level, _tags, _allowed_issuers, _public_key = undefined)
 * Represents a request to create an Auth Scheme for an Application.
 * @param {String} _audience The JWT audience for the scheme. Must be unique.
 * @param {String} _algorithm
 * @param {String} _user_level The highest permitted user level this particular scheme will authorize.
 * @param {Array<String>} _tags A list of tags used to index the auth scheme.
 * @param {Array<String>} _allowed_issuers The list of issuers allowed to use this scheme.
 * @param {String} [_public_key] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 */
function ElementsCreateAuthSchemeRequest(_audience, _algorithm, _user_level, _tags, _allowed_issuers, _public_key = undefined) constructor
{
    audience = _audience;
    algorithm = _algorithm;
    userLevel = _user_level;
    tags = _tags;
    allowedIssuers = _allowed_issuers;
    publicKey = _public_key;
}

/**
 * @func ElementsCreateAuthSchemeResponse(_scheme, _public_key, _private_key = undefined)
 * Represents a response from creating an Auth Scheme for an Application.
 * @param {Struct.ElementsAuthScheme} _scheme The full JSON response as described in AuthScheme
 * @param {String} _public_key The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @param {String} [_private_key] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/PKCS8EncodedKeySpec.html for details on the specifics of the format.
 */
function ElementsCreateAuthSchemeResponse(_scheme, _public_key, _private_key = undefined) constructor
{
    scheme = _scheme;
    publicKey = _public_key;
    privateKey = _private_key;
}

/**
 * @func ElementsCreateDeploymentRequest(_version, _revision)
 * @param {String} _version
 * @param {String} _revision
 */
function ElementsCreateDeploymentRequest(_version, _revision) constructor
{
    version = _version;
    revision = _revision;
}

/**
 * @func ElementsCreateDistinctInventoryItemRequest(_item_id, _user_id = undefined, _profile_id = undefined, _metadata = undefined)
 * @param {String} _item_id The digital goods item id.
 * @param {String} [_user_id] The id of the User owning this inventory item id.
 * @param {String} [_profile_id] The the profileid of hte Profile owning this inventory item.
 * @param {Struct.ElementsCreateDistinctInventoryItemRequestMetadata} [_metadata]
 */
function ElementsCreateDistinctInventoryItemRequest(_item_id, _user_id = undefined, _profile_id = undefined, _metadata = undefined) constructor
{
    itemId = _item_id;
    userId = _user_id;
    profileId = _profile_id;
    metadata = _metadata;
}

/**
 * @func ElementsCreateDistinctInventoryItemRequestMetadata()
 */
function ElementsCreateDistinctInventoryItemRequestMetadata() constructor
{
}

/**
 * @func ElementsCreateElementDeploymentRequest(_application_name_or_id = undefined, _elements = undefined, _packages = undefined, _use_default_repositories = undefined, _repositories = undefined, _path_attributes = undefined, _path_spi_builtins = undefined, _path_spi_class_paths = undefined, _state = undefined)
 * Request to create a new Element with specified artifacts and their repositories. All artifacts specified must exist in the repositories provided. Additionally, the repositories must include any dependencies required by the artifacts and all dependencies of those dependencies, and so on. The system will resolve all dependencies transitively.
 * @param {String} [_application_name_or_id] The application name or ID. May be null. If null, then the Element will be scoped to the global or root element registry making it visible to all Applications. If specific to an Application, then this will be be visible only to Elements within that Application.
 * @param {Array<Struct.ElementsElementPathDefinition>} [_elements] List of Element definitions specifying the classpaths and artifacts for each Element to deploy. Each definition can specify either Maven artifact coordinates (API, SPI, Element lists) or a single ELM artifact coordinate.
 * @param {Array<Struct.ElementsElementPackageDefinition>} [_packages] List of Element package definitions specifying ELM artifacts to deploy with per-path attribute configuration. Each package can contain multiple elements with individualized attribute mappings.
 * @param {Bool} [_use_default_repositories] Flag indicating whether to use the default artifact repositories in addition to any provided. The actual repositories included will be those defined by the system's default configuration at deployment time.
 * @param {Array<Struct.ElementsElementArtifactRepository>} [_repositories] List of artifact repositories to use for resolving the specified artifacts and their dependencies. All artifacts and their dependencies must be found within these repositories.
 * @param {Struct.ElementsCreateElementDeploymentRequestPathAttributes} [_path_attributes] Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 * @param {Struct.ElementsCreateElementDeploymentRequestPathSpiBuiltins} [_path_spi_builtins] Map of element paths to builtin SPI configurations. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @param {Struct.ElementsCreateElementDeploymentRequestPathSpiClassPaths} [_path_spi_class_paths] Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @param {String} [_state] The state of the deployment.
 */
function ElementsCreateElementDeploymentRequest(_application_name_or_id = undefined, _elements = undefined, _packages = undefined, _use_default_repositories = undefined, _repositories = undefined, _path_attributes = undefined, _path_spi_builtins = undefined, _path_spi_class_paths = undefined, _state = undefined) constructor
{
    applicationNameOrId = _application_name_or_id;
    elements = _elements;
    packages = _packages;
    useDefaultRepositories = _use_default_repositories;
    repositories = _repositories;
    pathAttributes = _path_attributes;
    pathSpiBuiltins = _path_spi_builtins;
    pathSpiClassPaths = _path_spi_class_paths;
    state = _state;
}

/**
 * @func ElementsCreateElementDeploymentRequestPathAttributes()
 * Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 */
function ElementsCreateElementDeploymentRequestPathAttributes() constructor
{
}

/**
 * @func ElementsCreateElementDeploymentRequestPathAttributesAp()
 * Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 */
function ElementsCreateElementDeploymentRequestPathAttributesAp() constructor
{
}

/**
 * @func ElementsCreateElementDeploymentRequestPathSpiBuiltins()
 * Map of element paths to builtin SPI configurations. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 */
function ElementsCreateElementDeploymentRequestPathSpiBuiltins() constructor
{
}

/**
 * @func ElementsCreateElementDeploymentRequestPathSpiClassPaths()
 * Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 */
function ElementsCreateElementDeploymentRequestPathSpiClassPaths() constructor
{
}

/**
 * @func ElementsCreateFollowerRequest(_followed_id)
 * Represents a request to follow a player Follower.
 * @param {String} _followed_id The profile id which to follow.
 */
function ElementsCreateFollowerRequest(_followed_id) constructor
{
    followedId = _followed_id;
}

/**
 * @func ElementsCreateGooglePlayIapReceipt(_package_name, _product_id, _purchase_token)
 * @param {String} _package_name The package name of the app. Note that this may be different from the applicationId/uniqueIdentifier which is why it should be provided with the request.
 * @param {String} _product_id The product id purchased by the user, e.g. `com.namazustudios.example_app.pack_10_coins`.
 * @param {String} _purchase_token The token issued to the user upon successful Google Play purchase transaction.
 */
function ElementsCreateGooglePlayIapReceipt(_package_name, _product_id, _purchase_token) constructor
{
    packageName = _package_name;
    productId = _product_id;
    purchaseToken = _purchase_token;
}

/**
 * @func ElementsCreateItemRequest(_name, _display_name, _description, _category, _tags = undefined, _metadata_spec_id = undefined, _metadata = undefined, _public_visible = undefined, _metadata_spec = undefined)
 * @param {String} _name
 * @param {String} _display_name
 * @param {String} _description
 * @param {String} _category
 * @param {Array<String>} [_tags]
 * @param {String} [_metadata_spec_id]
 * @param {Struct.ElementsCreateItemRequestMetadata} [_metadata]
 * @param {Bool} [_public_visible]
 * @param {String} [_metadata_spec]
 */
function ElementsCreateItemRequest(_name, _display_name, _description, _category, _tags = undefined, _metadata_spec_id = undefined, _metadata = undefined, _public_visible = undefined, _metadata_spec = undefined) constructor
{
    name = _name;
    displayName = _display_name;
    description = _description;
    category = _category;
    tags = _tags;
    metadataSpecId = _metadata_spec_id;
    metadata = _metadata;
    publicVisible = _public_visible;
    metadataSpec = _metadata_spec;
}

/**
 * @func ElementsCreateItemRequestMetadata()
 */
function ElementsCreateItemRequestMetadata() constructor
{
}

/**
 * @func ElementsCreateLargeObjectFromUrlRequest(_mime_type, _read, _write, _delete, _file_url)
 * @param {String} _mime_type The MIME type associated with the object.
 * @param {Struct.ElementsSubjectRequest} _read Specifies the Subjects which can delete the LargeObject.
 * @param {Struct.ElementsSubjectRequest} _write Specifies the Subjects which can delete the LargeObject.
 * @param {Struct.ElementsSubjectRequest} _delete Specifies the Subjects which can delete the LargeObject.
 * @param {String} _file_url List with image URLs
 */
function ElementsCreateLargeObjectFromUrlRequest(_mime_type, _read, _write, _delete, _file_url) constructor
{
    mimeType = _mime_type;
    read = _read;
    write = _write;
    self[$ "delete"] = _delete;
    fileUrl = _file_url;
}

/**
 * @func ElementsCreateLargeObjectRequest(_mime_type, _read, _write, _delete)
 * @param {String} _mime_type The MIME type associated with the object.
 * @param {Struct.ElementsSubjectRequest} _read Specifies the Subjects which can delete the LargeObject.
 * @param {Struct.ElementsSubjectRequest} _write Specifies the Subjects which can delete the LargeObject.
 * @param {Struct.ElementsSubjectRequest} _delete Specifies the Subjects which can delete the LargeObject.
 */
function ElementsCreateLargeObjectRequest(_mime_type, _read, _write, _delete) constructor
{
    mimeType = _mime_type;
    read = _read;
    write = _write;
    self[$ "delete"] = _delete;
}

/**
 * @func ElementsCreateLeaderboardRequest(_name, _time_strategy_type, _score_strategy_type, _title, _score_units, _first_epoch_timestamp = undefined, _epoch_interval = undefined)
 * @param {String} _name The name of the leaderboard.  This must be unique across all leaderboards.
 * @param {String} _time_strategy_type The time strategy for the leaderboard. Current options are ALL_TIME and EPOCHAL.
 * @param {String} _score_strategy_type The score strategy for the leaderboard. Current options are OVERWRITE_IF_GREATER and ACCUMULATE.
 * @param {String} _title The user-presentable name or title for for the leaderboard.
 * @param {String} _score_units The units-of measure for the score type of the leaderboard.
 * @param {Real} [_first_epoch_timestamp] The time at which the leaderboard epoch intervals should begin (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then epochInterval must also be provided.
 * @param {Real} [_epoch_interval] The duration for a leaderboard epoch interval (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then firstEpochTimestamp must also be provided.
 */
function ElementsCreateLeaderboardRequest(_name, _time_strategy_type, _score_strategy_type, _title, _score_units, _first_epoch_timestamp = undefined, _epoch_interval = undefined) constructor
{
    name = _name;
    timeStrategyType = _time_strategy_type;
    scoreStrategyType = _score_strategy_type;
    title = _title;
    scoreUnits = _score_units;
    firstEpochTimestamp = _first_epoch_timestamp;
    epochInterval = _epoch_interval;
}

/**
 * @func ElementsCreateMetadataRequest(_name, _metadata = undefined, _metadata_spec = undefined, _access_level = undefined)
 * @param {String} _name A unique name for the metadata object.
 * @param {Struct.ElementsCreateMetadataRequestMetadata} [_metadata] An object containing the metadata payload as key-value pairs.
 * @param {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 * @param {String} [_access_level] The minimum level of access required to view this metadata.
 */
function ElementsCreateMetadataRequest(_name, _metadata = undefined, _metadata_spec = undefined, _access_level = undefined) constructor
{
    name = _name;
    metadata = _metadata;
    metadataSpec = _metadata_spec;
    accessLevel = _access_level;
}

/**
 * @func ElementsCreateMetadataRequestMetadata()
 * An object containing the metadata payload as key-value pairs.
 */
function ElementsCreateMetadataRequestMetadata() constructor
{
}

/**
 * @func ElementsCreateMetadataSpecRequest(_properties, _name = undefined, _type = undefined)
 * Represents a request to create a MetadataSpec definition.
 * @param {Array<Struct.ElementsMetadataSpecProperty>} _properties The token template tabs to create.
 * @param {String} [_name] The name of the metadata spec.
 * @param {String} [_type] The type of the metadata spec.
 */
function ElementsCreateMetadataSpecRequest(_properties, _name = undefined, _type = undefined) constructor
{
    properties = _properties;
    name = _name;
    type = _type;
}

/**
 * @func ElementsCreateMissionRequest(_name, _display_name, _description, _tags = undefined, _steps = undefined, _final_repeat_step = undefined, _metadata = undefined)
 * @param {String} _name The name of the mission
 * @param {String} _display_name The display name for the mission
 * @param {String} _description The description of the mission
 * @param {Array<String>} [_tags] The tags used to categorize this mission
 * @param {Array<Struct.ElementsStep>} [_steps] The steps that constitute the mission (may be null if finalRepeatStep is specified)
 * @param {Struct.ElementsStep} [_final_repeat_step] The final repeating step (may be null if step(s) are specified)
 * @param {Struct.ElementsCreateMissionRequestMetadata} [_metadata] The metadata for this mission
 */
function ElementsCreateMissionRequest(_name, _display_name, _description, _tags = undefined, _steps = undefined, _final_repeat_step = undefined, _metadata = undefined) constructor
{
    name = _name;
    displayName = _display_name;
    description = _description;
    tags = _tags;
    steps = _steps;
    finalRepeatStep = _final_repeat_step;
    metadata = _metadata;
}

/**
 * @func ElementsCreateMissionRequestMetadata()
 * The metadata for this mission
 */
function ElementsCreateMissionRequestMetadata() constructor
{
}

/**
 * @func ElementsCreateMultipartLargeObjectBody(_object = undefined, _metadata = undefined)
 * @param {Struct.ElementsFormDataBodyPart} [_object]
 * @param {Struct.ElementsCreateLargeObjectRequest} [_metadata]
 */
function ElementsCreateMultipartLargeObjectBody(_object = undefined, _metadata = undefined) constructor
{
    object = _object;
    metadata = _metadata;
}

/**
 * @func ElementsCreateOrUpdateOAuth2AuthSchemeRequest(_name, _validation_url, _method, _headers = undefined, _params = undefined, _body = undefined, _response_id_mapping = undefined, _response_valid_mapping = undefined, _response_valid_expected_value = undefined, _valid_status_codes = undefined, _body_type = undefined)
 * Represents a request to update an Auth Scheme for an Application.
 * @param {String} _name A unique name used to identify the scheme within the instance of Elements. If using the same OAuth2 provider (e.g. Steam), it is recommended to suffix the name for each application when using multitenancy, e.g. steam_game1, steam_game2, etc.
 * @param {String} _validation_url The URL to send the user token validation request to.
 * @param {String} _method HTTP method for the validation request (GET or POST).
 * @param {Array<Struct.ElementsOAuth2RequestKeyValue>} [_headers] The headers required for the validation request.
 * @param {Array<Struct.ElementsOAuth2RequestKeyValue>} [_params] The query parameters required for the validation request.
 * @param {Array<Struct.ElementsOAuth2RequestKeyValue>} [_body] The body parameters for the validation request when using POST.
 * For FORM_URL_ENCODED, these become form fields (key=value&...).
 * @param {String} [_response_id_mapping] Determines how to map the user id in the response. Will search the response for the corresponding key. For example, if the response is structured like:  {"response": { "params" : { "steamid" : <id> } } } then you only need to input "steamid". Ignored if one of the parameters is marked as user id.
 * @param {String} [_response_valid_mapping] Optional key in the response whose value indicates whether the token/user is valid.
 * For example: "is_valid", "active", or "success".
 * If not set, only the HTTP status code is used.
 * @param {String} [_response_valid_expected_value] Optional expected value for the validation field.
 * If null:
 *   - boolean true is treated as success
 *   - non-empty/non-null for non-boolean values is treated as success.
 * If set, the field's string value must equal this.
 * @param {Array<Real>} [_valid_status_codes] HTTP status codes that are considered "processable" for validation.
 * Any other status is treated as failure before inspecting the body.
 * Defaults to [200].
 * @param {String} [_body_type] How to encode the request body when using POST.
 * FORM_URL_ENCODED corresponds to application/x-www-form-urlencoded.
 */
function ElementsCreateOrUpdateOAuth2AuthSchemeRequest(_name, _validation_url, _method, _headers = undefined, _params = undefined, _body = undefined, _response_id_mapping = undefined, _response_valid_mapping = undefined, _response_valid_expected_value = undefined, _valid_status_codes = undefined, _body_type = undefined) constructor
{
    name = _name;
    validationUrl = _validation_url;
    self[$ "method"] = _method;
    headers = _headers;
    params = _params;
    body = _body;
    responseIdMapping = _response_id_mapping;
    responseValidMapping = _response_valid_mapping;
    responseValidExpectedValue = _response_valid_expected_value;
    validStatusCodes = _valid_status_codes;
    bodyType = _body_type;
}

/**
 * @func ElementsCreateOrUpdateOAuth2AuthSchemeResponse(_scheme = undefined)
 * Represents a response from updating an Auth Scheme for an Application.
 * @param {Struct.ElementsOAuth2AuthScheme} [_scheme] The full JSON response as described in AuthScheme
 */
function ElementsCreateOrUpdateOAuth2AuthSchemeResponse(_scheme = undefined) constructor
{
    scheme = _scheme;
}

/**
 * @func ElementsCreateOrUpdateOidcAuthSchemeRequest(_name, _issuer, _keys, _keys_url = undefined, _media_type = undefined)
 * Represents a request to update an Auth Scheme for an Application.
 * @param {String} _name The name used when linking the scheme to the user.
 * @param {String} _issuer A unique name used to identify the scheme within the instance of Elements. When validating from an external source (e.g. Google or Apple SSO), must match the 'iss' property of the decoded JWT.
 * @param {Array<Struct.ElementsJWK>} _keys A set of JWKs containing the keys required to validate JWT signatures.
 * @param {String} [_keys_url] The URL for the JWK data. Will attempt to refresh keys if the kid cannot be found in the collection.
 * @param {String} [_media_type] The JWK format. Defaults to application/json
 */
function ElementsCreateOrUpdateOidcAuthSchemeRequest(_name, _issuer, _keys, _keys_url = undefined, _media_type = undefined) constructor
{
    name = _name;
    issuer = _issuer;
    keys = _keys;
    keysUrl = _keys_url;
    mediaType = _media_type;
}

/**
 * @func ElementsCreateOrUpdateOidcAuthSchemeResponse(_scheme = undefined)
 * Represents a response from updating an Auth Scheme for an Application.
 * @param {Struct.ElementsOidcAuthScheme} [_scheme] The full JSON response as described in AuthScheme
 */
function ElementsCreateOrUpdateOidcAuthSchemeResponse(_scheme = undefined) constructor
{
    scheme = _scheme;
}

/**
 * @func ElementsCreateOrUpdateOidcProviderConfigurationRequest(_name, _discovery_url, _client_id, _client_secret = undefined, _scopes = undefined, _redirect_uri = undefined, _extra_authorize_params = undefined, _token_endpoint_auth_method = undefined, _success_redirect_url = undefined, _error_redirect_url = undefined)
 * Represents a request to create or update an OIDC provider configuration.
 * @param {String} _name A unique, lowercase, URL-safe identifier for the provider (e.g. 'twitch').
 * @param {String} _discovery_url The provider's OIDC discovery document URL.
 * @param {String} _client_id The OAuth2 client id registered with the provider.
 * @param {String} [_client_secret] The OAuth2 client secret registered with the provider. Required on create; on update, leave blank to keep the existing secret unchanged.
 * @param {Array<String>} [_scopes] The OAuth2 scopes to request during authorization.
 * @param {String} [_redirect_uri] The full, literal redirect URI registered with the provider. If left blank, defaults to this server's built-in OIDC callback URI for the provider (i.e. '{this server}/oidc/{provider}/callback').
 * @param {Struct.ElementsCreateOrUpdateOidcProviderConfigurationRequestExtraAuthorizeParams} [_extra_authorize_params] Additional provider-specific query parameters to include in the authorize request.
 * @param {String} [_token_endpoint_auth_method] How the client authenticates to the token endpoint during authorization code exchange.
 * @param {String} [_success_redirect_url] Optional. If set, GET /oidc/{provider}/callback redirects the browser here on a successful login instead of rendering the default success page. Server-authoritative: not overridable per login attempt.
 * @param {String} [_error_redirect_url] Optional. If set, GET /oidc/{provider}/callback redirects the browser here on a failed login instead of rendering the default error page. Server-authoritative: not overridable per login attempt.
 */
function ElementsCreateOrUpdateOidcProviderConfigurationRequest(_name, _discovery_url, _client_id, _client_secret = undefined, _scopes = undefined, _redirect_uri = undefined, _extra_authorize_params = undefined, _token_endpoint_auth_method = undefined, _success_redirect_url = undefined, _error_redirect_url = undefined) constructor
{
    name = _name;
    discoveryUrl = _discovery_url;
    clientId = _client_id;
    clientSecret = _client_secret;
    scopes = _scopes;
    redirectUri = _redirect_uri;
    extraAuthorizeParams = _extra_authorize_params;
    tokenEndpointAuthMethod = _token_endpoint_auth_method;
    successRedirectUrl = _success_redirect_url;
    errorRedirectUrl = _error_redirect_url;
}

/**
 * @func ElementsCreateOrUpdateOidcProviderConfigurationRequestExtraAuthorizeParams()
 * Additional provider-specific query parameters to include in the authorize request.
 */
function ElementsCreateOrUpdateOidcProviderConfigurationRequestExtraAuthorizeParams() constructor
{
}

/**
 * @func ElementsCreateOrUpdateOidcProviderConfigurationResponse(_configuration = undefined, _issuer = undefined, _authorization_endpoint = undefined, _token_endpoint = undefined)
 * Represents a response from creating or updating an OIDC provider configuration. The client secret is never included in the returned configuration.
 * @param {Struct.ElementsOidcProviderConfiguration} [_configuration] The created or updated provider configuration, with the client secret cleared.
 * @param {String} [_issuer] The issuer resolved from the provider's discovery document, confirming discovery succeeded.
 * @param {String} [_authorization_endpoint] The authorization endpoint resolved from the provider's discovery document.
 * @param {String} [_token_endpoint] The token endpoint resolved from the provider's discovery document.
 */
function ElementsCreateOrUpdateOidcProviderConfigurationResponse(_configuration = undefined, _issuer = undefined, _authorization_endpoint = undefined, _token_endpoint = undefined) constructor
{
    configuration = _configuration;
    issuer = _issuer;
    authorizationEndpoint = _authorization_endpoint;
    tokenEndpoint = _token_endpoint;
}

/**
 * @func ElementsCreateProfileRequest(_user_id, _application_id, _image_url = undefined, _display_name = undefined, _metadata = undefined)
 * Represents a request to create a profile for a user.
 * @param {String} _user_id The user id this profile belongs to.
 * @param {String} _application_id The application id this profile belongs to.
 * @param {String} [_image_url] A URL to the image of the profile.  (ie the User's Avatar).
 * @param {String} [_display_name] A non-unique display name for this profile.
 * @param {Struct.ElementsCreateProfileRequestMetadata} [_metadata] A map of arbitrary metadata.
 */
function ElementsCreateProfileRequest(_user_id, _application_id, _image_url = undefined, _display_name = undefined, _metadata = undefined) constructor
{
    userId = _user_id;
    applicationId = _application_id;
    imageUrl = _image_url;
    displayName = _display_name;
    metadata = _metadata;
}

/**
 * @func ElementsCreateProfileRequestMetadata()
 * A map of arbitrary metadata.
 */
function ElementsCreateProfileRequestMetadata() constructor
{
}

/**
 * @func ElementsCreateProfileSignupRequest(_application_id, _display_name = undefined, _image_url = undefined)
 * Used in conjunction with the user creation request to specify.
 * @param {String} _application_id The application id this profile belongs to.
 * @param {String} [_display_name] A non-unique display name for this profile. If left null, the server will assign.
 * @param {String} [_image_url] A URL to the image of the profile.  (ie the User's Avatar). If left null, the server will no assign any URL.
 */
function ElementsCreateProfileSignupRequest(_application_id, _display_name = undefined, _image_url = undefined) constructor
{
    applicationId = _application_id;
    displayName = _display_name;
    imageUrl = _image_url;
}

/**
 * @func ElementsCreateProgressRequest(_profile = undefined, _mission = undefined)
 * @param {Struct.ElementsProfile} [_profile]
 * @param {Struct.ElementsProgressMissionInfo} [_mission] The mission
 */
function ElementsCreateProgressRequest(_profile = undefined, _mission = undefined) constructor
{
    profile = _profile;
    mission = _mission;
}

/**
 * @func ElementsCreateReceiptRequest(_original_transaction_id = undefined, _schema = undefined, _user_id = undefined, _purchase_time = undefined, _body = undefined)
 * A request model to create a new receipt.
 * @param {String} [_original_transaction_id] The id of the original transaction as provided by the payment processor.
 * @param {String} [_schema] The id of the receipt provider in reverse-dns notation, e.g. com.company.platform
 * @param {String} [_user_id] The database id, name, or email of the User associated with this receipt.
 * @param {Real} [_purchase_time] The time that the purchase was made (ms since Unix epoch).
 * @param {String} [_body] The string representation of the raw receipt data.
 */
function ElementsCreateReceiptRequest(_original_transaction_id = undefined, _schema = undefined, _user_id = undefined, _purchase_time = undefined, _body = undefined) constructor
{
    originalTransactionId = _original_transaction_id;
    schema = _schema;
    userId = _user_id;
    purchaseTime = _purchase_time;
    body = _body;
}

/**
 * @func ElementsCreateSaveDataDocumentRequest(_slot, _contents, _user_id = undefined, _profile_id = undefined)
 * Used to create a save data document on the remote.
 * @param {Real} _slot The slot of the property. Must be unique for user or profile.
 * @param {String} _contents The contents of the save data.
 * @param {String} [_user_id] The id of the user which owns the save data. If specified, the user will own this save data and the profileId must be null or be owned by the user specified.
 * @param {String} [_profile_id] The id of the profile which owns the save data. If specified, the profile will own this save data and the userId must be null or be owned by the user specified.
 */
function ElementsCreateSaveDataDocumentRequest(_slot, _contents, _user_id = undefined, _profile_id = undefined) constructor
{
    slot = _slot;
    contents = _contents;
    userId = _user_id;
    profileId = _profile_id;
}

/**
 * @func ElementsCreateScheduleEventRequest(_mission_names_or_ids, _begin = undefined, _end = undefined)
 * @param {Array<String>} _mission_names_or_ids
 * @param {Real} [_begin]
 * @param {Real} [_end]
 */
function ElementsCreateScheduleEventRequest(_mission_names_or_ids, _begin = undefined, _end = undefined) constructor
{
    missionNamesOrIds = _mission_names_or_ids;
    self[$ "begin"] = _begin;
    self[$ "end"] = _end;
}

/**
 * @func ElementsCreateScheduleRequest(_name, _display_name, _description)
 * @param {String} _name
 * @param {String} _display_name
 * @param {String} _description
 */
function ElementsCreateScheduleRequest(_name, _display_name, _description) constructor
{
    name = _name;
    displayName = _display_name;
    description = _description;
}

/**
 * @func ElementsCreateSimpleInventoryItemRequest(_user_id, _item_id, _quantity = undefined)
 * @param {String} _user_id The User ID
 * @param {String} _item_id The item to reference.
 * @param {Real} [_quantity] The quantity of the Item in inventory
 */
function ElementsCreateSimpleInventoryItemRequest(_user_id, _item_id, _quantity = undefined) constructor
{
    userId = _user_id;
    itemId = _item_id;
    quantity = _quantity;
}

/**
 * @func ElementsCreateSmartContractRequest(_name, _display_name, _addresses, _vault_id, _metadata = undefined)
 * Creates a smart contract.
 * @param {String} _name The unique symbolic name of the smart contract.
 * @param {String} _display_name The name given to this contract for display purposes.
 * @param {Struct.ElementsCreateSmartContractRequestAddresses} _addresses The address of the contract from the blockchain. Depending on the network or protocol this may have several meanings and vary depending on the specific API or network.
 * @param {String} _vault_id The Elements database id of the wallet containing the default account to be used for contract related requests.
 * @param {Struct.ElementsCreateSmartContractRequestMetadata} [_metadata] Any metadata for this contract.
 */
function ElementsCreateSmartContractRequest(_name, _display_name, _addresses, _vault_id, _metadata = undefined) constructor
{
    name = _name;
    displayName = _display_name;
    addresses = _addresses;
    vaultId = _vault_id;
    metadata = _metadata;
}

/**
 * @func ElementsCreateSmartContractRequestAddresses()
 * The address of the contract from the blockchain. Depending on the network or protocol this may have several meanings and vary depending on the specific API or network.
 */
function ElementsCreateSmartContractRequestAddresses() constructor
{
}

/**
 * @func ElementsCreateSmartContractRequestMetadata()
 * Any metadata for this contract.
 */
function ElementsCreateSmartContractRequestMetadata() constructor
{
}

/**
 * @func ElementsCreateSteamIapReceipt(_order_id)
 * @param {String} _order_id The Steam order ID returned by the Steam client upon a successful purchase transaction. This is used to query and verify the transaction via the Steam ISteamMicroTxn API.
 */
function ElementsCreateSteamIapReceipt(_order_id) constructor
{
    orderId = _order_id;
}

/**
 * @func ElementsCreateVaultRequest(_user_id, _display_name, _passphrase = undefined, _algorithm = undefined)
 * @param {String} _user_id The elements-defined user ID to own the vault.
 * @param {String} _display_name A user-defined name for the vault. This is used simply for the user's reference and has no bearing  onthe vault's functionality.
 * @param {String} [_passphrase] The passphrase used to to encrypt the vault. If empty, then the vault will not be encrypted. Some configurations may opt to disallow encryption entirely.
 * @param {String} [_algorithm] The encryption algorithm used to secure the vault. Once crated, a vault will contains a private/public key pair which will be used to encrypt the wallets within the vault.
 */
function ElementsCreateVaultRequest(_user_id, _display_name, _passphrase = undefined, _algorithm = undefined) constructor
{
    userId = _user_id;
    displayName = _display_name;
    passphrase = _passphrase;
    algorithm = _algorithm;
}

/**
 * @func ElementsCreateWalletRequest(_display_name, _api, _networks, _accounts, _preferred_account = undefined)
 * Creates a new custodial wallet.
 * @param {String} _display_name A user-defined name for the wallet. This is used simply for the user's reference and has no bearing  onthe wallet's functionality.
 * @param {String} _api The protocol of this wallet. Once set, this cannot be unset.
 * @param {Array<String>} _networks The networks associated with this wallet. All must support the Wallet's protocol.
 * @param {Array<Struct.ElementsCreateWalletRequestAccount>} _accounts
 * @param {Real} [_preferred_account] The default identity. Must not be larger than the count of identities.
 */
function ElementsCreateWalletRequest(_display_name, _api, _networks, _accounts, _preferred_account = undefined) constructor
{
    displayName = _display_name;
    api = _api;
    networks = _networks;
    accounts = _accounts;
    preferredAccount = _preferred_account;
}

/**
 * @func ElementsCreateWalletRequestAccount(_generate = undefined, _address = undefined, _private_key = undefined)
 * Specifies a Custodial Wallet Account Creating a Wallet
 * @param {Bool} [_generate] Flag which indicates if the account should be generated or imported.
 * @param {String} [_address] The Wallet Address - id public identity. Must be null for generated wallets.
 * @param {String} [_private_key] The Wallet Account - id private identity. May be null if the wallet is for receive only.
 */
function ElementsCreateWalletRequestAccount(_generate = undefined, _address = undefined, _private_key = undefined) constructor
{
    generate = _generate;
    address = _address;
    privateKey = _private_key;
}

/**
 * @func ElementsDatabaseHealthStatus(_name = undefined, _metadata = undefined)
 * @param {String} [_name]
 * @param {String} [_metadata]
 */
function ElementsDatabaseHealthStatus(_name = undefined, _metadata = undefined) constructor
{
    name = _name;
    metadata = _metadata;
}

/**
 * @func ElementsDeployment(_id, _version, _revision, _application)
 * @param {String} _id The unique ID of the deployment itself.
 * @param {String} _version The deployment version. Allows for overriding versions with new content.
 * @param {String} _revision The revision that this deployment points to.
 * @param {Struct.ElementsApplication} _application
 */
function ElementsDeployment(_id, _version, _revision, _application) constructor
{
    id = _id;
    version = _version;
    revision = _revision;
    application = _application;
}

/**
 * @func ElementsDiscoveryHealthStatus(_records = undefined, _known_hosts = undefined)
 * @param {Array<String>} [_records]
 * @param {Array<String>} [_known_hosts]
 */
function ElementsDiscoveryHealthStatus(_records = undefined, _known_hosts = undefined) constructor
{
    records = _records;
    knownHosts = _known_hosts;
}

/**
 * @func ElementsDistinctInventoryItem(_id = undefined, _item = undefined, _user = undefined, _profile = undefined, _metadata = undefined)
 * @param {String} [_id] The unique ID of the inventory item itself.
 * @param {Struct.ElementsItem} [_item] The Item to be issued upon redemption.
 * @param {Struct.ElementsUser} [_user] The User associated with this Profile.
 * @param {Struct.ElementsProfile} [_profile]
 * @param {Struct.ElementsDistinctInventoryItemMetadata} [_metadata]
 */
function ElementsDistinctInventoryItem(_id = undefined, _item = undefined, _user = undefined, _profile = undefined, _metadata = undefined) constructor
{
    id = _id;
    item = _item;
    user = _user;
    profile = _profile;
    metadata = _metadata;
}

/**
 * @func ElementsDistinctInventoryItemMetadata()
 */
function ElementsDistinctInventoryItemMetadata() constructor
{
}

/**
 * @func ElementsEditorLayout(_key = undefined, _title = undefined, _placeholder = undefined)
 * Defines an editor layout element.
 * @param {String} [_key]
 * @param {String} [_title]
 * @param {String} [_placeholder]
 */
function ElementsEditorLayout(_key = undefined, _title = undefined, _placeholder = undefined) constructor
{
    key = _key;
    title = _title;
    placeholder = _placeholder;
}

/**
 * @func ElementsEditorSchema(_data = undefined, _schema = undefined, _layout = undefined)
 * Defines an editor schema which contains a JSON Schema, layout, and initial data for the editor.
 * @param {Struct} [_data] The data itself.
 * @param {Struct.ElementsJsonSchema} [_schema] A Subset of the JSON-Schema - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {Array<Struct.ElementsEditorLayout>} [_layout] The editor layout.
 */
function ElementsEditorSchema(_data = undefined, _schema = undefined, _layout = undefined) constructor
{
    data = _data;
    schema = _schema;
    layout = _layout;
}

/**
 * @func ElementsElementArtifactRepository(_id = undefined, _url = undefined)
 * Defines an artifact repository with its identifier and URL. Artifact repositories are used to store and retrieve Java artifacts such as libraries, and dependencies, and other build outputs. Namazu Elements permits the use of multiple artifact repositories to resolve artifacts required for Elements.
 * @param {String} [_id] The identifier of the repository. This is typically a unique name used to reference the repository when providing credentials.
 * @param {String} [_url] This is the URL for the repository.
 */
function ElementsElementArtifactRepository(_id = undefined, _url = undefined) constructor
{
    id = _id;
    url = _url;
}

/**
 * @func ElementsElementContainerStatus(_runtime = undefined, _status = undefined, _uris = undefined, _logs = undefined, _warnings = undefined, _elements = undefined)
 * Provides the status for containers running within one or more Elements. A container is registered with the main server and exposes endpoints via the listed URIs. Only Elements serving data will be visible here.
 * @param {Struct.ElementsElementRuntimeStatus} [_runtime] Reports the status of an element runtime, which is a deployed in-memory Element. An in-memory Element may or may not expose endpoints but can still be loaded in memory.
 * @param {String} [_status] A string indicating the status of the container.
 * @param {Array<String>} [_uris] The URIs served by this container.
 * @param {Array<String>} [_logs] A list of logs related to the deployment of the container.
 * @param {Array<String>} [_warnings] A list of warnings produced during container mounting.
 * @param {Array<Struct.ElementsElementMetadata>} [_elements] A list of Elements included in the container.
 */
function ElementsElementContainerStatus(_runtime = undefined, _status = undefined, _uris = undefined, _logs = undefined, _warnings = undefined, _elements = undefined) constructor
{
    runtime = _runtime;
    status = _status;
    uris = _uris;
    logs = _logs;
    warnings = _warnings;
    elements = _elements;
}

/**
 * @func ElementsElementDefaultAttributeRecord(_name = undefined, _value = undefined, _description = undefined, _sensitive = undefined)
 * @param {String} [_name]
 * @param {String} [_value]
 * @param {String} [_description]
 * @param {Bool} [_sensitive]
 */
function ElementsElementDefaultAttributeRecord(_name = undefined, _value = undefined, _description = undefined, _sensitive = undefined) constructor
{
    name = _name;
    value = _value;
    description = _description;
    sensitive = _sensitive;
}

/**
 * @func ElementsElementDefinitionMetadata(_name = undefined, _recursive = undefined, _additional_packages = undefined, _loader = undefined)
 * @param {String} [_name]
 * @param {Bool} [_recursive]
 * @param {Array<Struct.ElementsElementPackageRecord>} [_additional_packages]
 * @param {String} [_loader]
 */
function ElementsElementDefinitionMetadata(_name = undefined, _recursive = undefined, _additional_packages = undefined, _loader = undefined) constructor
{
    name = _name;
    recursive = _recursive;
    additionalPackages = _additional_packages;
    loader = _loader;
}

/**
 * @func ElementsElementDependencyMetadata(_value = undefined, _selector = undefined)
 * @param {String} [_value]
 * @param {String} [_selector]
 */
function ElementsElementDependencyMetadata(_value = undefined, _selector = undefined) constructor
{
    value = _value;
    selector = _selector;
}

/**
 * @func ElementsElementDeployment(_id = undefined, _application = undefined, _elm = undefined, _path_spi_builtins = undefined, _path_spi_class_paths = undefined, _path_attributes = undefined, _elements = undefined, _packages = undefined, _use_default_repositories = undefined, _repositories = undefined, _state = undefined, _version = undefined)
 * Represents the deployment configuration for an Element within the system. This includes details about the application context, artifacts to be included, and repositories for artifact resolution.
 * @param {String} [_id] The database unique identifier of the Element deployment.
 * @param {Struct.ElementsApplication} [_application]
 * @param {Struct.ElementsLargeObjectReference} [_elm] Image object stored in EL large objects storage.
 * @param {Struct.ElementsElementDeploymentPathSpiBuiltins} [_path_spi_builtins] Map of element paths to builtin SPI configurations. This allow for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @param {Struct.ElementsElementDeploymentPathSpiClassPaths} [_path_spi_class_paths] Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @param {Struct.ElementsElementDeploymentPathAttributes} [_path_attributes] Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 * @param {Array<Struct.ElementsElementPathDefinition>} [_elements] List of Element definitions specifying the classpaths and artifacts for each Element to deploy. Each definition can specify either Maven artifact coordinates (API, SPI, Element lists) or a single ELM artifact coordinate.
 * @param {Array<Struct.ElementsElementPackageDefinition>} [_packages] List of Element package definitions specifying ELM artifacts to deploy with per-path attribute configuration. Each package can contain multiple elements with individualized attribute mappings.
 * @param {Bool} [_use_default_repositories] Flag indicating whether to use the default artifact repositories in addition to any provided. The actual repositories included will be those defined by the system's default configuration at deployment time.
 * @param {Array<Struct.ElementsElementArtifactRepository>} [_repositories] List of artifact repositories to use for resolving the specified artifacts and their dependencies. All artifacts and their dependencies must be found within these repositories.
 * @param {String} [_state] The state of the deployment.
 * @param {Real} [_version] Monotonically increasing version number, updated on each modification. Used to detect changes without comparing all fields.
 */
function ElementsElementDeployment(_id = undefined, _application = undefined, _elm = undefined, _path_spi_builtins = undefined, _path_spi_class_paths = undefined, _path_attributes = undefined, _elements = undefined, _packages = undefined, _use_default_repositories = undefined, _repositories = undefined, _state = undefined, _version = undefined) constructor
{
    id = _id;
    application = _application;
    elm = _elm;
    pathSpiBuiltins = _path_spi_builtins;
    pathSpiClassPaths = _path_spi_class_paths;
    pathAttributes = _path_attributes;
    elements = _elements;
    packages = _packages;
    useDefaultRepositories = _use_default_repositories;
    repositories = _repositories;
    state = _state;
    version = _version;
}

/**
 * @func ElementsElementDeploymentPathAttributes()
 * Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 */
function ElementsElementDeploymentPathAttributes() constructor
{
}

/**
 * @func ElementsElementDeploymentPathAttributesAp()
 * Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 */
function ElementsElementDeploymentPathAttributesAp() constructor
{
}

/**
 * @func ElementsElementDeploymentPathSpiBuiltins()
 * Map of element paths to builtin SPI configurations. This allow for an individual SPI specification for each Element contained within the ELM file in the large object.
 */
function ElementsElementDeploymentPathSpiBuiltins() constructor
{
}

/**
 * @func ElementsElementDeploymentPathSpiClassPaths()
 * Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 */
function ElementsElementDeploymentPathSpiClassPaths() constructor
{
}

/**
 * @func ElementsElementEventConsumerMetadata(_service_type = undefined, _service_name = undefined, _event_name = undefined, _method_name = undefined)
 * @param {String} [_service_type]
 * @param {String} [_service_name]
 * @param {String} [_event_name]
 * @param {String} [_method_name]
 */
function ElementsElementEventConsumerMetadata(_service_type = undefined, _service_name = undefined, _event_name = undefined, _method_name = undefined) constructor
{
    serviceType = _service_type;
    serviceName = _service_name;
    eventName = _event_name;
    methodName = _method_name;
}

/**
 * @func ElementsElementEventProducerMetadata(_name = undefined, _description = undefined, _parameters = undefined)
 * @param {String} [_name]
 * @param {String} [_description]
 * @param {Array<String>} [_parameters]
 */
function ElementsElementEventProducerMetadata(_name = undefined, _description = undefined, _parameters = undefined) constructor
{
    name = _name;
    description = _description;
    parameters = _parameters;
}

/**
 * @func ElementsElementFeature(_name = undefined, _description = undefined)
 * Reports a particular permitted feature of the system and what can be exposed to Elements
 * @param {String} [_name] The name of the feature. Used as an internal reference.
 * @param {String} [_description] A brief description of what it permits to the Elements.
 */
function ElementsElementFeature(_name = undefined, _description = undefined) constructor
{
    name = _name;
    description = _description;
}

/**
 * @func ElementsElementManifestMetadata(_version = undefined, _builtin_spis = undefined)
 * The Element manifest.
 * @param {Struct.ElementsSystemVersion} [_version] The version of the Element
 * @param {Array<String>} [_builtin_spis] The builtin SPIs requested by this element.
 */
function ElementsElementManifestMetadata(_version = undefined, _builtin_spis = undefined) constructor
{
    version = _version;
    builtinSpis = _builtin_spis;
}

/**
 * @func ElementsElementManifestRecord(_version = undefined, _builtin_spis = undefined)
 * A mapping of paths to manifests of loaded elements.
 * @param {Struct.ElementsSystemVersion} [_version] The version of the Element
 * @param {Array<String>} [_builtin_spis]
 */
function ElementsElementManifestRecord(_version = undefined, _builtin_spis = undefined) constructor
{
    version = _version;
    builtinSpis = _builtin_spis;
}

/**
 * @func ElementsElementMetadata(_type = undefined, _definition = undefined, _services = undefined, _produced_events = undefined, _consumed_events = undefined, _dependencies = undefined, _attributes = undefined, _default_attributes = undefined, _required_attributes = undefined, _element_path = undefined, _source_elm_artifact = undefined)
 * @param {String} [_type]
 * @param {Struct.ElementsElementDefinitionMetadata} [_definition]
 * @param {Array<Struct.ElementsElementServiceMetadata>} [_services]
 * @param {Array<Struct.ElementsElementEventProducerMetadata>} [_produced_events]
 * @param {Array<Struct.ElementsElementEventConsumerMetadata>} [_consumed_events]
 * @param {Array<Struct.ElementsElementDependencyMetadata>} [_dependencies]
 * @param {Struct.ElementsElementMetadataAttributes} [_attributes]
 * @param {Array<Struct.ElementsElementDefaultAttributeRecord>} [_default_attributes]
 * @param {Array<Struct.ElementsElementRequiredAttributeRecord>} [_required_attributes]
 * @param {String} [_element_path]
 * @param {String} [_source_elm_artifact]
 */
function ElementsElementMetadata(_type = undefined, _definition = undefined, _services = undefined, _produced_events = undefined, _consumed_events = undefined, _dependencies = undefined, _attributes = undefined, _default_attributes = undefined, _required_attributes = undefined, _element_path = undefined, _source_elm_artifact = undefined) constructor
{
    type = _type;
    definition = _definition;
    services = _services;
    producedEvents = _produced_events;
    consumedEvents = _consumed_events;
    dependencies = _dependencies;
    attributes = _attributes;
    defaultAttributes = _default_attributes;
    requiredAttributes = _required_attributes;
    elementPath = _element_path;
    sourceElmArtifact = _source_elm_artifact;
}

/**
 * @func ElementsElementMetadataAttributes()
 */
function ElementsElementMetadataAttributes() constructor
{
}

/**
 * @func ElementsElementPackageDefinition(_elm_artifact, _path_spi_builtins = undefined, _path_spi_class_paths = undefined, _path_attributes = undefined)
 * Defines a package of Elements from a single ELM artifact with per-path attribute configuration. This allows multiple element paths within an ELM to have different attribute configurations.
 * @param {String} _elm_artifact The ELM artifact coordinate to resolve and deploy. This ELM file will be downloaded, extracted, and its contents organized into the deployment directory structure.
 * @param {Struct.ElementsElementPackageDefinitionPathSpiBuiltins} [_path_spi_builtins] Map of element paths to builtin SPI configurations. This allow for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @param {Struct.ElementsElementPackageDefinitionPathSpiClassPaths} [_path_spi_class_paths] Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the specified ELM artifact.
 * @param {Struct.ElementsElementPackageDefinitionPathAttributes} [_path_attributes] Map of element paths to their custom attributes. The key is the inside the ELM for each Element inside the ELM file. and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 */
function ElementsElementPackageDefinition(_elm_artifact, _path_spi_builtins = undefined, _path_spi_class_paths = undefined, _path_attributes = undefined) constructor
{
    elmArtifact = _elm_artifact;
    pathSpiBuiltins = _path_spi_builtins;
    pathSpiClassPaths = _path_spi_class_paths;
    pathAttributes = _path_attributes;
}

/**
 * @func ElementsElementPackageDefinitionPathAttributes()
 * Map of element paths to their custom attributes. The key is the inside the ELM for each Element inside the ELM file. and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 */
function ElementsElementPackageDefinitionPathAttributes() constructor
{
}

/**
 * @func ElementsElementPackageDefinitionPathAttributesAp()
 * Map of element paths to their custom attributes. The key is the inside the ELM for each Element inside the ELM file. and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 */
function ElementsElementPackageDefinitionPathAttributesAp() constructor
{
}

/**
 * @func ElementsElementPackageDefinitionPathSpiBuiltins()
 * Map of element paths to builtin SPI configurations. This allow for an individual SPI specification for each Element contained within the ELM file in the large object.
 */
function ElementsElementPackageDefinitionPathSpiBuiltins() constructor
{
}

/**
 * @func ElementsElementPackageDefinitionPathSpiClassPaths()
 * Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the specified ELM artifact.
 */
function ElementsElementPackageDefinitionPathSpiClassPaths() constructor
{
}

/**
 * @func ElementsElementPackageRecord(_name = undefined, _recursive = undefined)
 * @param {String} [_name]
 * @param {Bool} [_recursive]
 */
function ElementsElementPackageRecord(_name = undefined, _recursive = undefined) constructor
{
    name = _name;
    recursive = _recursive;
}

/**
 * @func ElementsElementPathDefinition(_path = undefined, _api_artifacts = undefined, _spi_builtins = undefined, _spi_artifacts = undefined, _element_artifacts = undefined, _attributes = undefined)
 * Defines the classpath configuration for Elements within a deployment. Can specify either Maven artifact coordinates (api, spi, element lists) or a single ELM artifact coordinate.
 * @param {String} [_path] The single directory name where this element will be deployed within the deployment directory structure. Must not contain '/' as it represents a single path segment. This is optional and can be assigned at deployment time.
 * @param {Array<String>} [_api_artifacts] List of API artifact coordinates. These artifacts will be loaded into a shared API classloader accessible to all Elements. Ignored if elmArtifact is specified.
 * @param {Array<String>} [_spi_builtins] List of SPI (Service Provider Implementation) builtins. These provide the implementation of Element framework services.
 * @param {Array<String>} [_spi_artifacts] List of SPI (Service Provider Implementation) artifact coordinates. These provide the implementation of Element framework services.
 * @param {Array<String>} [_element_artifacts] List of Element implementation artifact coordinates. These contain the actual Element code.
 * @param {Struct.ElementsElementPathDefinitionAttributes} [_attributes] Custom attributes specific to this element path. These key-value pairs will be passed to the Element at load time via the AttributesLoader mechanism, allowing per-element configuration beyond the deployment-wide attributes.
 */
function ElementsElementPathDefinition(_path = undefined, _api_artifacts = undefined, _spi_builtins = undefined, _spi_artifacts = undefined, _element_artifacts = undefined, _attributes = undefined) constructor
{
    path = _path;
    apiArtifacts = _api_artifacts;
    spiBuiltins = _spi_builtins;
    spiArtifacts = _spi_artifacts;
    elementArtifacts = _element_artifacts;
    attributes = _attributes;
}

/**
 * @func ElementsElementPathDefinitionAttributes()
 * Custom attributes specific to this element path. These key-value pairs will be passed to the Element at load time via the AttributesLoader mechanism, allowing per-element configuration beyond the deployment-wide attributes.
 */
function ElementsElementPathDefinitionAttributes() constructor
{
}

/**
 * @func ElementsElementPathRecordMetadata(_path = undefined, _api = undefined, _spi = undefined, _lib = undefined, _classpath = undefined, _attributes = undefined, _manifest = undefined)
 * Describes the path of an ELM distribution.
 * @param {String} [_path] The path inside the ELM file.
 * @param {Array<String>} [_api] The API path inside the ELM file.
 * @param {Array<String>} [_spi] The SPI path inside the ELM file.
 * @param {Array<String>} [_lib] The library path inside the ELM file.
 * @param {Array<String>} [_classpath] The classpath path inside the ELM file.
 * @param {Struct.ElementsElementPathRecordMetadataAttributes} [_attributes] The the attributes specified in the ELM file.
 * @param {Struct.ElementsElementManifestMetadata} [_manifest] The Element manifest.
 */
function ElementsElementPathRecordMetadata(_path = undefined, _api = undefined, _spi = undefined, _lib = undefined, _classpath = undefined, _attributes = undefined, _manifest = undefined) constructor
{
    path = _path;
    api = _api;
    spi = _spi;
    lib = _lib;
    classpath = _classpath;
    attributes = _attributes;
    manifest = _manifest;
}

/**
 * @func ElementsElementPathRecordMetadataAttributes()
 * The the attributes specified in the ELM file.
 */
function ElementsElementPathRecordMetadataAttributes() constructor
{
}

/**
 * @func ElementsElementRequiredAttributeRecord(_name = undefined, _description = undefined, _sensitive = undefined)
 * @param {String} [_name]
 * @param {String} [_description]
 * @param {Bool} [_sensitive]
 */
function ElementsElementRequiredAttributeRecord(_name = undefined, _description = undefined, _sensitive = undefined) constructor
{
    name = _name;
    description = _description;
    sensitive = _sensitive;
}

/**
 * @func ElementsElementRuntimeStatus(_deployment = undefined, _status = undefined, _element_paths = undefined, _deployment_files = undefined, _logs = undefined, _warnings = undefined, _errors = undefined, _elements = undefined, _failed_elements = undefined, _element_manifests = undefined)
 * Reports the status of an element runtime, which is a deployed in-memory Element. An in-memory Element may or may not expose endpoints but can still be loaded in memory.
 * @param {Struct.ElementsElementDeployment} [_deployment] Represents the deployment configuration for an Element within the system. This includes details about the application context, artifacts to be included, and repositories for artifact resolution.
 * @param {String} [_status] The status of the runtime.
 * @param {Array<String>} [_element_paths] A readout of element paths loaded with this.
 * @param {Array<String>} [_deployment_files] A readout of temporary files that are associated with the deployment.
 * @param {Array<String>} [_logs] A list of logs related to the deployment of the runtime.
 * @param {Array<String>} [_warnings] A list of warnings related to the deployment of the runtime.
 * @param {Array<String>} [_errors] A list of errors related to the deployment of the runtime.
 * @param {Array<Struct.ElementsElementMetadata>} [_elements] A list of Elements included in the runtime.
 * @param {Array<Struct.ElementsElementMetadata>} [_failed_elements] A list of Elements that failed to load, preserving their declared required and default attributes so that missing configuration can be identified even when an element cannot initialise.
 * @param {Struct.ElementsElementRuntimeStatusElementManifests} [_element_manifests] A mapping of paths to manifests of loaded elements.
 */
function ElementsElementRuntimeStatus(_deployment = undefined, _status = undefined, _element_paths = undefined, _deployment_files = undefined, _logs = undefined, _warnings = undefined, _errors = undefined, _elements = undefined, _failed_elements = undefined, _element_manifests = undefined) constructor
{
    deployment = _deployment;
    status = _status;
    elementPaths = _element_paths;
    deploymentFiles = _deployment_files;
    logs = _logs;
    warnings = _warnings;
    errors = _errors;
    elements = _elements;
    failedElements = _failed_elements;
    elementManifests = _element_manifests;
}

/**
 * @func ElementsElementRuntimeStatusElementManifests()
 * A mapping of paths to manifests of loaded elements.
 */
function ElementsElementRuntimeStatusElementManifests() constructor
{
}

/**
 * @func ElementsElementServiceExportMetadata(_exposed = undefined, _name = undefined)
 * @param {Array<String>} [_exposed]
 * @param {String} [_name]
 */
function ElementsElementServiceExportMetadata(_exposed = undefined, _name = undefined) constructor
{
    exposed = _exposed;
    name = _name;
}

/**
 * @func ElementsElementServiceImplementationMetadata(_type = undefined, _expose = undefined)
 * @param {String} [_type]
 * @param {Bool} [_expose]
 */
function ElementsElementServiceImplementationMetadata(_type = undefined, _expose = undefined) constructor
{
    type = _type;
    expose = _expose;
}

/**
 * @func ElementsElementServiceMetadata(_implementation = undefined, _export = undefined)
 * @param {Struct.ElementsElementServiceImplementationMetadata} [_implementation]
 * @param {Struct.ElementsElementServiceExportMetadata} [_export]
 */
function ElementsElementServiceMetadata(_implementation = undefined, _export = undefined) constructor
{
    implementation = _implementation;
    export = _export;
}

/**
 * @func ElementsElementServiceReference(_element_name, _service_type = undefined, _service_name = undefined)
 * Describes the matchmaker (dev.getelements.elements.sdk.dao.Matchmaker) to use for this configuration.
 * @param {String} _element_name The name of the Element to reference.
 * @param {String} [_service_type] Specifies the type of the service within the Element. May be null.
 * @param {String} [_service_name] Specifies the name of the service within the Element. May be null.
 */
function ElementsElementServiceReference(_element_name, _service_type = undefined, _service_name = undefined) constructor
{
    elementName = _element_name;
    serviceType = _service_type;
    serviceName = _service_name;
}

/**
 * @func ElementsElementSpi(_id, _version, _description, _coordinates)
 * An Element Loader SPI Implementation.
 * @param {String} _id The well known ID.
 * @param {String} _version The version which is compatible with the specified artifacts.
 * @param {String} _description Briefly describes this spi and its intended use case.
 * @param {Array<String>} _coordinates The Maven coordinates of the artifacts to load.
 */
function ElementsElementSpi(_id, _version, _description, _coordinates) constructor
{
    id = _id;
    version = _version;
    description = _description;
    coordinates = _coordinates;
}

/**
 * @func ElementsEmailVerificationRequest(_email)
 * @param {String} _email The email address to verify.
 */
function ElementsEmailVerificationRequest(_email) constructor
{
    email = _email;
}

/**
 * @func ElementsErrorResponse(_code = undefined, _message = undefined)
 * @param {String} [_code] A machine readable code of the error.
 * @param {String} [_message] A description of the error. This error is not intended to be displayed to the end-user, rather it is it designed to relay information to the application developer.
 */
function ElementsErrorResponse(_code = undefined, _message = undefined) constructor
{
    code = _code;
    message = _message;
}

/**
 * @func ElementsFacebookApplicationConfiguration(_name, _type, _parent, _application_id, _application_secret, _id = undefined, _description = undefined, _builtin_application_permissions = undefined, _product_bundles = undefined)
 * Houses the various parameters required which allow communication with the Facebook API.
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {Struct.ElementsApplication} _parent
 * @param {String} _application_id The AppID as it appears in the Facebook Developer Console
 * @param {String} _application_secret The App Secret as it appears in the Facebook Developer Console
 * @param {String} [_id] The database assigned ID for the application configuration.
 * @param {String} [_description]
 * @param {Array<String>} [_builtin_application_permissions] The set of built-in permissions connected clients will need to request.
 * @param {Array<Struct.ElementsProductBundle>} [_product_bundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 */
function ElementsFacebookApplicationConfiguration(_name, _type, _parent, _application_id, _application_secret, _id = undefined, _description = undefined, _builtin_application_permissions = undefined, _product_bundles = undefined) constructor
{
    name = _name;
    type = _type;
    parent = _parent;
    applicationId = _application_id;
    applicationSecret = _application_secret;
    id = _id;
    description = _description;
    builtinApplicationPermissions = _builtin_application_permissions;
    productBundles = _product_bundles;
}

/**
 * @func ElementsFacebookIapReceipt(_user_id = undefined, _purchase_id = undefined, _reporting_id = undefined, _sku = undefined, _grant_time = undefined, _expiration_time = undefined, _developer_payload = undefined)
 * @param {String} [_user_id] The id of the Facebook User that purchased the IAP.
 * @param {String} [_purchase_id] The original transaction identifier of the IAP. We use this as the key for the db object as well as the {@link RewardIssuance} context. (For now, we do not persist the transaction_id, only the original_transaction_id.)
 * @param {String} [_reporting_id] A secondary identifier for troubleshooting/auditing (and potential future correlation)
 * @param {String} [_sku] The SKU of the IAP as it is listed in your IAP definitions.
 * @param {Real} [_grant_time] Time when the user gained entitlement to the item (Unix timestamp).
 * @param {Real} [_expiration_time] Time when the user will lose entitlement to the item (Unix timestamp). If the user has an indefinite entitlement it will be 0.
 * @param {String} [_developer_payload] The original purchase date.
 */
function ElementsFacebookIapReceipt(_user_id = undefined, _purchase_id = undefined, _reporting_id = undefined, _sku = undefined, _grant_time = undefined, _expiration_time = undefined, _developer_payload = undefined) constructor
{
    userId = _user_id;
    purchaseId = _purchase_id;
    reportingId = _reporting_id;
    sku = _sku;
    grantTime = _grant_time;
    expirationTime = _expiration_time;
    developerPayload = _developer_payload;
}

/**
 * @func ElementsFCMRegistration(_registration_token, _id = undefined, _profile = undefined)
 * Represents a Firebase Cloud Messaging Registration Token
 * @param {String} _registration_token The actual Firebase registration.
 * @param {String} [_id] The the unique id of the token stored in the database.
 * @param {Struct.ElementsProfile} [_profile]
 */
function ElementsFCMRegistration(_registration_token, _id = undefined, _profile = undefined) constructor
{
    registrationToken = _registration_token;
    id = _id;
    profile = _profile;
}

/**
 * @func ElementsFirebaseApplicationConfiguration(_name, _type, _parent, _project_id, _service_account_credentials, _id = undefined, _description = undefined)
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {Struct.ElementsApplication} _parent
 * @param {String} _project_id The contents of the serviceAccountCredentials.json file.
 * @param {String} _service_account_credentials The contents of the serviceAccountCredentials.json file.
 * @param {String} [_id] The database assigned ID for the application configuration.
 * @param {String} [_description]
 */
function ElementsFirebaseApplicationConfiguration(_name, _type, _parent, _project_id, _service_account_credentials, _id = undefined, _description = undefined) constructor
{
    name = _name;
    type = _type;
    parent = _parent;
    projectId = _project_id;
    serviceAccountCredentials = _service_account_credentials;
    id = _id;
    description = _description;
}

/**
 * @func ElementsFormDataBodyPart(_content_disposition = undefined, _entity = undefined, _headers = undefined, _media_type = undefined, _message_body_workers = undefined, _parent = undefined, _providers = undefined, _name = undefined, _value = undefined, _content = undefined, _file_name = undefined, _form_data_content_disposition = undefined, _simple = undefined, _parameterized_headers = undefined)
 * @param {Struct.ElementsContentDisposition} [_content_disposition]
 * @param {Struct} [_entity]
 * @param {Struct.ElementsFormDataBodyPartHeaders} [_headers]
 * @param {Struct.ElementsMediaType} [_media_type]
 * @param {Struct.ElementsMessageBodyWorkers} [_message_body_workers]
 * @param {Struct.ElementsMultiPart} [_parent]
 * @param {Struct.ElementsProviders} [_providers]
 * @param {String} [_name]
 * @param {String} [_value]
 * @param {Struct} [_content]
 * @param {String} [_file_name]
 * @param {Struct.ElementsFormDataContentDisposition} [_form_data_content_disposition]
 * @param {Bool} [_simple]
 * @param {Struct.ElementsFormDataBodyPartParameterizedHeaders} [_parameterized_headers]
 */
function ElementsFormDataBodyPart(_content_disposition = undefined, _entity = undefined, _headers = undefined, _media_type = undefined, _message_body_workers = undefined, _parent = undefined, _providers = undefined, _name = undefined, _value = undefined, _content = undefined, _file_name = undefined, _form_data_content_disposition = undefined, _simple = undefined, _parameterized_headers = undefined) constructor
{
    contentDisposition = _content_disposition;
    entity = _entity;
    headers = _headers;
    mediaType = _media_type;
    messageBodyWorkers = _message_body_workers;
    parent = _parent;
    providers = _providers;
    name = _name;
    value = _value;
    content = _content;
    fileName = _file_name;
    formDataContentDisposition = _form_data_content_disposition;
    simple = _simple;
    parameterizedHeaders = _parameterized_headers;
}

/**
 * @func ElementsFormDataBodyPartHeaders(_empty = undefined)
 * @param {Bool} [_empty]
 */
function ElementsFormDataBodyPartHeaders(_empty = undefined) constructor
{
    empty = _empty;
}

/**
 * @func ElementsFormDataBodyPartParameterizedHeaders(_empty = undefined)
 * @param {Bool} [_empty]
 */
function ElementsFormDataBodyPartParameterizedHeaders(_empty = undefined) constructor
{
    empty = _empty;
}

/**
 * @func ElementsFormDataContentDisposition(_type = undefined, _parameters = undefined, _file_name = undefined, _creation_date = undefined, _modification_date = undefined, _read_date = undefined, _size = undefined, _name = undefined)
 * @param {String} [_type]
 * @param {Struct.ElementsFormDataContentDispositionParameters} [_parameters]
 * @param {String} [_file_name]
 * @param {String} [_creation_date]
 * @param {String} [_modification_date]
 * @param {String} [_read_date]
 * @param {Real} [_size]
 * @param {String} [_name]
 */
function ElementsFormDataContentDisposition(_type = undefined, _parameters = undefined, _file_name = undefined, _creation_date = undefined, _modification_date = undefined, _read_date = undefined, _size = undefined, _name = undefined) constructor
{
    type = _type;
    parameters = _parameters;
    fileName = _file_name;
    creationDate = _creation_date;
    modificationDate = _modification_date;
    readDate = _read_date;
    size = _size;
    name = _name;
}

/**
 * @func ElementsFormDataContentDispositionParameters()
 */
function ElementsFormDataContentDispositionParameters() constructor
{
}

/**
 * @func ElementsFriend(_id = undefined, _user = undefined, _friendship = undefined, _profiles = undefined)
 * Represents a player's friend.  This includes the basic information of the friend as well as the friendship type, profiles he or she has across games, and 
 * @param {String} [_id] The unique ID of the friendship.
 * @param {Struct.ElementsUser} [_user] The User associated with this Profile.
 * @param {String} [_friendship] The friendship type.
 * @param {Array<Struct.ElementsProfile>} [_profiles] The profiles which are associated with the friend user.
 */
function ElementsFriend(_id = undefined, _user = undefined, _friendship = undefined, _profiles = undefined) constructor
{
    id = _id;
    user = _user;
    friendship = _friendship;
    profiles = _profiles;
}

/**
 * @func ElementsGooglePlayApplicationConfiguration(_name, _type, _parent, _id = undefined, _description = undefined, _application_id = undefined, _json_key = undefined, _product_bundles = undefined)
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {Struct.ElementsApplication} _parent
 * @param {String} [_id] The database assigned ID for the application configuration.
 * @param {String} [_description]
 * @param {String} [_application_id]
 * @param {Struct.ElementsGooglePlayApplicationConfigurationJsonKey} [_json_key]
 * @param {Array<Struct.ElementsProductBundle>} [_product_bundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 */
function ElementsGooglePlayApplicationConfiguration(_name, _type, _parent, _id = undefined, _description = undefined, _application_id = undefined, _json_key = undefined, _product_bundles = undefined) constructor
{
    name = _name;
    type = _type;
    parent = _parent;
    id = _id;
    description = _description;
    applicationId = _application_id;
    jsonKey = _json_key;
    productBundles = _product_bundles;
}

/**
 * @func ElementsGooglePlayApplicationConfigurationJsonKey()
 */
function ElementsGooglePlayApplicationConfigurationJsonKey() constructor
{
}

/**
 * @func ElementsHealthStatus(_checks_failed = undefined, _checks_performed = undefined, _overall_health = undefined, _problems = undefined, _instance_status = undefined, _database_status = undefined, _discovery_health_status = undefined, _routing_health_status = undefined, _invoker_health_status = undefined)
 * @param {Real} [_checks_failed]
 * @param {Real} [_checks_performed]
 * @param {Real} [_overall_health]
 * @param {Array<String>} [_problems]
 * @param {Struct.ElementsInstanceHealthStatus} [_instance_status]
 * @param {Array<Struct.ElementsDatabaseHealthStatus>} [_database_status]
 * @param {Struct.ElementsDiscoveryHealthStatus} [_discovery_health_status]
 * @param {Struct.ElementsRoutingHealthStatus} [_routing_health_status]
 * @param {Struct.ElementsInvokerHealthStatus} [_invoker_health_status]
 */
function ElementsHealthStatus(_checks_failed = undefined, _checks_performed = undefined, _overall_health = undefined, _problems = undefined, _instance_status = undefined, _database_status = undefined, _discovery_health_status = undefined, _routing_health_status = undefined, _invoker_health_status = undefined) constructor
{
    checksFailed = _checks_failed;
    checksPerformed = _checks_performed;
    overallHealth = _overall_health;
    problems = _problems;
    instanceStatus = _instance_status;
    databaseStatus = _database_status;
    discoveryHealthStatus = _discovery_health_status;
    routingHealthStatus = _routing_health_status;
    invokerHealthStatus = _invoker_health_status;
}

/**
 * @func ElementsIndexMetadataObject(_identifier = undefined)
 * @param {Struct} [_identifier]
 */
function ElementsIndexMetadataObject(_identifier = undefined) constructor
{
    identifier = _identifier;
}

/**
 * @func ElementsIndexPlanObject(_id = undefined, _state = undefined, _steps = undefined)
 * @param {String} [_id]
 * @param {String} [_state]
 * @param {Struct.ElementsIndexPlanStepObject} [_steps]
 */
function ElementsIndexPlanObject(_id = undefined, _state = undefined, _steps = undefined) constructor
{
    id = _id;
    state = _state;
    steps = _steps;
}

/**
 * @func ElementsIndexPlanStepObject(_description = undefined, _operation = undefined, _index_metadata = undefined)
 * @param {String} [_description]
 * @param {String} [_operation]
 * @param {Struct.ElementsIndexMetadataObject} [_index_metadata]
 */
function ElementsIndexPlanStepObject(_description = undefined, _operation = undefined, _index_metadata = undefined) constructor
{
    description = _description;
    operation = _operation;
    indexMetadata = _index_metadata;
}

/**
 * @func ElementsInspectUploadedElmBody(_elm = undefined)
 * @param {Struct} [_elm] The ELM file to inspect.
 */
function ElementsInspectUploadedElmBody(_elm = undefined) constructor
{
    elm = _elm;
}

/**
 * @func ElementsInstanceHealthStatus(_instance_id = undefined, _node_ids = undefined)
 * @param {String} [_instance_id]
 * @param {Array<String>} [_node_ids]
 */
function ElementsInstanceHealthStatus(_instance_id = undefined, _node_ids = undefined) constructor
{
    instanceId = _instance_id;
    nodeIds = _node_ids;
}

/**
 * @func ElementsInventoryItem(_user, _item, _quantity, _priority, _id = undefined)
 * Should the redemption be successful, the Inventory Item that was updated. Otherwise, null.
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {Struct.ElementsItem} _item The Item to be issued upon redemption.
 * @param {Real} _quantity The quantity of the Item in inventory
 * @param {Real} _priority The priority of this Item grouping in inventory (for stacked/packaged inventory support)
 * @param {String} [_id] The unique ID of the inventory item itself.
 */
function ElementsInventoryItem(_user, _item, _quantity, _priority, _id = undefined) constructor
{
    user = _user;
    item = _item;
    quantity = _quantity;
    priority = _priority;
    id = _id;
}

/**
 * @func ElementsInviteViaPhonesRequest(_phone_numbers = undefined)
 * Represents a request to invite users with phone numbers list
 * @param {Array<String>} [_phone_numbers] The list of phone numbers
 */
function ElementsInviteViaPhonesRequest(_phone_numbers = undefined) constructor
{
    phoneNumbers = _phone_numbers;
}

/**
 * @func ElementsInviteViaPhonesResponse(_matched = undefined)
 * Represents a response to invite users with phone numbers list
 * @param {Array<Struct.ElementsPhoneMatchedInvitation>} [_matched] The list of objects representing matched phone numbers
 */
function ElementsInviteViaPhonesResponse(_matched = undefined) constructor
{
    matched = _matched;
}

/**
 * @func ElementsInvokerHealthStatus(_priorities = undefined, _connected_peers = undefined)
 * @param {Array<String>} [_priorities]
 * @param {Array<String>} [_connected_peers]
 */
function ElementsInvokerHealthStatus(_priorities = undefined, _connected_peers = undefined) constructor
{
    priorities = _priorities;
    connectedPeers = _connected_peers;
}

/**
 * @func ElementsIosApplicationConfiguration(_name, _type, _parent, _application_id, _id = undefined, _description = undefined, _product_bundles = undefined)
 * Configuration for the iOS Application Configuration
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {Struct.ElementsApplication} _parent
 * @param {String} _application_id
 * @param {String} [_id] The database assigned ID for the application configuration.
 * @param {String} [_description]
 * @param {Array<Struct.ElementsProductBundle>} [_product_bundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 */
function ElementsIosApplicationConfiguration(_name, _type, _parent, _application_id, _id = undefined, _description = undefined, _product_bundles = undefined) constructor
{
    name = _name;
    type = _type;
    parent = _parent;
    applicationId = _application_id;
    id = _id;
    description = _description;
    productBundles = _product_bundles;
}

/**
 * @func ElementsItem(_name, _display_name, _description, _category, _id = undefined, _tags = undefined, _metadata_spec = undefined, _metadata = undefined, _public_visible = undefined)
 * The Item to be issued upon redemption.
 * @param {String} _name
 * @param {String} _display_name
 * @param {String} _description
 * @param {String} _category
 * @param {String} [_id]
 * @param {Array<String>} [_tags]
 * @param {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 * @param {Struct.ElementsItemMetadata} [_metadata]
 * @param {Bool} [_public_visible]
 */
function ElementsItem(_name, _display_name, _description, _category, _id = undefined, _tags = undefined, _metadata_spec = undefined, _metadata = undefined, _public_visible = undefined) constructor
{
    name = _name;
    displayName = _display_name;
    description = _description;
    category = _category;
    id = _id;
    tags = _tags;
    metadataSpec = _metadata_spec;
    metadata = _metadata;
    publicVisible = _public_visible;
}

/**
 * @func ElementsItemLedgerEntry(_id = undefined, _inventory_item_id = undefined, _item_category = undefined, _item_id = undefined, _user_id = undefined, _actor_id = undefined, _event_type = undefined, _timestamp = undefined, _quantity_before = undefined, _quantity_after = undefined, _metadata_before = undefined, _metadata_after = undefined)
 * An immutable audit record for a single inventory or item-catalog lifecycle event.
 * @param {String} [_id] The unique ID of this ledger entry.
 * @param {String} [_inventory_item_id] ID of the inventory item affected; null for item-catalog events.
 * @param {String} [_item_category] The inventory category (FUNGIBLE or DISTINCT); null for item-catalog events.
 * @param {String} [_item_id] ID of the item definition.
 * @param {String} [_user_id] ID of the user who owns the inventory item; null for item-catalog events.
 * @param {String} [_actor_id] ID of the user who performed the action; null when triggered by a system or plugin without a user context.
 * @param {String} [_event_type] The type of lifecycle event recorded in an item ledger entry.
 * @param {Real} [_timestamp] Epoch milliseconds when the event occurred.
 * @param {Real} [_quantity_before] Quantity before the change; populated for QUANTITY_ADJUSTED events only.
 * @param {Real} [_quantity_after] Quantity after the change; populated for CREATED, QUANTITY_ADJUSTED, and QUANTITY_SET events.
 * @param {Struct.ElementsItemLedgerEntryMetadataBefore} [_metadata_before] Metadata snapshot before the change; populated for METADATA_UPDATED events only.
 * @param {Struct.ElementsItemLedgerEntryMetadataAfter} [_metadata_after] Metadata snapshot after the change; populated for METADATA_UPDATED events only.
 */
function ElementsItemLedgerEntry(_id = undefined, _inventory_item_id = undefined, _item_category = undefined, _item_id = undefined, _user_id = undefined, _actor_id = undefined, _event_type = undefined, _timestamp = undefined, _quantity_before = undefined, _quantity_after = undefined, _metadata_before = undefined, _metadata_after = undefined) constructor
{
    id = _id;
    inventoryItemId = _inventory_item_id;
    itemCategory = _item_category;
    itemId = _item_id;
    userId = _user_id;
    actorId = _actor_id;
    eventType = _event_type;
    timestamp = _timestamp;
    quantityBefore = _quantity_before;
    quantityAfter = _quantity_after;
    metadataBefore = _metadata_before;
    metadataAfter = _metadata_after;
}

/**
 * @func ElementsItemLedgerEntryMetadataAfter()
 * Metadata snapshot after the change; populated for METADATA_UPDATED events only.
 */
function ElementsItemLedgerEntryMetadataAfter() constructor
{
}

/**
 * @func ElementsItemLedgerEntryMetadataBefore()
 * Metadata snapshot before the change; populated for METADATA_UPDATED events only.
 */
function ElementsItemLedgerEntryMetadataBefore() constructor
{
}

/**
 * @func ElementsItemMetadata()
 */
function ElementsItemMetadata() constructor
{
}

/**
 * @func ElementsJsonSchema(_get_id = undefined, _get_schema = undefined, _title = undefined, _description = undefined, _type = undefined, _properties = undefined, _required = undefined)
 * A Subset of the JSON-Schema - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} [_get_id] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} [_get_schema] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} [_title] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} [_description] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} [_type] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {Struct.ElementsJsonSchemaProperties} [_properties] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {Array<String>} [_required] See - https://json-schema.org/draft/2020-12/json-schema-core
 */
function ElementsJsonSchema(_get_id = undefined, _get_schema = undefined, _title = undefined, _description = undefined, _type = undefined, _properties = undefined, _required = undefined) constructor
{
    self[$ "get$id"] = _get_id;
    self[$ "get$schema"] = _get_schema;
    title = _title;
    description = _description;
    type = _type;
    properties = _properties;
    required = _required;
}

/**
 * @func ElementsJsonSchemaProperties()
 * See - https://json-schema.org/draft/2020-12/json-schema-core
 */
function ElementsJsonSchemaProperties() constructor
{
}

/**
 * @func ElementsJsonSchemaProperty(_type = undefined, _title = undefined, _description = undefined, _required = undefined)
 * See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} [_type] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} [_title] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} [_description] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {Array<String>} [_required] See - https://json-schema.org/draft/2020-12/json-schema-core
 */
function ElementsJsonSchemaProperty(_type = undefined, _title = undefined, _description = undefined, _required = undefined) constructor
{
    type = _type;
    title = _title;
    description = _description;
    required = _required;
}

/**
 * @func ElementsJWK(_alg = undefined, _kid = undefined, _kty = undefined, _use = undefined, _e = undefined, _n = undefined, _crv = undefined, _x = undefined, _y = undefined)
 * A set of JWKs containing the keys required to validate JWT signatures.
 * @param {String} [_alg] Algorithm (e.g. RS256)
 * @param {String} [_kid] Key id (unique to issuer)
 * @param {String} [_kty] Key type (e.g. RSA)
 * @param {String} [_use] The intended use (e.g. sig)
 * @param {String} [_e] Base64url encoded exponent (RSA keys only)
 * @param {String} [_n] Pub key modulus (RSA keys only)
 * @param {String} [_crv] Curve name, e.g. P-256, P-384, P-521 (EC keys only)
 * @param {String} [_x] Base64url encoded x coordinate (EC keys only)
 * @param {String} [_y] Base64url encoded y coordinate (EC keys only)
 */
function ElementsJWK(_alg = undefined, _kid = undefined, _kty = undefined, _use = undefined, _e = undefined, _n = undefined, _crv = undefined, _x = undefined, _y = undefined) constructor
{
    alg = _alg;
    kid = _kid;
    kty = _kty;
    use = _use;
    e = _e;
    n = _n;
    crv = _crv;
    x = _x;
    y = _y;
}

/**
 * @func ElementsLargeObject(_path, _access_permissions, _id = undefined, _url = undefined, _mime_type = undefined, _state = undefined, _last_modified = undefined, _original_filename = undefined)
 * @param {String} _path The path to the file in the underlying bucket.
 * @param {Struct.ElementsAccessPermissions} _access_permissions Permission associated with LargeObject.
 * @param {String} [_id] The unique ID of the LargeObject.
 * @param {String} [_url] The URL where the binary contents of the LargeObject may be read. May be null, since Path param or Id is pointer for object.
 * @param {String} [_mime_type] The MIME type of the LargeObject.
 * @param {String} [_state] Represents the state of the large object.
 * @param {String} [_last_modified] Date of last modification.
 * @param {String} [_original_filename] The original name of the file.
 */
function ElementsLargeObject(_path, _access_permissions, _id = undefined, _url = undefined, _mime_type = undefined, _state = undefined, _last_modified = undefined, _original_filename = undefined) constructor
{
    path = _path;
    accessPermissions = _access_permissions;
    id = _id;
    url = _url;
    mimeType = _mime_type;
    state = _state;
    lastModified = _last_modified;
    originalFilename = _original_filename;
}

/**
 * @func ElementsLargeObjectReference(_id = undefined, _url = undefined, _mime_type = undefined, _state = undefined, _last_modified = undefined)
 * Image object stored in EL large objects storage.
 * @param {String} [_id] The unique ID of the LargeObject.
 * @param {String} [_url] The URL where the binary contents of the LargeObject may be read.
 * @param {String} [_mime_type] The MIME type of the LargeObject.
 * @param {String} [_state] Represents the state of the large object.
 * @param {String} [_last_modified] Date of last modification
 */
function ElementsLargeObjectReference(_id = undefined, _url = undefined, _mime_type = undefined, _state = undefined, _last_modified = undefined) constructor
{
    id = _id;
    url = _url;
    mimeType = _mime_type;
    state = _state;
    lastModified = _last_modified;
}

/**
 * @func ElementsLeaderboard(_name, _time_strategy_type, _score_strategy_type, _title, _score_units, _id = undefined, _first_epoch_timestamp = undefined, _epoch_interval = undefined)
 * @param {String} _name The name of the leaderboard.  This must be unique across all leaderboards.
 * @param {String} _time_strategy_type The time strategy for the leaderboard. Current options are ALL_TIME and EPOCHAL.
 * @param {String} _score_strategy_type The score strategy for the leaderboard. Current options are OVERWRITE_IF_GREATER and ACCUMULATE.
 * @param {String} _title The user-presentable name or title for for the leaderboard.
 * @param {String} _score_units The units-of measure for the score type of the leaderboard.
 * @param {String} [_id]
 * @param {Real} [_first_epoch_timestamp] The time at which the leaderboard epoch intervals should begin (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then epochInterval must also be provided.
 * @param {Real} [_epoch_interval] The duration for a leaderboard epoch interval (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then firstEpochTimestamp must also be provided.
 */
function ElementsLeaderboard(_name, _time_strategy_type, _score_strategy_type, _title, _score_units, _id = undefined, _first_epoch_timestamp = undefined, _epoch_interval = undefined) constructor
{
    name = _name;
    timeStrategyType = _time_strategy_type;
    scoreStrategyType = _score_strategy_type;
    title = _title;
    scoreUnits = _score_units;
    id = _id;
    firstEpochTimestamp = _first_epoch_timestamp;
    epochInterval = _epoch_interval;
}

/**
 * @func ElementsLinkEmailPasswordRequest(_email, _password)
 * @param {String} _email
 * @param {String} _password
 */
function ElementsLinkEmailPasswordRequest(_email, _password) constructor
{
    email = _email;
    password = _password;
}

/**
 * @func ElementsLinkUsernamePasswordRequest(_username, _password)
 * @param {String} _username
 * @param {String} _password
 */
function ElementsLinkUsernamePasswordRequest(_username, _password) constructor
{
    username = _username;
    password = _password;
}

/**
 * @func ElementsMatchmakingApplicationConfiguration(_name, _type, _parent, _id = undefined, _description = undefined, _success = undefined, _matchmaker = undefined, _max_profiles = undefined, _linger_seconds = undefined, _timeout_seconds = undefined, _metadata = undefined, _metadata_spec = undefined)
 * This configures the matchmaking system for the application. This defines the queue name and the Matchmacker to use when finding players to match. Currently FIFO is builtin and is the default.
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {Struct.ElementsApplication} _parent
 * @param {String} [_id] The database assigned ID for the application configuration.
 * @param {String} [_description]
 * @param {Struct.ElementsCallbackDefinition} [_success] Defines a script method and a module to invoke.
 * @param {Struct.ElementsElementServiceReference} [_matchmaker] Describes the matchmaker (dev.getelements.elements.sdk.dao.Matchmaker) to use for this configuration.
 * @param {Real} [_max_profiles] The maximum number of profiles that can be matched in a single match.
 * @param {Real} [_linger_seconds] The amount of time a match will linger after it is marked as expired.
 * @param {Real} [_timeout_seconds] The absolute timeout of the match. A match will be automatically deleted after this amount of time.
 * @param {Struct.ElementsMatchmakingApplicationConfigurationMetadata} [_metadata] The metadata for this matchmaking configuration. This will be copied to the match when it is created.
 * @param {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 */
function ElementsMatchmakingApplicationConfiguration(_name, _type, _parent, _id = undefined, _description = undefined, _success = undefined, _matchmaker = undefined, _max_profiles = undefined, _linger_seconds = undefined, _timeout_seconds = undefined, _metadata = undefined, _metadata_spec = undefined) constructor
{
    name = _name;
    type = _type;
    parent = _parent;
    id = _id;
    description = _description;
    success = _success;
    matchmaker = _matchmaker;
    maxProfiles = _max_profiles;
    lingerSeconds = _linger_seconds;
    timeoutSeconds = _timeout_seconds;
    metadata = _metadata;
    metadataSpec = _metadata_spec;
}

/**
 * @func ElementsMatchmakingApplicationConfigurationMetadata()
 * The metadata for this matchmaking configuration. This will be copied to the match when it is created.
 */
function ElementsMatchmakingApplicationConfigurationMetadata() constructor
{
}

/**
 * @func ElementsMediaType(_type = undefined, _subtype = undefined, _parameters = undefined, _wildcard_type = undefined, _wildcard_subtype = undefined)
 * @param {String} [_type]
 * @param {String} [_subtype]
 * @param {Struct.ElementsMediaTypeParameters} [_parameters]
 * @param {Bool} [_wildcard_type]
 * @param {Bool} [_wildcard_subtype]
 */
function ElementsMediaType(_type = undefined, _subtype = undefined, _parameters = undefined, _wildcard_type = undefined, _wildcard_subtype = undefined) constructor
{
    type = _type;
    subtype = _subtype;
    parameters = _parameters;
    wildcardType = _wildcard_type;
    wildcardSubtype = _wildcard_subtype;
}

/**
 * @func ElementsMediaTypeParameters()
 */
function ElementsMediaTypeParameters() constructor
{
}

/**
 * @func ElementsMessageBodyWorkers()
 */
function ElementsMessageBodyWorkers() constructor
{
}

/**
 * @func ElementsMetadata(_id = undefined, _name = undefined, _metadata = undefined, _metadata_spec = undefined, _access_level = undefined)
 * Represents a custom metadata object.
 * @param {String} [_id] The metadata object's database assigned unique ID.
 * @param {String} [_name] A unique name for the metadata object.
 * @param {Struct.ElementsMetadataMetadata} [_metadata] An object containing the metadata payload as key-value pairs.
 * @param {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 * @param {String} [_access_level] The minimum level of access required to view this metadata.
 */
function ElementsMetadata(_id = undefined, _name = undefined, _metadata = undefined, _metadata_spec = undefined, _access_level = undefined) constructor
{
    id = _id;
    name = _name;
    metadata = _metadata;
    metadataSpec = _metadata_spec;
    accessLevel = _access_level;
}

/**
 * @func ElementsMetadataMetadata()
 * An object containing the metadata payload as key-value pairs.
 */
function ElementsMetadataMetadata() constructor
{
}

/**
 * @func ElementsMetadataSpec(_name, _type, _properties, _id = undefined)
 * Represents a spec for metadata.
 * @param {String} _name The Name of the schema.
 * @param {String} _type The type of the tab itself.
 * @param {Array<Struct.ElementsMetadataSpecProperty>} _properties The tabs of the metadata spec.
 * @param {String} [_id] The unique ID of the schema itself.
 */
function ElementsMetadataSpec(_name, _type, _properties, _id = undefined) constructor
{
    name = _name;
    type = _type;
    properties = _properties;
    id = _id;
}

/**
 * @func ElementsMetadataSpecProperty(_name, _display_name, _type, _required = undefined, _placeholder = undefined, _default_value = undefined, _properties = undefined)
 * The tabs of the metadata spec.
 * @param {String} _name The unique name of the field
 * @param {String} _display_name The display name of the field
 * @param {String} _type The field type
 * @param {Bool} [_required] True if the field is required.
 * @param {String} [_placeholder] The placeholder description when displaying in the editor.
 * @param {Struct} [_default_value] The default description, null if left unspecified.
 * @param {Array<Struct.ElementsMetadataSpecProperty>} [_properties]
 */
function ElementsMetadataSpecProperty(_name, _display_name, _type, _required = undefined, _placeholder = undefined, _default_value = undefined, _properties = undefined) constructor
{
    name = _name;
    displayName = _display_name;
    type = _type;
    required = _required;
    placeholder = _placeholder;
    defaultValue = _default_value;
    properties = _properties;
}

/**
 * @func ElementsMission(_name, _display_name, _description, _id = undefined, _tags = undefined, _steps = undefined, _final_repeat_step = undefined, _metadata = undefined)
 * @param {String} _name The name of the mission
 * @param {String} _display_name The display name for the mission
 * @param {String} _description The description of the mission
 * @param {String} [_id] The unique ID of the mission
 * @param {Array<String>} [_tags] The tags used to categorize this mission
 * @param {Array<Struct.ElementsStep>} [_steps] The steps that constitute the mission (may be null if finalRepeatStep is specified)
 * @param {Struct.ElementsStep} [_final_repeat_step] The final repeating step (may be null if step(s) are specified)
 * @param {Struct.ElementsMissionMetadata} [_metadata] The metadata for this mission
 */
function ElementsMission(_name, _display_name, _description, _id = undefined, _tags = undefined, _steps = undefined, _final_repeat_step = undefined, _metadata = undefined) constructor
{
    name = _name;
    displayName = _display_name;
    description = _description;
    id = _id;
    tags = _tags;
    steps = _steps;
    finalRepeatStep = _final_repeat_step;
    metadata = _metadata;
}

/**
 * @func ElementsMissionMetadata()
 * The metadata for this mission
 */
function ElementsMissionMetadata() constructor
{
}

/**
 * @func ElementsMockSessionCreation(_session_secret = undefined, _session = undefined, _user_expires_at = undefined, _password = undefined)
 * The mock session creation.
 * @param {String} [_session_secret] The Session Secret to pass to subsequent requests through headers.
 * @param {Struct.ElementsSession} [_session] The Session object generated by the request.
 * @param {Real} [_user_expires_at] The assocaited mock user will automatically be deleted at supplied time.
 * @param {String} [_password] The randomly-assigned password for the mock user.
 */
function ElementsMockSessionCreation(_session_secret = undefined, _session = undefined, _user_expires_at = undefined, _password = undefined) constructor
{
    sessionSecret = _session_secret;
    session = _session;
    userExpiresAt = _user_expires_at;
    password = _password;
}

/**
 * @func ElementsMockSessionRequest(_lifetime_in_seconds = undefined, _application = undefined)
 * Used to create a mock session with the server.  This will create a temporary user as well which will exist for a short period of time
 * @param {Real} [_lifetime_in_seconds] The lifetime of the user in seconds.  After this amount of time,
 * @param {Struct.ElementsApplication} [_application]
 */
function ElementsMockSessionRequest(_lifetime_in_seconds = undefined, _application = undefined) constructor
{
    lifetimeInSeconds = _lifetime_in_seconds;
    application = _application;
}

/**
 * @func ElementsMultiMatch(_configuration, _id = undefined, _join_code = undefined, _status = undefined, _metadata = undefined, _count = undefined, _expiry = undefined, _created = undefined)
 * Represents a multi-match in the matchmaking system.
 * @param {Struct.ElementsMatchmakingApplicationConfiguration} _configuration This configures the matchmaking system for the application. This defines the queue name and the Matchmacker to use when finding players to match. Currently FIFO is builtin and is the default.
 * @param {String} [_id] The unique ID of the match.
 * @param {Struct.ElementsUniqueCode} [_join_code] Represents a unique code with an identifier, the code itself, and an expiration timestamp.
 * @param {String} [_status] The status of the match.
 * @param {Struct.ElementsMultiMatchMetadata} [_metadata] The metadata of hte multi-match, which can be used to store additional information about the match.
 * @param {Real} [_count] The number of players currently in the match.
 * @param {Real} [_expiry] The expiry time of the match in seconds. If not set, the match will not expire.
 * @param {Real} [_created] The timestamp at which the match was created, in milliseconds since epoch.
 */
function ElementsMultiMatch(_configuration, _id = undefined, _join_code = undefined, _status = undefined, _metadata = undefined, _count = undefined, _expiry = undefined, _created = undefined) constructor
{
    configuration = _configuration;
    id = _id;
    joinCode = _join_code;
    status = _status;
    metadata = _metadata;
    count = _count;
    expiry = _expiry;
    created = _created;
}

/**
 * @func ElementsMultiMatchMetadata()
 * The metadata of hte multi-match, which can be used to store additional information about the match.
 */
function ElementsMultiMatchMetadata() constructor
{
}

/**
 * @func ElementsMultiPart(_content_disposition = undefined, _entity = undefined, _headers = undefined, _media_type = undefined, _message_body_workers = undefined, _parent = undefined, _providers = undefined, _body_parts = undefined, _parameterized_headers = undefined)
 * @param {Struct.ElementsContentDisposition} [_content_disposition]
 * @param {Struct} [_entity]
 * @param {Struct.ElementsMultiPartHeaders} [_headers]
 * @param {Struct.ElementsMediaType} [_media_type]
 * @param {Struct.ElementsMessageBodyWorkers} [_message_body_workers]
 * @param {Struct.ElementsMultiPart} [_parent]
 * @param {Struct.ElementsProviders} [_providers]
 * @param {Array<Struct.ElementsBodyPart>} [_body_parts]
 * @param {Struct.ElementsMultiPartParameterizedHeaders} [_parameterized_headers]
 */
function ElementsMultiPart(_content_disposition = undefined, _entity = undefined, _headers = undefined, _media_type = undefined, _message_body_workers = undefined, _parent = undefined, _providers = undefined, _body_parts = undefined, _parameterized_headers = undefined) constructor
{
    contentDisposition = _content_disposition;
    entity = _entity;
    headers = _headers;
    mediaType = _media_type;
    messageBodyWorkers = _message_body_workers;
    parent = _parent;
    providers = _providers;
    bodyParts = _body_parts;
    parameterizedHeaders = _parameterized_headers;
}

/**
 * @func ElementsMultiPartHeaders(_empty = undefined)
 * @param {Bool} [_empty]
 */
function ElementsMultiPartHeaders(_empty = undefined) constructor
{
    empty = _empty;
}

/**
 * @func ElementsMultiPartParameterizedHeaders(_empty = undefined)
 * @param {Bool} [_empty]
 */
function ElementsMultiPartParameterizedHeaders(_empty = undefined) constructor
{
    empty = _empty;
}

/**
 * @func ElementsMultivaluedMapStringParameterizedHeader(_empty = undefined)
 * @param {Bool} [_empty]
 */
function ElementsMultivaluedMapStringParameterizedHeader(_empty = undefined) constructor
{
    empty = _empty;
}

/**
 * @func ElementsMultivaluedMapStringString(_empty = undefined)
 * @param {Bool} [_empty]
 */
function ElementsMultivaluedMapStringString(_empty = undefined) constructor
{
    empty = _empty;
}

/**
 * @func ElementsOAuth2AuthScheme(_name, _validation_url, _method, _id = undefined, _headers = undefined, _params = undefined, _body = undefined, _response_id_mapping = undefined, _response_valid_mapping = undefined, _response_valid_expected_value = undefined, _valid_status_codes = undefined, _body_type = undefined)
 * The full JSON response as described in AuthScheme
 * @param {String} _name A unique name used to identify the scheme within the instance of Elements. If using the same OAuth2 provider (e.g. Steam), it is recommended to suffix the name for each application when using multitenancy, e.g. steam_game1, steam_game2, etc.
 * @param {String} _validation_url The URL to send the user token validation request to.
 * @param {String} _method HTTP method for the validation request (GET or POST).
 * @param {String} [_id] The unique ID of the auth scheme.
 * @param {Array<Struct.ElementsOAuth2RequestKeyValue>} [_headers] The headers required for the validation request.
 * @param {Array<Struct.ElementsOAuth2RequestKeyValue>} [_params] The query parameters required for the validation request.
 * @param {Array<Struct.ElementsOAuth2RequestKeyValue>} [_body] The body parameters for the validation request when using POST.
 * For FORM_URL_ENCODED, these become form fields (key=value&...).
 * @param {String} [_response_id_mapping] Determines how to map the user id in the response. Will search the response for the corresponding key. For example, if the response is structured like:  {"response": { "params" : { "steamid" : <id> } } } then you only need to input "steamid". Ignored if one of the parameters is marked as user id.
 * @param {String} [_response_valid_mapping] Optional key in the response whose value indicates whether the token/user is valid.
 * For example: "is_valid", "active", or "success".
 * If not set, only the HTTP status code is used.
 * @param {String} [_response_valid_expected_value] Optional expected value for the validation field.
 * If null:
 *   - boolean true is treated as success
 *   - non-empty/non-null for non-boolean values is treated as success.
 * If set, the field's string value must equal this.
 * @param {Array<Real>} [_valid_status_codes] HTTP status codes that are considered "processable" for validation.
 * Any other status is treated as failure before inspecting the body.
 * Defaults to [200].
 * @param {String} [_body_type] How to encode the request body when using POST.
 * FORM_URL_ENCODED corresponds to application/x-www-form-urlencoded.
 */
function ElementsOAuth2AuthScheme(_name, _validation_url, _method, _id = undefined, _headers = undefined, _params = undefined, _body = undefined, _response_id_mapping = undefined, _response_valid_mapping = undefined, _response_valid_expected_value = undefined, _valid_status_codes = undefined, _body_type = undefined) constructor
{
    name = _name;
    validationUrl = _validation_url;
    self[$ "method"] = _method;
    id = _id;
    headers = _headers;
    params = _params;
    body = _body;
    responseIdMapping = _response_id_mapping;
    responseValidMapping = _response_valid_mapping;
    responseValidExpectedValue = _response_valid_expected_value;
    validStatusCodes = _valid_status_codes;
    bodyType = _body_type;
}

/**
 * @func ElementsOAuth2RequestKeyValue(_key = undefined, _value = undefined, _from_client = undefined, _user_id = undefined)
 * The body parameters for the validation request when using POST.
 * For FORM_URL_ENCODED, these become form fields (key=value&...).
 * @param {String} [_key] The key.
 * @param {String} [_value] The value.
 * @param {Bool} [_from_client] If this value should be received from the client, or predefined and stored in the DB.
 * @param {Bool} [_user_id] If true, this parameter's resolved value is treated as the external user identifier
 * to link to your internal user id.
 * Only one parameter should have this set to true per scheme.
 */
function ElementsOAuth2RequestKeyValue(_key = undefined, _value = undefined, _from_client = undefined, _user_id = undefined) constructor
{
    key = _key;
    value = _value;
    fromClient = _from_client;
    userId = _user_id;
}

/**
 * @func ElementsOAuth2SessionRequest(_scheme_id, _request_parameters = undefined, _request_headers = undefined, _profile_id = undefined, _profile_selector = undefined, _application_name_or_id = undefined)
 * @param {String} _scheme_id The OAuth2 scheme ID to use.
 * @param {Struct.ElementsOauth2SessionRequestRequestParameters} [_request_parameters] The request parameters to be used in the token validation request. These will automatically be mapped to the corresponding query param/header/body value defined in the auth scheme.
 * @param {Struct.ElementsOauth2SessionRequestRequestHeaders} [_request_headers] The request headers to be used in the token validation request. This should adhere to any headers marked as fromClient in the auth scheme.Deprecated: All key/values can now be placed in the requestParameters and they will be mapped automatically.
 * Internally, this is combined with requestParameters for backwards compatibility.
 * @param {String} [_profile_id] The profile ID to assign to the session.
 * @param {String} [_profile_selector] A query string to select the profile to use. NOTE: This will not be run if a profileId is specified.
 * @param {String} [_application_name_or_id] The name or ID of an application whose primary profile should be attached to the session. Only used if profileId and profileSelector are not specified. If the application or the user's primary profile for it cannot be resolved, the session is created without a profile.
 */
function ElementsOAuth2SessionRequest(_scheme_id, _request_parameters = undefined, _request_headers = undefined, _profile_id = undefined, _profile_selector = undefined, _application_name_or_id = undefined) constructor
{
    schemeId = _scheme_id;
    requestParameters = _request_parameters;
    requestHeaders = _request_headers;
    profileId = _profile_id;
    profileSelector = _profile_selector;
    applicationNameOrId = _application_name_or_id;
}

/**
 * @func ElementsOauth2SessionRequestRequestHeaders()
 * The request headers to be used in the token validation request. This should adhere to any headers marked as fromClient in the auth scheme.Deprecated: All key/values can now be placed in the requestParameters and they will be mapped automatically.
 * Internally, this is combined with requestParameters for backwards compatibility.
 */
function ElementsOauth2SessionRequestRequestHeaders() constructor
{
}

/**
 * @func ElementsOauth2SessionRequestRequestParameters()
 * The request parameters to be used in the token validation request. These will automatically be mapped to the corresponding query param/header/body value defined in the auth scheme.
 */
function ElementsOauth2SessionRequestRequestParameters() constructor
{
}

/**
 * @func ElementsOculusApplicationConfiguration(_name, _type, _parent, _application_id, _application_secret, _id = undefined, _description = undefined, _builtin_application_permissions = undefined, _product_bundles = undefined)
 * Houses the various parameters required which allow communication with the Oculus API.
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {Struct.ElementsApplication} _parent
 * @param {String} _application_id The AppID as it appears in the Facebook Developer Console
 * @param {String} _application_secret The App Secret as it appears in the Facebook Developer Console
 * @param {String} [_id] The database assigned ID for the application configuration.
 * @param {String} [_description]
 * @param {Array<String>} [_builtin_application_permissions] The set of built-in permissions connected clients will need to request.
 * @param {Array<Struct.ElementsProductBundle>} [_product_bundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 */
function ElementsOculusApplicationConfiguration(_name, _type, _parent, _application_id, _application_secret, _id = undefined, _description = undefined, _builtin_application_permissions = undefined, _product_bundles = undefined) constructor
{
    name = _name;
    type = _type;
    parent = _parent;
    applicationId = _application_id;
    applicationSecret = _application_secret;
    id = _id;
    description = _description;
    builtinApplicationPermissions = _builtin_application_permissions;
    productBundles = _product_bundles;
}

/**
 * @func ElementsOculusIapConsumeResponse(_success = undefined)
 * @param {Bool} [_success]
 */
function ElementsOculusIapConsumeResponse(_success = undefined) constructor
{
    success = _success;
}

/**
 * @func ElementsOculusIapReceipt(_user_id = undefined, _purchase_id = undefined, _reporting_id = undefined, _sku = undefined, _grant_time = undefined, _expiration_time = undefined, _developer_payload = undefined)
 * @param {String} [_user_id] The id of the Oculus User that purchased the IAP.
 * @param {String} [_purchase_id] The original transaction identifier of the IAP. We use this as the key for the db object as well as the {@link RewardIssuance} context. (For now, we do not persist the transaction_id, only the original_transaction_id.)
 * @param {String} [_reporting_id] A secondary identifier for troubleshooting/auditing (and potential future correlation)
 * @param {String} [_sku] The SKU of the IAP as it is listed in your IAP definitions.
 * @param {Real} [_grant_time] Time when the user gained entitlement to the item (Unix timestamp).
 * @param {Real} [_expiration_time] Time when the user will lose entitlement to the item (Unix timestamp). If the user has an indefinite entitlement it will be 0.
 * @param {String} [_developer_payload] The original purchase date.
 */
function ElementsOculusIapReceipt(_user_id = undefined, _purchase_id = undefined, _reporting_id = undefined, _sku = undefined, _grant_time = undefined, _expiration_time = undefined, _developer_payload = undefined) constructor
{
    userId = _user_id;
    purchaseId = _purchase_id;
    reportingId = _reporting_id;
    sku = _sku;
    grantTime = _grant_time;
    expirationTime = _expiration_time;
    developerPayload = _developer_payload;
}

/**
 * @func ElementsOculusIapVerifyReceiptResponse(_success = undefined, _grant_time = undefined, _user_id = undefined, _sku = undefined)
 * @param {Bool} [_success]
 * @param {Real} [_grant_time]
 * @param {String} [_user_id]
 * @param {String} [_sku]
 */
function ElementsOculusIapVerifyReceiptResponse(_success = undefined, _grant_time = undefined, _user_id = undefined, _sku = undefined) constructor
{
    success = _success;
    grantTime = _grant_time;
    userId = _user_id;
    sku = _sku;
}

/**
 * @func ElementsOidcAuthScheme(_issuer, _keys, _id = undefined, _name = undefined, _keys_url = undefined, _media_type = undefined, _keys_fetched_at = undefined)
 * The full JSON response as described in AuthScheme
 * @param {String} _issuer A unique name used to identify the scheme within the instance of Elements. When validating from an external source (e.g. Google or Apple SSO), must match the 'iss' property of the decoded JWT.
 * @param {Array<Struct.ElementsJWK>} _keys A set of JWKs containing the keys required to validate JWT signatures.
 * @param {String} [_id] The unique ID of the auth scheme.
 * @param {String} [_name] The unique name of the auth scheme.
 * @param {String} [_keys_url] The URL for the JWK data. Will attempt to refresh keys if the kid cannot be found in the collection.
 * @param {String} [_media_type] The JWK format. Defaults to application/json
 * @param {Real} [_keys_fetched_at] The epoch second at which 'keys' was last refreshed. Server-managed; not settable via the create/update API.
 */
function ElementsOidcAuthScheme(_issuer, _keys, _id = undefined, _name = undefined, _keys_url = undefined, _media_type = undefined, _keys_fetched_at = undefined) constructor
{
    issuer = _issuer;
    keys = _keys;
    id = _id;
    name = _name;
    keysUrl = _keys_url;
    mediaType = _media_type;
    keysFetchedAt = _keys_fetched_at;
}

/**
 * @func ElementsOidcLoginAttemptConfirmRequest(_confirm_token)
 * Finalizes an account-linking OIDC login attempt by presenting the confirmToken returned when the attempt was started.
 * @param {String} _confirm_token The confirmToken returned in the original POST /oidc/session response.
 */
function ElementsOidcLoginAttemptConfirmRequest(_confirm_token) constructor
{
    confirmToken = _confirm_token;
}

/**
 * @func ElementsOidcLoginAttemptRequest(_provider, _id_token = undefined, _application_name_or_id = undefined)
 * Starts a browser-redirect OIDC login attempt, or, if idToken is supplied, validates a possessed id_token directly and returns a completed session synchronously.
 * @param {String} _provider The provider identifier (e.g. 'twitch').
 * @param {String} [_id_token] An already-possessed id_token to validate directly, skipping the browser-redirect flow.
 * @param {String} [_application_name_or_id] The name or ID of an application whose primary profile should be attached to the session, reusing an existing primary profile if one is already present, or else auto-creating it (subject to the application's autoCreateProfile/maxProfiles settings). Applies to both anonymous and account-linking attempts. If unspecified, the application encoded in the resulting id_token's own 'aud' claim (if any) is used instead, via the legacy, ungated get-or-create profile behavior rather than the gated auto-create path above.
 */
function ElementsOidcLoginAttemptRequest(_provider, _id_token = undefined, _application_name_or_id = undefined) constructor
{
    provider = _provider;
    idToken = _id_token;
    applicationNameOrId = _application_name_or_id;
}

/**
 * @func ElementsOidcLoginAttemptStatusResponse(_status = undefined, _session = undefined, _reason = undefined)
 * The current state of a pending OIDC login attempt.
 * @param {String} [_status] The state of a pending OIDC login attempt.
 * @param {Struct.ElementsSessionCreation} [_session]
 * @param {String} [_reason] A human-readable failure reason. Only set when status is FAILED.
 */
function ElementsOidcLoginAttemptStatusResponse(_status = undefined, _session = undefined, _reason = undefined) constructor
{
    status = _status;
    session = _session;
    reason = _reason;
}

/**
 * @func ElementsOidcProviderConfiguration(_name, _discovery_url, _client_id, _client_secret, _redirect_uri, _id = undefined, _scopes = undefined, _extra_authorize_params = undefined, _token_endpoint_auth_method = undefined, _success_redirect_url = undefined, _error_redirect_url = undefined)
 * The created or updated provider configuration, with the client secret cleared.
 * @param {String} _name A unique, lowercase, URL-safe identifier for the provider (e.g. 'twitch'). Used as the 'provider' path segment and request body value for the OIDC session endpoints.
 * @param {String} _discovery_url The provider's OIDC discovery document URL, e.g. https://id.twitch.tv/oauth2/.well-known/openid-configuration. The issuer, authorization endpoint, token endpoint, and JWKS URI are all resolved from this document.
 * @param {String} _client_id The OAuth2 client id registered with the provider.
 * @param {String} _client_secret The OAuth2 client secret registered with the provider. Never returned in API responses.
 * @param {String} _redirect_uri The full, literal redirect URI registered with the provider (e.g. https://api.example.com/oidc/twitch/callback). Must exactly match the value registered with the provider and is reused byte-for-byte in both the authorize request and the token exchange.
 * @param {String} [_id] The unique ID of the provider configuration.
 * @param {Array<String>} [_scopes] The OAuth2 scopes to request during authorization.
 * @param {Struct.ElementsOidcProviderConfigurationExtraAuthorizeParams} [_extra_authorize_params] Additional provider-specific query parameters to include in the authorize request (e.g. Twitch's 'claims' parameter to request email/preferred_username in the id_token).
 * @param {String} [_token_endpoint_auth_method] How the client authenticates to the token endpoint during authorization code exchange.
 * @param {String} [_success_redirect_url] Optional. If set, GET /oidc/{provider}/callback redirects the browser here on a successful login instead of rendering the default success page. Server-authoritative: not overridable per login attempt.
 * @param {String} [_error_redirect_url] Optional. If set, GET /oidc/{provider}/callback redirects the browser here on a failed login instead of rendering the default error page. Server-authoritative: not overridable per login attempt.
 */
function ElementsOidcProviderConfiguration(_name, _discovery_url, _client_id, _client_secret, _redirect_uri, _id = undefined, _scopes = undefined, _extra_authorize_params = undefined, _token_endpoint_auth_method = undefined, _success_redirect_url = undefined, _error_redirect_url = undefined) constructor
{
    name = _name;
    discoveryUrl = _discovery_url;
    clientId = _client_id;
    clientSecret = _client_secret;
    redirectUri = _redirect_uri;
    id = _id;
    scopes = _scopes;
    extraAuthorizeParams = _extra_authorize_params;
    tokenEndpointAuthMethod = _token_endpoint_auth_method;
    successRedirectUrl = _success_redirect_url;
    errorRedirectUrl = _error_redirect_url;
}

/**
 * @func ElementsOidcProviderConfigurationExtraAuthorizeParams()
 * Additional provider-specific query parameters to include in the authorize request (e.g. Twitch's 'claims' parameter to request email/preferred_username in the id_token).
 */
function ElementsOidcProviderConfigurationExtraAuthorizeParams() constructor
{
}

/**
 * @func ElementsOidcSessionRequest(_jwt, _profile_id = undefined, _profile_selector = undefined, _application_name_or_id = undefined)
 * Validates a possessed id_token and returns the resulting session, either creating a new account or linking to/reusing an existing one.
 * @param {String} _jwt The JWT to parse
 * @param {String} [_profile_id] The profile ID to assign to the session.
 * @param {String} [_profile_selector] A query string to select the profile to use. NOTE: This will not be run if a profileId is specified.
 * @param {String} [_application_name_or_id] The name or ID of an application whose primary profile should be attached to the session, auto-creating it (subject to the application's autoCreateProfile/maxProfiles settings) if it does not exist. Only used if profileId and profileSelector are not specified. If unspecified, the application encoded in the JWT's own claims (if any) is used instead, without auto-create.
 */
function ElementsOidcSessionRequest(_jwt, _profile_id = undefined, _profile_selector = undefined, _application_name_or_id = undefined) constructor
{
    jwt = _jwt;
    profileId = _profile_id;
    profileSelector = _profile_selector;
    applicationNameOrId = _application_name_or_id;
}

/**
 * @func ElementsPaginationApplication(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsApplication>} [_objects]
 */
function ElementsPaginationApplication(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationApplicationConfiguration(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsApplicationConfiguration>} [_objects]
 */
function ElementsPaginationApplicationConfiguration(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationAuthScheme(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsAuthScheme>} [_objects]
 */
function ElementsPaginationAuthScheme(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationDeployment(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsDeployment>} [_objects]
 */
function ElementsPaginationDeployment(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationDistinctInventoryItem(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsDistinctInventoryItem>} [_objects]
 */
function ElementsPaginationDistinctInventoryItem(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationElementDeployment(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsElementDeployment>} [_objects]
 */
function ElementsPaginationElementDeployment(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationFacebookIapReceipt(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsFacebookIapReceipt>} [_objects]
 */
function ElementsPaginationFacebookIapReceipt(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationFriend(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsFriend>} [_objects]
 */
function ElementsPaginationFriend(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationIndexPlanObject(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsIndexPlanObject>} [_objects]
 */
function ElementsPaginationIndexPlanObject(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationInventoryItem(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsInventoryItem>} [_objects]
 */
function ElementsPaginationInventoryItem(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationItem(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsItem>} [_objects]
 */
function ElementsPaginationItem(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationItemLedgerEntry(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsItemLedgerEntry>} [_objects]
 */
function ElementsPaginationItemLedgerEntry(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationLargeObject(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsLargeObject>} [_objects]
 */
function ElementsPaginationLargeObject(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationLeaderboard(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsLeaderboard>} [_objects]
 */
function ElementsPaginationLeaderboard(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationMetadata(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsMetadata>} [_objects]
 */
function ElementsPaginationMetadata(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationMetadataSpec(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsMetadataSpec>} [_objects]
 */
function ElementsPaginationMetadataSpec(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationMission(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsMission>} [_objects]
 */
function ElementsPaginationMission(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationMultiMatch(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsMultiMatch>} [_objects]
 */
function ElementsPaginationMultiMatch(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationOAuth2AuthScheme(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsOAuth2AuthScheme>} [_objects]
 */
function ElementsPaginationOAuth2AuthScheme(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationOculusIapReceipt(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsOculusIapReceipt>} [_objects]
 */
function ElementsPaginationOculusIapReceipt(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationOidcAuthScheme(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsOidcAuthScheme>} [_objects]
 */
function ElementsPaginationOidcAuthScheme(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationOidcProviderConfiguration(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsOidcProviderConfiguration>} [_objects]
 */
function ElementsPaginationOidcProviderConfiguration(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationProductBundle(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsProductBundle>} [_objects]
 */
function ElementsPaginationProductBundle(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationProductSkuSchema(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsProductSkuSchema>} [_objects]
 */
function ElementsPaginationProductSkuSchema(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationProfile(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsProfile>} [_objects]
 */
function ElementsPaginationProfile(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationProgress(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsProgress>} [_objects]
 */
function ElementsPaginationProgress(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationRank(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsRank>} [_objects]
 */
function ElementsPaginationRank(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationReceipt(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsReceipt>} [_objects]
 */
function ElementsPaginationReceipt(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationRewardIssuance(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsRewardIssuance>} [_objects]
 */
function ElementsPaginationRewardIssuance(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationSaveDataDocument(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsSaveDataDocument>} [_objects]
 */
function ElementsPaginationSaveDataDocument(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationSchedule(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsSchedule>} [_objects]
 */
function ElementsPaginationSchedule(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationScheduleEvent(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsScheduleEvent>} [_objects]
 */
function ElementsPaginationScheduleEvent(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationSmartContract(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsSmartContract>} [_objects]
 */
function ElementsPaginationSmartContract(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationUser(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsUser>} [_objects]
 */
function ElementsPaginationUser(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationVault(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsVault>} [_objects]
 */
function ElementsPaginationVault(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsPaginationWallet(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined)
 * @param {Real} [_offset]
 * @param {Real} [_total]
 * @param {Bool} [_approximation]
 * @param {Array<Struct.ElementsWallet>} [_objects]
 */
function ElementsPaginationWallet(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
    offset = _offset;
    total = _total;
    approximation = _approximation;
    objects = _objects;
}

/**
 * @func ElementsParameterizedHeader(_value = undefined, _parameters = undefined)
 * @param {String} [_value]
 * @param {Struct.ElementsParameterizedHeaderParameters} [_parameters]
 */
function ElementsParameterizedHeader(_value = undefined, _parameters = undefined) constructor
{
    value = _value;
    parameters = _parameters;
}

/**
 * @func ElementsParameterizedHeaderParameters()
 */
function ElementsParameterizedHeaderParameters() constructor
{
}

/**
 * @func ElementsPasswordResetRequest(_email)
 * Request to initiate a password reset for an account.
 * @param {String} _email The email address associated with the account.
 */
function ElementsPasswordResetRequest(_email) constructor
{
    email = _email;
}

/**
 * @func ElementsPhoneMatchedInvitation(_phone_number = undefined, _profile_ids = undefined)
 * Represents a single match between the user primary phone number and requested phone from invitation.
 * @param {String} [_phone_number] Phone number
 * @param {Array<String>} [_profile_ids] The list of profile Ids that phone was matched
 */
function ElementsPhoneMatchedInvitation(_phone_number = undefined, _profile_ids = undefined) constructor
{
    phoneNumber = _phone_number;
    profileIds = _profile_ids;
}

/**
 * @func ElementsProductBundle(_schema, _product_id, _id = undefined, _application = undefined, _display_name = undefined, _description = undefined, _product_bundle_rewards = undefined, _metadata = undefined, _display = undefined, _tags = undefined)
 * Defines the digital goods issued when a specific product is purchased.
 * @param {String} _schema The purchase provider schema in reverse-dns notation, e.g. com.apple.appstore.
 * @param {String} _product_id The product id as defined in the purchase provider's catalog.
 * @param {String} [_id] The database id of this Product Bundle.
 * @param {Struct.ElementsApplication} [_application]
 * @param {String} [_display_name] The title of the product bundle to display to end users.
 * @param {String} [_description] The description of the product bundle to display to end users.
 * @param {Array<Struct.ElementsProductBundleReward>} [_product_bundle_rewards] The list of rewards issued when this bundle is purchased.
 * @param {Struct.ElementsProductBundleMetadata} [_metadata] Application-specific metadata.
 * @param {Bool} [_display] Whether or not the frontend should display this product bundle to end users.
 * @param {Array<String>} [_tags] Searchable tags associated with this product bundle.
 */
function ElementsProductBundle(_schema, _product_id, _id = undefined, _application = undefined, _display_name = undefined, _description = undefined, _product_bundle_rewards = undefined, _metadata = undefined, _display = undefined, _tags = undefined) constructor
{
    schema = _schema;
    productId = _product_id;
    id = _id;
    application = _application;
    displayName = _display_name;
    description = _description;
    productBundleRewards = _product_bundle_rewards;
    metadata = _metadata;
    display = _display;
    tags = _tags;
}

/**
 * @func ElementsProductBundleMetadata()
 * Application-specific metadata.
 */
function ElementsProductBundleMetadata() constructor
{
}

/**
 * @func ElementsProductBundleReward(_item_id, _quantity = undefined)
 * The list of rewards issued when this bundle is purchased.
 * @param {String} _item_id The id of the item to be rewarded.
 * @param {Real} [_quantity] The quantity of the item to be rewarded. Null for DISTINCT items; positive integer for FUNGIBLE items.
 */
function ElementsProductBundleReward(_item_id, _quantity = undefined) constructor
{
    itemId = _item_id;
    quantity = _quantity;
}

/**
 * @func ElementsProductSkuSchema(_schema, _id = undefined)
 * A registered payment-provider schema identifier.
 * @param {String} _schema The purchase provider schema in reverse-dns notation, e.g. com.apple.appstore.
 * @param {String} [_id] The database id of this Product SKU Schema.
 */
function ElementsProductSkuSchema(_schema, _id = undefined) constructor
{
    schema = _schema;
    id = _id;
}

/**
 * @func ElementsProfile(_display_name, _id = undefined, _user = undefined, _application = undefined, _image_url = undefined, _image_object = undefined, _metadata = undefined, _last_login = undefined)
 * @param {String} _display_name A non-unique display name for this profile.
 * @param {String} [_id] The unique ID of the profile itself.
 * @param {Struct.ElementsUser} [_user] The User associated with this Profile.
 * @param {Struct.ElementsApplication} [_application]
 * @param {String} [_image_url] A URL to the image of the profile.  (ie the User's Avatar).
 * @param {Struct.ElementsLargeObjectReference} [_image_object] Image object stored in EL large objects storage.
 * @param {Struct.ElementsProfileMetadata} [_metadata] An object containing arbitrary player metadata as key-value pairs.
 * @param {Real} [_last_login] The last time this profile has been logged in by the user.
 */
function ElementsProfile(_display_name, _id = undefined, _user = undefined, _application = undefined, _image_url = undefined, _image_object = undefined, _metadata = undefined, _last_login = undefined) constructor
{
    displayName = _display_name;
    id = _id;
    user = _user;
    application = _application;
    imageUrl = _image_url;
    imageObject = _image_object;
    metadata = _metadata;
    lastLogin = _last_login;
}

/**
 * @func ElementsProfileMetadata()
 * An object containing arbitrary player metadata as key-value pairs.
 */
function ElementsProfileMetadata() constructor
{
}

/**
 * @func ElementsProgress(_id = undefined, _profile = undefined, _current_step = undefined, _remaining = undefined, _mission = undefined, _reward_issuances = undefined, _sequence = undefined, _managed_by_schedule = undefined, _schedules = undefined, _schedule_events = undefined)
 * @param {String} [_id] The unique ID of the progress instance
 * @param {Struct.ElementsProfile} [_profile]
 * @param {Struct.ElementsStep} [_current_step] The final repeating step (may be null if step(s) are specified)
 * @param {Real} [_remaining] The remaining actions
 * @param {Struct.ElementsProgressMissionInfo} [_mission] The mission
 * @param {Array<Struct.ElementsRewardIssuance>} [_reward_issuances] List of all reward issuances that are issued but not expired, or redeemed but persistent.
 * @param {Real} [_sequence] The current number of completed steps. Note that this may exceed the total number of steps, i.e. the final step may be repeated infinitely.
 * @param {Bool} [_managed_by_schedule] Indicates that this progress is managed by a Schedule. If true, the Progress will be deleted when no schedules have the progress active. This will be true if the Progress was created as part of a Schedule.
 * @param {Array<Struct.ElementsSchedule>} [_schedules] A listing of the Schedules which are managing this Progress. Empty or null if the Progress is not managed as part of a Schedule.
 * @param {Array<Struct.ElementsScheduleEvent>} [_schedule_events] A listing of ScheduleEvents which are managing this Progress. Empty or null if the Progress is not managed as part of a Schedule.
 */
function ElementsProgress(_id = undefined, _profile = undefined, _current_step = undefined, _remaining = undefined, _mission = undefined, _reward_issuances = undefined, _sequence = undefined, _managed_by_schedule = undefined, _schedules = undefined, _schedule_events = undefined) constructor
{
    id = _id;
    profile = _profile;
    currentStep = _current_step;
    remaining = _remaining;
    mission = _mission;
    rewardIssuances = _reward_issuances;
    sequence = _sequence;
    managedBySchedule = _managed_by_schedule;
    schedules = _schedules;
    scheduleEvents = _schedule_events;
}

/**
 * @func ElementsProgressMissionInfo(_id, _name, _display_name, _description, _steps = undefined, _final_repeat_step = undefined, _tags = undefined, _metadata = undefined)
 * The mission
 * @param {String} _id The id of the mission
 * @param {String} _name The name of the mission
 * @param {String} _display_name The display name for the mission
 * @param {String} _description The description of the mission
 * @param {Array<Struct.ElementsStep>} [_steps] The steps that constitute the mission (may be null if finalRepeatStep is specified)
 * @param {Struct.ElementsStep} [_final_repeat_step] The final repeating step (may be null if step(s) are specified)
 * @param {Array<String>} [_tags] The tags used to categorize this mission
 * @param {Struct.ElementsProgressMissionInfoMetadata} [_metadata] The metadata for this mission
 */
function ElementsProgressMissionInfo(_id, _name, _display_name, _description, _steps = undefined, _final_repeat_step = undefined, _tags = undefined, _metadata = undefined) constructor
{
    id = _id;
    name = _name;
    displayName = _display_name;
    description = _description;
    steps = _steps;
    finalRepeatStep = _final_repeat_step;
    tags = _tags;
    metadata = _metadata;
}

/**
 * @func ElementsProgressMissionInfoMetadata()
 * The metadata for this mission
 */
function ElementsProgressMissionInfoMetadata() constructor
{
}

/**
 * @func ElementsProgressRow(_id = undefined, _profile_id = undefined, _profile_image_url = undefined, _profile_display_name = undefined, _step_display_name = undefined, _step_description = undefined, _remaining = undefined, _step_count = undefined)
 * @param {String} [_id]
 * @param {String} [_profile_id]
 * @param {String} [_profile_image_url]
 * @param {String} [_profile_display_name]
 * @param {String} [_step_display_name]
 * @param {String} [_step_description]
 * @param {Real} [_remaining]
 * @param {Real} [_step_count]
 */
function ElementsProgressRow(_id = undefined, _profile_id = undefined, _profile_image_url = undefined, _profile_display_name = undefined, _step_display_name = undefined, _step_description = undefined, _remaining = undefined, _step_count = undefined) constructor
{
    id = _id;
    profileId = _profile_id;
    profileImageUrl = _profile_image_url;
    profileDisplayName = _profile_display_name;
    stepDisplayName = _step_display_name;
    stepDescription = _step_description;
    remaining = _remaining;
    stepCount = _step_count;
}

/**
 * @func ElementsProviders()
 */
function ElementsProviders() constructor
{
}

/**
 * @func ElementsPSNApplicationConfiguration(_name, _type, _parent, _np_identifier, _client_secret, _id = undefined, _description = undefined)
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {Struct.ElementsApplication} _parent
 * @param {String} _np_identifier
 * @param {String} _client_secret
 * @param {String} [_id] The database assigned ID for the application configuration.
 * @param {String} [_description]
 */
function ElementsPSNApplicationConfiguration(_name, _type, _parent, _np_identifier, _client_secret, _id = undefined, _description = undefined) constructor
{
    name = _name;
    type = _type;
    parent = _parent;
    npIdentifier = _np_identifier;
    clientSecret = _client_secret;
    id = _id;
    description = _description;
}

/**
 * @func ElementsRank(_score, _position = undefined)
 * @param {Struct.ElementsScore} _score
 * @param {Real} [_position] The position of the associated score in the result set.
 */
function ElementsRank(_score, _position = undefined) constructor
{
    self[$ "score"] = _score;
    position = _position;
}

/**
 * @func ElementsRankRow(_profile_id, _profile_display_name, _profile_image_url, _last_login, _id = undefined, _position = undefined, _point_value = undefined, _score_units = undefined, _creation_timestamp = undefined, _leaderboard_epoch = undefined)
 * @param {String} _profile_id The profile ID of the user who holds this rank.
 * @param {String} _profile_display_name The profile display name of the user who holds this rank.
 * @param {String} _profile_image_url The profile image url of the user who holds this rank.
 * @param {Real} _last_login The last login.
 * @param {String} [_id] The ID of the Score
 * @param {Real} [_position] The position of the associated score in the result set.
 * @param {Real} [_point_value] The point value of the score.
 * @param {String} [_score_units] The the units of measure for the points.  For example, if the points in the game were called "coins" instead of "points" this would be used to designate as such in the UI.
 * @param {Real} [_creation_timestamp] The time at which the score was created on the server.
 * @param {Real} [_leaderboard_epoch] The epoch to which the score belongs for the associated leaderboard. By convention, if the leaderboard is all-time, this value will be set to zero.
 */
function ElementsRankRow(_profile_id, _profile_display_name, _profile_image_url, _last_login, _id = undefined, _position = undefined, _point_value = undefined, _score_units = undefined, _creation_timestamp = undefined, _leaderboard_epoch = undefined) constructor
{
    profileId = _profile_id;
    profileDisplayName = _profile_display_name;
    profileImageUrl = _profile_image_url;
    lastLogin = _last_login;
    id = _id;
    position = _position;
    pointValue = _point_value;
    scoreUnits = _score_units;
    creationTimestamp = _creation_timestamp;
    leaderboardEpoch = _leaderboard_epoch;
}

/**
 * @func ElementsReceipt(_id = undefined, _original_transaction_id = undefined, _schema = undefined, _user = undefined, _purchase_time = undefined, _body = undefined)
 * A generic receipt that stores user purchase information.
 * @param {String} [_id] The db id of this receipt.
 * @param {String} [_original_transaction_id] The id of the original transaction as provided by the payment processor.
 * @param {String} [_schema] The id of the receipt provider in reverse-dns notation, e.g. com.company.platform
 * @param {Struct.ElementsUser} [_user] The User associated with this Profile.
 * @param {Real} [_purchase_time] The time that the purchase was made (ms since Unix epoch).
 * @param {String} [_body] The string representation of the raw receipt data.
 */
function ElementsReceipt(_id = undefined, _original_transaction_id = undefined, _schema = undefined, _user = undefined, _purchase_time = undefined, _body = undefined) constructor
{
    id = _id;
    originalTransactionId = _original_transaction_id;
    schema = _schema;
    user = _user;
    purchaseTime = _purchase_time;
    body = _body;
}

/**
 * @func ElementsReward(_item, _quantity, _metadata = undefined)
 * The reward(s) that will be granted upon completion
 * @param {Struct.ElementsItem} _item The Item to be issued upon redemption.
 * @param {Real} _quantity The quantity of the Item that is rewarded
 * @param {Struct.ElementsRewardMetadata} [_metadata]
 */
function ElementsReward(_item, _quantity, _metadata = undefined) constructor
{
    item = _item;
    quantity = _quantity;
    metadata = _metadata;
}

/**
 * @func ElementsRewardIssuance(_user, _state, _id = undefined, _item = undefined, _item_quantity = undefined, _context = undefined, _type = undefined, _source = undefined, _metadata = undefined, _tags = undefined, _expiration_timestamp = undefined, _uuid = undefined)
 * Represents a Reward that has been issued but has not yet been claimed by the user.  The reward is assigned a unique ID to ensure that it may not have been applied more than once.
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {String} _state The state of the reward. On creation, this is automatically assigned to be ISSUED. If the current value of the state is REDEEMED, then the state is no longer allowed to be updated. This valuemay not be directly modified--the redeem DAO method should be used instead to perform the redemption process.
 * @param {String} [_id] The unique ID of the issuance.
 * @param {Struct.ElementsItem} [_item] The Item to be issued upon redemption.
 * @param {Real} [_item_quantity] The amount of Items to be set/added to the InventoryItem upon redemption.
 * @param {String} [_context] A generic String used to uniquely identify the RewardIssuance issuance. If the RewardIssuance is created by the client, this value must be specified to prevent erroneous duplicate issuances. E.g. if the client successfully submits an issuance but fails to receive the response, the client is expected to submit a new issuance with the same context string. Similarly, the client application should have safeguards in place in the event of a crash to prevent duplicate submissions: e.g. ensuring that the context string is unchanged when performing multiple issuances of the same RewardIssuance. If the RewardIssuance is generated by the server, this will be defined automatically. The context cannot be updated after creation. Note that an context defined via the API should not begin with 'server.' as that is a protected namespace.
 * @param {String} [_type] Defines whether multiple issuances for the given user+reward+context may occur. If the type is set to NON_PERSISTENT, at most one ISSUED RewardIssuance may exist in the server at a time for a given user and context. If the type is set to PERSISTENT, at most one ISSUED or REDEEMED RewardIssuance may exist in the server for a given user and context, i.e. once a PERSISTENT RewardIssuance has been submitted, a new one may never be submitted and will be rejected by the server. Note that this value cannot be updated. By default, this will be set to NON_PERSISTENT.
 * @param {String} [_source] Identifies the source of the issuance, e.g. 'Client', 'IAP', 'Leaderboard'. This may be specified manually by the client if desired. Note that this value cannot be updated.
 * @param {Struct.ElementsRewardIssuanceMetadata} [_metadata] Metadata for the issuance. May be optionally defined by the client on creation. If the source is a server-side value, then a predefined structure will always be followed that provides additional information as to the source of the issuance (e.g. mission progress/step information).
 * @param {Array<String>} [_tags] The tags used to categorize this Reward Issuance.
 * @param {Real} [_expiration_timestamp] Optionally define when the issuance should expire. This value may be updated to extend when the expiration occurs. When set, this value must be greater than the current time on the server.Note that the record may not actually be deleted for up to sixty seconds after the time noted in thetimestamp.
 * @param {String} [_uuid] Internal unique identifier generated and assigned on creation.
 */
function ElementsRewardIssuance(_user, _state, _id = undefined, _item = undefined, _item_quantity = undefined, _context = undefined, _type = undefined, _source = undefined, _metadata = undefined, _tags = undefined, _expiration_timestamp = undefined, _uuid = undefined) constructor
{
    user = _user;
    state = _state;
    id = _id;
    item = _item;
    itemQuantity = _item_quantity;
    context = _context;
    type = _type;
    source = _source;
    metadata = _metadata;
    tags = _tags;
    expirationTimestamp = _expiration_timestamp;
    uuid = _uuid;
}

/**
 * @func ElementsRewardIssuanceMetadata()
 * Metadata for the issuance. May be optionally defined by the client on creation. If the source is a server-side value, then a predefined structure will always be followed that provides additional information as to the source of the issuance (e.g. mission progress/step information).
 */
function ElementsRewardIssuanceMetadata() constructor
{
}

/**
 * @func ElementsRewardIssuanceRedemptionResult(_reward_issuance_id = undefined, _reward_issuance = undefined, _inventory_item = undefined, _error_details = undefined)
 * Represents the result of a reward issuance redemption, housing either the resultant RewardIssuance or the error details.
 * @param {String} [_reward_issuance_id] The id as originally provided in the request.
 * @param {Struct.ElementsRewardIssuance} [_reward_issuance] Represents a Reward that has been issued but has not yet been claimed by the user.  The reward is assigned a unique ID to ensure that it may not have been applied more than once.
 * @param {Struct.ElementsInventoryItem} [_inventory_item] Should the redemption be successful, the Inventory Item that was updated. Otherwise, null.
 * @param {String} [_error_details] Should the redemption fail, the error details. Otherwise, null.
 */
function ElementsRewardIssuanceRedemptionResult(_reward_issuance_id = undefined, _reward_issuance = undefined, _inventory_item = undefined, _error_details = undefined) constructor
{
    rewardIssuanceId = _reward_issuance_id;
    rewardIssuance = _reward_issuance;
    inventoryItem = _inventory_item;
    errorDetails = _error_details;
}

/**
 * @func ElementsRewardMetadata()
 */
function ElementsRewardMetadata() constructor
{
}

/**
 * @func ElementsRoutingHealthStatus(_instance_id = undefined, _routing_table = undefined, _master_node_routing_table = undefined, _application_node_routing_table = undefined)
 * @param {String} [_instance_id]
 * @param {Array<String>} [_routing_table]
 * @param {Array<String>} [_master_node_routing_table]
 * @param {Array<String>} [_application_node_routing_table]
 */
function ElementsRoutingHealthStatus(_instance_id = undefined, _routing_table = undefined, _master_node_routing_table = undefined, _application_node_routing_table = undefined) constructor
{
    instanceId = _instance_id;
    routingTable = _routing_table;
    masterNodeRoutingTable = _master_node_routing_table;
    applicationNodeRoutingTable = _application_node_routing_table;
}

/**
 * @func ElementsSaveDataDocument(_contents, _id = undefined, _slot = undefined, _user = undefined, _profile = undefined, _timestamp = undefined, _version = undefined)
 * Represents an arbitrary save data document that persists on the server. The document saves with a version identifier such that clients may resolve conflicts between the local copy and the remote copy.
 * @param {String} _contents The contents of the save data.
 * @param {String} [_id] The database assigned unique ID of the document.
 * @param {Real} [_slot] The slot of the property.
 * @param {Struct.ElementsUser} [_user] The User associated with this Profile.
 * @param {Struct.ElementsProfile} [_profile]
 * @param {Real} [_timestamp] The timestamp of the last write to this document.
 * @param {String} [_version] The revision of the save data document.
 */
function ElementsSaveDataDocument(_contents, _id = undefined, _slot = undefined, _user = undefined, _profile = undefined, _timestamp = undefined, _version = undefined) constructor
{
    contents = _contents;
    id = _id;
    slot = _slot;
    user = _user;
    profile = _profile;
    timestamp = _timestamp;
    version = _version;
}

/**
 * @func ElementsSchedule(_name, _display_name, _description, _id = undefined)
 * @param {String} _name The unique name of the schedule.
 * @param {String} _display_name
 * @param {String} _description The description for this schedule.
 * @param {String} [_id] The unique ID of the schedule.
 */
function ElementsSchedule(_name, _display_name, _description, _id = undefined) constructor
{
    name = _name;
    displayName = _display_name;
    description = _description;
    id = _id;
}

/**
 * @func ElementsScheduleEvent(_schedule, _missions, _id = undefined, _begin = undefined, _end = undefined)
 * A listing of ScheduleEvents which are managing this Progress. Empty or null if the Progress is not managed as part of a Schedule.
 * @param {Struct.ElementsSchedule} _schedule
 * @param {Array<Struct.ElementsMission>} _missions
 * @param {String} [_id]
 * @param {Real} [_begin]
 * @param {Real} [_end]
 */
function ElementsScheduleEvent(_schedule, _missions, _id = undefined, _begin = undefined, _end = undefined) constructor
{
    schedule = _schedule;
    missions = _missions;
    id = _id;
    self[$ "begin"] = _begin;
    self[$ "end"] = _end;
}

/**
 * @func ElementsScore(_profile, _id = undefined, _point_value = undefined, _score_units = undefined, _creation_timestamp = undefined, _leaderboard_epoch = undefined)
 * @param {Struct.ElementsProfile} _profile
 * @param {String} [_id] The ID of the Score
 * @param {Real} [_point_value] The point value of the score.
 * @param {String} [_score_units] The the units of measure for the points.  For example, if the points in the game were called "coins" instead of "points" this would be used to designate as such in the UI.
 * @param {Real} [_creation_timestamp] The time at which the score was created on the server.
 * @param {Real} [_leaderboard_epoch] The epoch to which the score belongs for the associated leaderboard. By convention, if the leaderboard is all-time, this value will be set to zero.
 */
function ElementsScore(_profile, _id = undefined, _point_value = undefined, _score_units = undefined, _creation_timestamp = undefined, _leaderboard_epoch = undefined) constructor
{
    profile = _profile;
    id = _id;
    pointValue = _point_value;
    scoreUnits = _score_units;
    creationTimestamp = _creation_timestamp;
    leaderboardEpoch = _leaderboard_epoch;
}

/**
 * @func ElementsSession(_user, _profile = undefined, _application = undefined, _expiry = undefined)
 * The Session object generated by the request.
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {Struct.ElementsProfile} [_profile]
 * @param {Struct.ElementsApplication} [_application]
 * @param {Real} [_expiry]
 */
function ElementsSession(_user, _profile = undefined, _application = undefined, _expiry = undefined) constructor
{
    user = _user;
    profile = _profile;
    application = _application;
    expiry = _expiry;
}

/**
 * @func ElementsSessionCreation(_session_secret = undefined, _session = undefined)
 * @param {String} [_session_secret] The Session Secret to pass to subsequent requests through headers.
 * @param {Struct.ElementsSession} [_session] The Session object generated by the request.
 */
function ElementsSessionCreation(_session_secret = undefined, _session = undefined) constructor
{
    sessionSecret = _session_secret;
    session = _session;
}

/**
 * @func ElementsSimpleInventoryItemQuantityAdjustment(_user_id, _quantity_delta)
 * @param {String} _user_id The User whose inventory to modify.ß
 * @param {Real} _quantity_delta The delta to be applied to the inventory item quantity (positive or negative)
 */
function ElementsSimpleInventoryItemQuantityAdjustment(_user_id, _quantity_delta) constructor
{
    userId = _user_id;
    quantityDelta = _quantity_delta;
}

/**
 * @func ElementsSmartContract(_name, _display_name, _addresses, _vault, _id = undefined, _metadata = undefined)
 * Represents a smart contract.
 * @param {String} _name The unique symbolic name of the smart contract.
 * @param {String} _display_name The name given to this contract for display purposes.
 * @param {Struct.ElementsSmartContractAddresses} _addresses The addresses of the contract from the blockchain. Depending on the network or protocol this may have several meanings. For example, this may be the script has for the Ethereum network.
 * @param {Struct.ElementsVault} _vault
 * @param {String} [_id] The Elements database id of the contract.
 * @param {Struct.ElementsSmartContractMetadata} [_metadata] Any metadata for this contract.
 */
function ElementsSmartContract(_name, _display_name, _addresses, _vault, _id = undefined, _metadata = undefined) constructor
{
    name = _name;
    displayName = _display_name;
    addresses = _addresses;
    vault = _vault;
    id = _id;
    metadata = _metadata;
}

/**
 * @func ElementsSmartContractAddress(_address = undefined)
 * The address of the contract from the blockchain. Depending on the network or protocol this may have several meanings and vary depending on the specific API or network.
 * @param {String} [_address]
 */
function ElementsSmartContractAddress(_address = undefined) constructor
{
    address = _address;
}

/**
 * @func ElementsSmartContractAddresses()
 * The addresses of the contract from the blockchain. Depending on the network or protocol this may have several meanings. For example, this may be the script has for the Ethereum network.
 */
function ElementsSmartContractAddresses() constructor
{
}

/**
 * @func ElementsSmartContractMetadata()
 * Any metadata for this contract.
 */
function ElementsSmartContractMetadata() constructor
{
}

/**
 * @func ElementsSteamApplicationConfiguration(_name, _type, _parent, _publisher_key, _app_id, _id = undefined, _description = undefined, _product_bundles = undefined)
 * Houses the various parameters required which allow communication with the Steam Microtransaction API.
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {Struct.ElementsApplication} _parent
 * @param {String} _publisher_key The Steam Publisher Web API Key, used to authenticate server-side calls to the Steam Microtransaction API (ISteamMicroTxn).
 * @param {String} _app_id The Steam AppID for the game as it appears in the Steamworks partner portal.
 * @param {String} [_id] The database assigned ID for the application configuration.
 * @param {String} [_description]
 * @param {Array<Struct.ElementsProductBundle>} [_product_bundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 */
function ElementsSteamApplicationConfiguration(_name, _type, _parent, _publisher_key, _app_id, _id = undefined, _description = undefined, _product_bundles = undefined) constructor
{
    name = _name;
    type = _type;
    parent = _parent;
    publisherKey = _publisher_key;
    appId = _app_id;
    id = _id;
    description = _description;
    productBundles = _product_bundles;
}

/**
 * @func ElementsStep(_display_name, _description, _count, _rewards, _metadata = undefined)
 * The final repeating step (may be null if step(s) are specified)
 * @param {String} _display_name The display name for the step
 * @param {String} _description The description of the step
 * @param {Real} _count The number of times the step must be completed to receive the reward(s)
 * @param {Array<Struct.ElementsReward>} _rewards The reward(s) that will be granted upon completion
 * @param {Struct.ElementsStepMetadata} [_metadata] The metadata for this step
 */
function ElementsStep(_display_name, _description, _count, _rewards, _metadata = undefined) constructor
{
    displayName = _display_name;
    description = _description;
    count = _count;
    rewards = _rewards;
    metadata = _metadata;
}

/**
 * @func ElementsStepMetadata()
 * The metadata for this step
 */
function ElementsStepMetadata() constructor
{
}

/**
 * @func ElementsSubjectRequest(_user_ids, _profile_ids, _wildcard = undefined)
 * Specifies the Subjects which can delete the LargeObject.
 * @param {Array<String>} _user_ids A List of all UserIds which can operate against the LargeObject.
 * @param {Array<String>} _profile_ids A List of all ProfileIds which can operate against the LargeObject.
 * @param {Bool} [_wildcard] Flag to check who may perform the operation. If true, all anonymous users may perform the operation.
 */
function ElementsSubjectRequest(_user_ids, _profile_ids, _wildcard = undefined) constructor
{
    userIds = _user_ids;
    profileIds = _profile_ids;
    wildcard = _wildcard;
}

/**
 * @func ElementsSubjects(_users, _profiles, _wildcard = undefined, _minimum_level = undefined)
 * Subjects allowed to delete
 * @param {Array<Struct.ElementsUser>} _users Users which may perform the operations.
 * @param {Array<Struct.ElementsProfile>} _profiles Profiles, which owners may perform the operations.
 * @param {Bool} [_wildcard] Flag to check who may perform the operations. True if all users may access the object.
 * @param {String} [_minimum_level] Specifies a minimum access level, if applicable.
 */
function ElementsSubjects(_users, _profiles, _wildcard = undefined, _minimum_level = undefined) constructor
{
    users = _users;
    profiles = _profiles;
    wildcard = _wildcard;
    minimumLevel = _minimum_level;
}

/**
 * @func ElementsSystemVersion(_version = undefined, _revision = undefined, _timestamp = undefined)
 * The version of the Element
 * @param {String} [_version]
 * @param {String} [_revision]
 * @param {String} [_timestamp]
 */
function ElementsSystemVersion(_version = undefined, _revision = undefined, _timestamp = undefined) constructor
{
    version = _version;
    revision = _revision;
    timestamp = _timestamp;
}

/**
 * @func ElementsTabulationProgressRow(_rows)
 * @param {Array<Struct.ElementsProgressRow>} _rows
 */
function ElementsTabulationProgressRow(_rows) constructor
{
    rows = _rows;
}

/**
 * @func ElementsTabulationRankRow(_rows)
 * @param {Array<Struct.ElementsRankRow>} _rows
 */
function ElementsTabulationRankRow(_rows) constructor
{
    rows = _rows;
}

/**
 * @func ElementsUniqueCode(_id = undefined, _linger = undefined, _timeout = undefined, _expiry = undefined, _user = undefined, _profile = undefined)
 * Represents a unique code with an identifier, the code itself, and an expiration timestamp.
 * @param {String} [_id]
 * @param {Real} [_linger]
 * @param {Real} [_timeout]
 * @param {Real} [_expiry]
 * @param {Struct.ElementsUser} [_user] The User associated with this Profile.
 * @param {Struct.ElementsProfile} [_profile]
 */
function ElementsUniqueCode(_id = undefined, _linger = undefined, _timeout = undefined, _expiry = undefined, _user = undefined, _profile = undefined) constructor
{
    id = _id;
    linger = _linger;
    timeout = _timeout;
    expiry = _expiry;
    user = _user;
    profile = _profile;
}

/**
 * @func ElementsUpdateApplicationRequest(_name, _description = undefined, _attributes = undefined, _max_profiles = undefined, _auto_create_profile = undefined, _authoritative_profile_picture = undefined, _display_name_regex = undefined)
 * @param {String} _name
 * @param {String} [_description]
 * @param {Struct.ElementsUpdateApplicationRequestAttributes} [_attributes]
 * @param {Real} [_max_profiles] The maximum number of profiles a user may create for this application. If unspecified, defaults to 1.
 * @param {Bool} [_auto_create_profile] Whether a user's primary profile for this application should be created automatically when the user is created. If unspecified, defaults to true.
 * @param {Bool} [_authoritative_profile_picture] If true, a user cannot edit their own profile picture for this application via the REST API -- it must be set by backend/Element code instead. If false (the default), users may edit their own profile picture via the REST API.
 * @param {String} [_display_name_regex] A Java regular expression that a profile's display name must match for this application, or the profile create/update is rejected. If blank or unspecified, no additional check is performed.
 */
function ElementsUpdateApplicationRequest(_name, _description = undefined, _attributes = undefined, _max_profiles = undefined, _auto_create_profile = undefined, _authoritative_profile_picture = undefined, _display_name_regex = undefined) constructor
{
    name = _name;
    description = _description;
    attributes = _attributes;
    maxProfiles = _max_profiles;
    autoCreateProfile = _auto_create_profile;
    authoritativeProfilePicture = _authoritative_profile_picture;
    displayNameRegex = _display_name_regex;
}

/**
 * @func ElementsUpdateApplicationRequestAttributes()
 */
function ElementsUpdateApplicationRequestAttributes() constructor
{
}

/**
 * @func ElementsUpdateAuthSchemeRequest(_audience, _algorithm, _user_level, _tags, _allowed_issuers, _regenerate = undefined, _public_key = undefined)
 * Represents a request to update an Auth Scheme for an Application.
 * @param {String} _audience The JWT audience for the scheme. Must be unique.
 * @param {String} _algorithm The algorithm that Elements will use with the supplied key.
 * @param {String} _user_level The highest permitted user level this particular scheme will authorize.
 * @param {Array<String>} _tags The list of tags for tagging the auth scheme.
 * @param {Array<String>} _allowed_issuers The list of issuers allowed to use this scheme.
 * @param {Bool} [_regenerate] If set to true, Elements will regenerate the key and pubKey must be null or omitted
 * @param {String} [_public_key] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 */
function ElementsUpdateAuthSchemeRequest(_audience, _algorithm, _user_level, _tags, _allowed_issuers, _regenerate = undefined, _public_key = undefined) constructor
{
    audience = _audience;
    algorithm = _algorithm;
    userLevel = _user_level;
    tags = _tags;
    allowedIssuers = _allowed_issuers;
    regenerate = _regenerate;
    publicKey = _public_key;
}

/**
 * @func ElementsUpdateAuthSchemeResponse(_public_key, _scheme = undefined, _private_key = undefined)
 * Represents a response from updating an Auth Scheme for an Application.
 * @param {String} _public_key The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @param {Struct.ElementsAuthScheme} [_scheme] The full JSON response as described in AuthScheme
 * @param {String} [_private_key] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/PKCS8EncodedKeySpec.html for details on the specifics of the format.
 */
function ElementsUpdateAuthSchemeResponse(_public_key, _scheme = undefined, _private_key = undefined) constructor
{
    publicKey = _public_key;
    scheme = _scheme;
    privateKey = _private_key;
}

/**
 * @func ElementsUpdateDeploymentRequest(_revision)
 * @param {String} _revision
 */
function ElementsUpdateDeploymentRequest(_revision) constructor
{
    revision = _revision;
}

/**
 * @func ElementsUpdateDistinctInventoryItemRequest(_user_id = undefined, _profile_id = undefined, _metadata = undefined)
 * @param {String} [_user_id] The id of the User owning this inventory item id.
 * @param {String} [_profile_id] The the profile id of hte Profile owning this inventory item.
 * @param {Struct.ElementsUpdateDistinctInventoryItemRequestMetadata} [_metadata]
 */
function ElementsUpdateDistinctInventoryItemRequest(_user_id = undefined, _profile_id = undefined, _metadata = undefined) constructor
{
    userId = _user_id;
    profileId = _profile_id;
    metadata = _metadata;
}

/**
 * @func ElementsUpdateDistinctInventoryItemRequestMetadata()
 */
function ElementsUpdateDistinctInventoryItemRequestMetadata() constructor
{
}

/**
 * @func ElementsUpdateElementDeploymentRequest(_state, _elements = undefined, _packages = undefined, _use_default_repositories = undefined, _repositories = undefined, _path_attributes = undefined, _path_spi_builtins = undefined, _path_spi_class_paths = undefined)
 * Request to update a new Element with specified artifacts and their repositories. All artifacts specified must exist in the repositories provided. Additionally, the repositories must include any dependencies required by the artifacts and all dependencies of those dependencies, and so on. The system will resolve all dependencies transitively.
 * @param {String} _state The state of the deployment.
 * @param {Array<Struct.ElementsElementPathDefinition>} [_elements] List of Element definitions specifying the classpaths and artifacts for each Element to deploy. Each definition can specify either Maven artifact coordinates (API, SPI, Element lists) or a single ELM artifact coordinate.
 * @param {Array<Struct.ElementsElementPackageDefinition>} [_packages] List of Element package definitions specifying ELM artifacts to deploy with per-path attribute configuration. Each package can contain multiple elements with individualized attribute mappings.
 * @param {Bool} [_use_default_repositories] Flag indicating whether to use the default artifact repositories in addition to any provided. The actual repositories included will be those defined by the system's default configuration at deployment time.
 * @param {Array<Struct.ElementsElementArtifactRepository>} [_repositories] List of artifact repositories to use for resolving the specified artifacts and their dependencies. All artifacts and their dependencies must be found within these repositories.
 * @param {Struct.ElementsUpdateElementDeploymentRequestPathAttributes} [_path_attributes] Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 * @param {Struct.ElementsUpdateElementDeploymentRequestPathSpiBuiltins} [_path_spi_builtins] Map of element paths to builtin SPI configurations. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @param {Struct.ElementsUpdateElementDeploymentRequestPathSpiClassPaths} [_path_spi_class_paths] Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 */
function ElementsUpdateElementDeploymentRequest(_state, _elements = undefined, _packages = undefined, _use_default_repositories = undefined, _repositories = undefined, _path_attributes = undefined, _path_spi_builtins = undefined, _path_spi_class_paths = undefined) constructor
{
    state = _state;
    elements = _elements;
    packages = _packages;
    useDefaultRepositories = _use_default_repositories;
    repositories = _repositories;
    pathAttributes = _path_attributes;
    pathSpiBuiltins = _path_spi_builtins;
    pathSpiClassPaths = _path_spi_class_paths;
}

/**
 * @func ElementsUpdateElementDeploymentRequestPathAttributes()
 * Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 */
function ElementsUpdateElementDeploymentRequestPathAttributes() constructor
{
}

/**
 * @func ElementsUpdateElementDeploymentRequestPathAttributesAp()
 * Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 */
function ElementsUpdateElementDeploymentRequestPathAttributesAp() constructor
{
}

/**
 * @func ElementsUpdateElementDeploymentRequestPathSpiBuiltins()
 * Map of element paths to builtin SPI configurations. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 */
function ElementsUpdateElementDeploymentRequestPathSpiBuiltins() constructor
{
}

/**
 * @func ElementsUpdateElementDeploymentRequestPathSpiClassPaths()
 * Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 */
function ElementsUpdateElementDeploymentRequestPathSpiClassPaths() constructor
{
}

/**
 * @func ElementsUpdateInventoryItemRequest(_quantity = undefined)
 * @param {Real} [_quantity] The quantity of the Item in inventory
 */
function ElementsUpdateInventoryItemRequest(_quantity = undefined) constructor
{
    quantity = _quantity;
}

/**
 * @func ElementsUpdateItemRequest(_name, _display_name, _description, _tags = undefined, _metadata_spec = undefined, _metadata = undefined, _public_visible = undefined)
 * @param {String} _name
 * @param {String} _display_name
 * @param {String} _description
 * @param {Array<String>} [_tags]
 * @param {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 * @param {Struct.ElementsUpdateItemRequestMetadata} [_metadata]
 * @param {Bool} [_public_visible]
 */
function ElementsUpdateItemRequest(_name, _display_name, _description, _tags = undefined, _metadata_spec = undefined, _metadata = undefined, _public_visible = undefined) constructor
{
    name = _name;
    displayName = _display_name;
    description = _description;
    tags = _tags;
    metadataSpec = _metadata_spec;
    metadata = _metadata;
    publicVisible = _public_visible;
}

/**
 * @func ElementsUpdateItemRequestMetadata()
 */
function ElementsUpdateItemRequestMetadata() constructor
{
}

/**
 * @func ElementsUpdateLargeObjectContentsBody(_file = undefined)
 * @param {Struct.ElementsFormDataContentDisposition} [_file]
 */
function ElementsUpdateLargeObjectContentsBody(_file = undefined) constructor
{
    file = _file;
}

/**
 * @func ElementsUpdateLargeObjectRequest(_mime_type, _read, _write, _delete)
 * @param {String} _mime_type The MIME type associated with the object.
 * @param {Struct.ElementsSubjectRequest} _read Specifies the Subjects which can delete the LargeObject.
 * @param {Struct.ElementsSubjectRequest} _write Specifies the Subjects which can delete the LargeObject.
 * @param {Struct.ElementsSubjectRequest} _delete Specifies the Subjects which can delete the LargeObject.
 */
function ElementsUpdateLargeObjectRequest(_mime_type, _read, _write, _delete) constructor
{
    mimeType = _mime_type;
    read = _read;
    write = _write;
    self[$ "delete"] = _delete;
}

/**
 * @func ElementsUpdateLeaderboardRequest(_name, _time_strategy_type, _score_strategy_type, _title, _score_units)
 * @param {String} _name The name of the leaderboard.  This must be unique across all leaderboards.
 * @param {String} _time_strategy_type The time strategy for the leaderboard. Current options are ALL_TIME and EPOCHAL.
 * @param {String} _score_strategy_type The score strategy for the leaderboard. Current options are OVERWRITE_IF_GREATER and ACCUMULATE.
 * @param {String} _title The user-presentable name or title for for the leaderboard.
 * @param {String} _score_units The units-of measure for the score type of the leaderboard.
 */
function ElementsUpdateLeaderboardRequest(_name, _time_strategy_type, _score_strategy_type, _title, _score_units) constructor
{
    name = _name;
    timeStrategyType = _time_strategy_type;
    scoreStrategyType = _score_strategy_type;
    title = _title;
    scoreUnits = _score_units;
}

/**
 * @func ElementsUpdateMetadataRequest(_name = undefined, _metadata = undefined, _metadata_spec = undefined, _access_level = undefined)
 * @param {String} [_name] A unique name for the metadata object.
 * @param {Struct.ElementsUpdateMetadataRequestMetadata} [_metadata] An object containing the metadata payload as key-value pairs.
 * @param {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 * @param {String} [_access_level] The minimum level of access required to view this metadata.
 */
function ElementsUpdateMetadataRequest(_name = undefined, _metadata = undefined, _metadata_spec = undefined, _access_level = undefined) constructor
{
    name = _name;
    metadata = _metadata;
    metadataSpec = _metadata_spec;
    accessLevel = _access_level;
}

/**
 * @func ElementsUpdateMetadataRequestMetadata()
 * An object containing the metadata payload as key-value pairs.
 */
function ElementsUpdateMetadataRequestMetadata() constructor
{
}

/**
 * @func ElementsUpdateMetadataSpecRequest(_name = undefined, _type = undefined, _properties = undefined)
 * Represents a request to update a MetadataSpec.
 * @param {String} [_name] The name of the metadata spec.
 * @param {String} [_type] The type of the metadata spec.
 * @param {Array<Struct.ElementsMetadataSpecProperty>} [_properties] The updated list of properties.
 */
function ElementsUpdateMetadataSpecRequest(_name = undefined, _type = undefined, _properties = undefined) constructor
{
    name = _name;
    type = _type;
    properties = _properties;
}

/**
 * @func ElementsUpdateMissionRequest(_display_name = undefined, _description = undefined, _tags = undefined, _steps = undefined, _final_repeat_step = undefined, _metadata = undefined)
 * @param {String} [_display_name] The display name for the mission
 * @param {String} [_description] The description of the mission
 * @param {Array<String>} [_tags] The tags used to categorize this mission
 * @param {Array<Struct.ElementsStep>} [_steps] The steps that constitute the mission (may be null if finalRepeatStep is specified)
 * @param {Struct.ElementsStep} [_final_repeat_step] The final repeating step (may be null if step(s) are specified)
 * @param {Struct.ElementsUpdateMissionRequestMetadata} [_metadata] The metadata for this mission
 */
function ElementsUpdateMissionRequest(_display_name = undefined, _description = undefined, _tags = undefined, _steps = undefined, _final_repeat_step = undefined, _metadata = undefined) constructor
{
    displayName = _display_name;
    description = _description;
    tags = _tags;
    steps = _steps;
    finalRepeatStep = _final_repeat_step;
    metadata = _metadata;
}

/**
 * @func ElementsUpdateMissionRequestMetadata()
 * The metadata for this mission
 */
function ElementsUpdateMissionRequestMetadata() constructor
{
}

/**
 * @func ElementsUpdateProfileImageRequest(_mime_type)
 * Represents a request to update an image profile.
 * @param {String} _mime_type MimeType of image
 */
function ElementsUpdateProfileImageRequest(_mime_type) constructor
{
    mimeType = _mime_type;
}

/**
 * @func ElementsUpdateProfileRequest(_image_url = undefined, _display_name = undefined, _metadata = undefined)
 * Represents a request to update a profile.
 * @param {String} [_image_url] A URL to the image of the profile.  (ie the User's Avatar).
 * @param {String} [_display_name] A non-unique display name for this profile.
 * @param {Struct.ElementsUpdateProfileRequestMetadata} [_metadata] A map of arbitrary metadata.
 */
function ElementsUpdateProfileRequest(_image_url = undefined, _display_name = undefined, _metadata = undefined) constructor
{
    imageUrl = _image_url;
    displayName = _display_name;
    metadata = _metadata;
}

/**
 * @func ElementsUpdateProfileRequestMetadata()
 * A map of arbitrary metadata.
 */
function ElementsUpdateProfileRequestMetadata() constructor
{
}

/**
 * @func ElementsUpdateProgressRequest(_current_step = undefined, _remaining = undefined)
 * @param {Struct.ElementsStep} [_current_step] The final repeating step (may be null if step(s) are specified)
 * @param {Real} [_remaining] The remaining actions
 */
function ElementsUpdateProgressRequest(_current_step = undefined, _remaining = undefined) constructor
{
    currentStep = _current_step;
    remaining = _remaining;
}

/**
 * @func ElementsUpdateSaveDataDocumentRequest(_contents, _force = undefined, _version = undefined)
 * Updates a save data document. This accepts the contents of the document as well as the versioning information required to take the update properly.
 * @param {String} _contents
 * @param {Bool} [_force]
 * @param {String} [_version]
 */
function ElementsUpdateSaveDataDocumentRequest(_contents, _force = undefined, _version = undefined) constructor
{
    contents = _contents;
    force = _force;
    version = _version;
}

/**
 * @func ElementsUpdateScheduleEventRequest(_mission_names_or_ids, _begin = undefined, _end = undefined)
 * @param {Array<String>} _mission_names_or_ids
 * @param {Real} [_begin]
 * @param {Real} [_end]
 */
function ElementsUpdateScheduleEventRequest(_mission_names_or_ids, _begin = undefined, _end = undefined) constructor
{
    missionNamesOrIds = _mission_names_or_ids;
    self[$ "begin"] = _begin;
    self[$ "end"] = _end;
}

/**
 * @func ElementsUpdateScheduleRequest(_name, _display_name, _description)
 * @param {String} _name
 * @param {String} _display_name
 * @param {String} _description
 */
function ElementsUpdateScheduleRequest(_name, _display_name, _description) constructor
{
    name = _name;
    displayName = _display_name;
    description = _description;
}

/**
 * @func ElementsUpdateSmartContractRequest(_name, _display_name, _addresses, _vault_id, _metadata = undefined)
 * Updates a smart contract.
 * @param {String} _name The unique symbolic name of the smart contract.
 * @param {String} _display_name The name given to this contract for display purposes.
 * @param {Struct.ElementsUpdateSmartContractRequestAddresses} _addresses The address of the contract from the blockchain. Depending on the network or protocol this may have several meanings and vary depending on the specific API or network.
 * @param {String} _vault_id The Elements database id of the wallet containing the default account to be used for contract related requests.
 * @param {Struct.ElementsUpdateSmartContractRequestMetadata} [_metadata] Any metadata for this contract.
 */
function ElementsUpdateSmartContractRequest(_name, _display_name, _addresses, _vault_id, _metadata = undefined) constructor
{
    name = _name;
    displayName = _display_name;
    addresses = _addresses;
    vaultId = _vault_id;
    metadata = _metadata;
}

/**
 * @func ElementsUpdateSmartContractRequestAddresses()
 * The address of the contract from the blockchain. Depending on the network or protocol this may have several meanings and vary depending on the specific API or network.
 */
function ElementsUpdateSmartContractRequestAddresses() constructor
{
}

/**
 * @func ElementsUpdateSmartContractRequestMetadata()
 * Any metadata for this contract.
 */
function ElementsUpdateSmartContractRequestMetadata() constructor
{
}

/**
 * @func ElementsUpdateVaultRequest(_display_name, _user_id, _passphrase = undefined, _new_passphrase = undefined)
 * @param {String} _display_name A user-defined name for the vault. This is used simply for the user's reference and has no bearing  onthe vault's functionality.
 * @param {String} _user_id The elements-defined user ID to own the vault.
 * @param {String} [_passphrase] The current passphrase for the vault. If left null, no updates to the passphrase will be made. If not-null, then the new password must also not be null.
 * @param {String} [_new_passphrase] The updated passphrase for the vault. If left null, no updates to the passphrase will be made. If not-null, then the password must also not be null.
 */
function ElementsUpdateVaultRequest(_display_name, _user_id, _passphrase = undefined, _new_passphrase = undefined) constructor
{
    displayName = _display_name;
    userId = _user_id;
    passphrase = _passphrase;
    newPassphrase = _new_passphrase;
}

/**
 * @func ElementsUpdateWalletRequest(_networks, _display_name = undefined, _preferred_account = undefined)
 * Updates a Wallet.
 * @param {Array<String>} _networks The networks associated with this wallet. All must support the Wallet's protocol.
 * @param {String} [_display_name] The new display name of the wallet.
 * @param {Real} [_preferred_account] The default identity. Must not be larger than the count of identities.
 */
function ElementsUpdateWalletRequest(_networks, _display_name = undefined, _preferred_account = undefined) constructor
{
    networks = _networks;
    displayName = _display_name;
    preferredAccount = _preferred_account;
}

/**
 * @func ElementsUser(_level, _id = undefined, _name = undefined, _first_name = undefined, _last_name = undefined, _email = undefined, _primary_phone_nb = undefined, _linked_accounts = undefined, _display_name = undefined, _linked_account_profiles = undefined)
 * The User associated with this Profile.
 * @param {String} _level The user's access level.
 * @param {String} [_id] The user's database assigned unique ID.
 * @param {String} [_name] A unique name for the user.
 * @param {String} [_first_name] The user's first name
 * @param {String} [_last_name] The user's last name
 * @param {String} [_email] The user's email.
 * @param {String} [_primary_phone_nb] The user's phone number.
 * @param {Array<String>} [_linked_accounts] List of linked account or auth scheme names.
 * @param {String} [_display_name] The user's display name, as reported by an OIDC provider. Never overwrites an existing value; only filled in if previously blank.
 * @param {Struct.ElementsUserLinkedAccountProfiles} [_linked_account_profiles] Per-linked-OIDC-scheme snapshot of the standard OIDC profile-scope claims that scheme most recently reported, keyed by the auth scheme name.
 */
function ElementsUser(_level, _id = undefined, _name = undefined, _first_name = undefined, _last_name = undefined, _email = undefined, _primary_phone_nb = undefined, _linked_accounts = undefined, _display_name = undefined, _linked_account_profiles = undefined) constructor
{
    level = _level;
    id = _id;
    name = _name;
    firstName = _first_name;
    lastName = _last_name;
    email = _email;
    primaryPhoneNb = _primary_phone_nb;
    linkedAccounts = _linked_accounts;
    displayName = _display_name;
    linkedAccountProfiles = _linked_account_profiles;
}

/**
 * @func ElementsUserCreateRequest(_name = undefined, _email = undefined, _primary_phone_nb = undefined, _first_name = undefined, _last_name = undefined, _password = undefined, _level = undefined, _profiles = undefined, _auto_create_profile_application_name_or_id = undefined)
 * @param {String} [_name]
 * @param {String} [_email]
 * @param {String} [_primary_phone_nb]
 * @param {String} [_first_name]
 * @param {String} [_last_name]
 * @param {String} [_password] The user's plaintext password, only to be provided in POST/PUT requests in the User Resource REST API interface. In the future, a dedicated REST API model may be constructed instead of using a direct User model.
 * @param {String} [_level] The user's level to assign. Depending on the usage, the server may ignore this field and assign its own description.
 * @param {Array<Struct.ElementsCreateProfileSignupRequest>} [_profiles] A list of profiles to assign to this user during creation. The server will attempt to create a profile for each item in this list.
 * @param {String} [_auto_create_profile_application_name_or_id] The name or ID of an application for which the user's primary profile should be automatically created, if that application is configured for it (Application#autoCreateProfile and Application#maxProfiles). Optional; if omitted, no automatic profile is created. It is an error to name an application here that also appears in the profiles list.
 */
function ElementsUserCreateRequest(_name = undefined, _email = undefined, _primary_phone_nb = undefined, _first_name = undefined, _last_name = undefined, _password = undefined, _level = undefined, _profiles = undefined, _auto_create_profile_application_name_or_id = undefined) constructor
{
    name = _name;
    email = _email;
    primaryPhoneNb = _primary_phone_nb;
    firstName = _first_name;
    lastName = _last_name;
    password = _password;
    level = _level;
    profiles = _profiles;
    autoCreateProfileApplicationNameOrId = _auto_create_profile_application_name_or_id;
}

/**
 * @func ElementsUserCreateResponse(_id = undefined, _name = undefined, _email = undefined, _first_name = undefined, _last_name = undefined, _level = undefined, _active = undefined, _facebook_id = undefined, _firebase_id = undefined, _apple_sign_in_id = undefined, _primary_phone_nb = undefined, _profiles = undefined, _password = undefined, _linked_accounts = undefined)
 * @param {String} [_id]
 * @param {String} [_name]
 * @param {String} [_email]
 * @param {String} [_first_name]
 * @param {String} [_last_name]
 * @param {String} [_level]
 * @param {Bool} [_active]
 * @param {String} [_facebook_id]
 * @param {String} [_firebase_id]
 * @param {String} [_apple_sign_in_id]
 * @param {String} [_primary_phone_nb]
 * @param {Array<Struct.ElementsProfile>} [_profiles]
 * @param {String} [_password]
 * @param {Array<String>} [_linked_accounts]
 */
function ElementsUserCreateResponse(_id = undefined, _name = undefined, _email = undefined, _first_name = undefined, _last_name = undefined, _level = undefined, _active = undefined, _facebook_id = undefined, _firebase_id = undefined, _apple_sign_in_id = undefined, _primary_phone_nb = undefined, _profiles = undefined, _password = undefined, _linked_accounts = undefined) constructor
{
    id = _id;
    name = _name;
    email = _email;
    firstName = _first_name;
    lastName = _last_name;
    level = _level;
    active = _active;
    facebookId = _facebook_id;
    firebaseId = _firebase_id;
    appleSignInId = _apple_sign_in_id;
    primaryPhoneNb = _primary_phone_nb;
    profiles = _profiles;
    password = _password;
    linkedAccounts = _linked_accounts;
}

/**
 * @func ElementsUserLinkedAccountProfiles()
 * Per-linked-OIDC-scheme snapshot of the standard OIDC profile-scope claims that scheme most recently reported, keyed by the auth scheme name.
 */
function ElementsUserLinkedAccountProfiles() constructor
{
}

/**
 * @func ElementsUserLinkedAccountProfilesAp()
 * Per-linked-OIDC-scheme snapshot of the standard OIDC profile-scope claims that scheme most recently reported, keyed by the auth scheme name.
 */
function ElementsUserLinkedAccountProfilesAp() constructor
{
}

/**
 * @func ElementsUsernamePasswordSessionRequest(_user_id, _password, _profile_id = undefined, _profile_selector = undefined, _application_name_or_id = undefined)
 * @param {String} _user_id The user ID.
 * @param {String} _password The password.
 * @param {String} [_profile_id] The profile ID to assign to the session.
 * @param {String} [_profile_selector] A query string to select the profile to use.
 * @param {String} [_application_name_or_id] The name or ID of an application whose primary profile should be attached to the session. Only used if profileId and profileSelector are not specified. If the application or the user's primary profile for it cannot be resolved, the session is created without a profile.
 */
function ElementsUsernamePasswordSessionRequest(_user_id, _password, _profile_id = undefined, _profile_selector = undefined, _application_name_or_id = undefined) constructor
{
    userId = _user_id;
    password = _password;
    profileId = _profile_id;
    profileSelector = _profile_selector;
    applicationNameOrId = _application_name_or_id;
}

/**
 * @func ElementsUserUid(_scheme = undefined, _id = undefined, _user_id = undefined, _verification_status = undefined)
 * @param {String} [_scheme] The scheme id mapped associated with the OID value. Schemes prepended with dev.getelements are reserved.
 * @param {String} [_id] The id associated with this scheme.
 * @param {String} [_user_id] The id of the user associated with this User UID.
 * @param {String} [_verification_status] The verification status of this UID.
 */
function ElementsUserUid(_scheme = undefined, _id = undefined, _user_id = undefined, _verification_status = undefined) constructor
{
    scheme = _scheme;
    id = _id;
    userId = _user_id;
    verificationStatus = _verification_status;
}

/**
 * @func ElementsUserUpdatePasswordRequest(_old_password, _new_password, _profile_id = undefined)
 * @param {String} _old_password The user's current password.
 * @param {String} _new_password The user's updated password.
 * @param {String} [_profile_id] The user's profile id to assign the new session. Leave blank for no profile id.
 */
function ElementsUserUpdatePasswordRequest(_old_password, _new_password, _profile_id = undefined) constructor
{
    oldPassword = _old_password;
    newPassword = _new_password;
    profileId = _profile_id;
}

/**
 * @func ElementsUserUpdateRequest(_name, _email, _level, _primary_phone_nb = undefined, _first_name = undefined, _last_name = undefined, _password = undefined)
 * @param {String} _name
 * @param {String} _email
 * @param {String} _level
 * @param {String} [_primary_phone_nb]
 * @param {String} [_first_name]
 * @param {String} [_last_name]
 * @param {String} [_password] The user's plaintext password, only to be provided in POST/PUT requests in the User Resource REST API interface. In the future, a dedicated REST API model may be constructed instead of using a direct User model.
 */
function ElementsUserUpdateRequest(_name, _email, _level, _primary_phone_nb = undefined, _first_name = undefined, _last_name = undefined, _password = undefined) constructor
{
    name = _name;
    email = _email;
    level = _level;
    primaryPhoneNb = _primary_phone_nb;
    firstName = _first_name;
    lastName = _last_name;
    password = _password;
}

/**
 * @func ElementsVault(_user, _display_name, _key, _id = undefined)
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {String} _display_name The display name given to this vault.
 * @param {Struct.ElementsVaultKey} _key The Vault's key. The vault secures each vault with this key.
 * @param {String} [_id] The system assigned unique id of the vault.
 */
function ElementsVault(_user, _display_name, _key, _id = undefined) constructor
{
    user = _user;
    displayName = _display_name;
    key = _key;
    id = _id;
}

/**
 * @func ElementsVaultKey(_algorithm, _public_key, _private_key, _encrypted = undefined, _encryption = undefined)
 * The Vault's key. The vault secures each vault with this key.
 * @param {String} _algorithm Specifies the private key encryption algorithm used to secure the vault.
 * @param {String} _public_key The public key portion of the vault key.
 * @param {String} _private_key The private key portion of the vault key.
 * @param {Bool} [_encrypted] The flag to indicate if the key is encrypted or not.
 * @param {Struct.ElementsVaultKeyEncryption} [_encryption] The Vault's encryption metadata. This is specific to the encryption type used.
 */
function ElementsVaultKey(_algorithm, _public_key, _private_key, _encrypted = undefined, _encryption = undefined) constructor
{
    algorithm = _algorithm;
    publicKey = _public_key;
    privateKey = _private_key;
    encrypted = _encrypted;
    encryption = _encryption;
}

/**
 * @func ElementsVaultKeyEncryption()
 * The Vault's encryption metadata. This is specific to the encryption type used.
 */
function ElementsVaultKeyEncryption() constructor
{
}

/**
 * @func ElementsVersion(_version = undefined, _revision = undefined, _timestamp = undefined)
 * @param {String} [_version]
 * @param {String} [_revision]
 * @param {String} [_timestamp]
 */
function ElementsVersion(_version = undefined, _revision = undefined, _timestamp = undefined) constructor
{
    version = _version;
    revision = _revision;
    timestamp = _timestamp;
}

/**
 * @func ElementsWallet(_user, _vault, _display_name, _api, _networks, _accounts, _id = undefined, _preferred_account = undefined)
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {Struct.ElementsVault} _vault
 * @param {String} _display_name The name given to this wallet.
 * @param {String} _api The protocol used wiht this wallet.
 * @param {Array<String>} _networks The networks associated with this wallet.
 * @param {Array<Struct.ElementsWalletAccount>} _accounts The list of account pairs included in this wallet.
 * @param {String} [_id] The system assigned unique id of the wallet.
 * @param {Real} [_preferred_account] The default account. Must not be larger than the count of identities.
 */
function ElementsWallet(_user, _vault, _display_name, _api, _networks, _accounts, _id = undefined, _preferred_account = undefined) constructor
{
    user = _user;
    vault = _vault;
    displayName = _display_name;
    api = _api;
    networks = _networks;
    accounts = _accounts;
    id = _id;
    preferredAccount = _preferred_account;
}

/**
 * @func ElementsWalletAccount(_address, _private_key = undefined, _encrypted = undefined)
 * The list of account pairs included in this wallet.
 * @param {String} _address The Wallet Address - id public identity. Required.
 * @param {String} [_private_key] The Wallet Account - id private identity. May be null if the wallet is for receive only.
 * @param {Bool} [_encrypted] Indicates if this identity is encrypted.
 */
function ElementsWalletAccount(_address, _private_key = undefined, _encrypted = undefined) constructor
{
    address = _address;
    privateKey = _private_key;
    encrypted = _encrypted;
}

/**
 * @func ElementsAccessPermissions_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsAccessPermissions_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsAccessPermissions_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsAccessPermissions";

    ElementsSubjects_validate(__inst__[$ "read"], $"{__where__} :: 'read'");
    ElementsSubjects_validate(__inst__[$ "write"], $"{__where__} :: 'write'");
    ElementsSubjects_validate(__inst__[$ "delete"], $"{__where__} :: 'delete'");
}

/**
 * @func ElementsAdvancedInventoryItemQuantityAdjustment_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsAdvancedInventoryItemQuantityAdjustment_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsAdvancedInventoryItemQuantityAdjustment_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsAdvancedInventoryItemQuantityAdjustment";

    if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    if (!is_numeric(__inst__[$ "quantityDelta"])) throw $"{__where__} :: 'quantityDelta' expected Real";
    if (!is_undefined(__inst__[$ "priority"]))
    {
        if (!is_numeric(__inst__[$ "priority"])) throw $"{__where__} :: 'priority' expected Real";
    }
}

/**
 * @func ElementsApplication_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsApplication_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsApplication_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsApplication";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "gitBranch"]))
    {
        if (!is_string(__inst__[$ "gitBranch"])) throw $"{__where__} :: 'gitBranch' expected String";
    }
    if (!is_undefined(__inst__[$ "scriptRepoUrl"]))
    {
        if (!is_string(__inst__[$ "scriptRepoUrl"])) throw $"{__where__} :: 'scriptRepoUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "httpDocumentationUrl"]))
    {
        if (!is_string(__inst__[$ "httpDocumentationUrl"])) throw $"{__where__} :: 'httpDocumentationUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "httpDocumentationUiUrl"]))
    {
        if (!is_string(__inst__[$ "httpDocumentationUiUrl"])) throw $"{__where__} :: 'httpDocumentationUiUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "httpTunnelEndpointUrl"]))
    {
        if (!is_string(__inst__[$ "httpTunnelEndpointUrl"])) throw $"{__where__} :: 'httpTunnelEndpointUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "attributes"]))
    {
        ElementsApplicationAttributes_validate(__inst__[$ "attributes"], $"{__where__} :: 'attributes'");
    }
    if (!is_undefined(__inst__[$ "applicationConfiguration"]))
    {
        ElementsApplicationConfiguration_validate(__inst__[$ "applicationConfiguration"], $"{__where__} :: 'applicationConfiguration'");
    }
    if (!is_undefined(__inst__[$ "maxProfiles"]))
    {
        if (!is_numeric(__inst__[$ "maxProfiles"])) throw $"{__where__} :: 'maxProfiles' expected Real";
    }
    if (!is_undefined(__inst__[$ "autoCreateProfile"]))
    {
        if (!(is_bool(__inst__[$ "autoCreateProfile"]) || __inst__[$ "autoCreateProfile"] == 0 || __inst__[$ "autoCreateProfile"] == 1)) throw $"{__where__} :: 'autoCreateProfile' expected Bool";
    }
    if (!is_undefined(__inst__[$ "authoritativeProfilePicture"]))
    {
        if (!(is_bool(__inst__[$ "authoritativeProfilePicture"]) || __inst__[$ "authoritativeProfilePicture"] == 0 || __inst__[$ "authoritativeProfilePicture"] == 1)) throw $"{__where__} :: 'authoritativeProfilePicture' expected Bool";
    }
    if (!is_undefined(__inst__[$ "displayNameRegex"]))
    {
        if (!is_string(__inst__[$ "displayNameRegex"])) throw $"{__where__} :: 'displayNameRegex' expected String";
    }
}

/**
 * @func ElementsApplicationAttributes_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsApplicationAttributes_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsApplicationAttributes_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsApplicationAttributes";

}

/**
 * @func ElementsApplicationConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsApplicationConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsApplicationConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsApplicationConfiguration";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    ElementsApplication_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
}

/**
 * @func ElementsAuthScheme_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsAuthScheme_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsAuthScheme_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsAuthScheme";

    if (!is_string(__inst__[$ "audience"])) throw $"{__where__} :: 'audience' expected String";
    if (!is_string(__inst__[$ "publicKey"])) throw $"{__where__} :: 'publicKey' expected String";
    ElementsAuthSchemeAlgorithm_validate(__inst__[$ "algorithm"], $"{__where__} :: 'algorithm'");
    ElementsAuthSchemeUserLevel_validate(__inst__[$ "userLevel"], $"{__where__} :: 'userLevel'");
    if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    if (!is_array(__inst__[$ "allowedIssuers"])) throw $"{__where__} :: 'allowedIssuers' expected Array<String>";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
}

/**
 * @func ElementsAuthSchemeAlgorithm_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsAuthSchemeAlgorithm_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsAuthSchemeAlgorithm_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'AuthSchemeAlgorithm' expected String";
    switch (__inst__)
    {
        case "RSA_256":
            break;
        case "RSA_384":
            break;
        case "RSA_512":
            break;
        default:
            throw $"{__where__} :: 'AuthSchemeAlgorithm' invalid AuthSchemeAlgorithm '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsAuthSchemeUserLevel_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsAuthSchemeUserLevel_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsAuthSchemeUserLevel_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'AuthSchemeUserLevel' expected String";
    switch (__inst__)
    {
        case "UNPRIVILEGED":
            break;
        case "USER":
            break;
        case "SUPERUSER":
            break;
        default:
            throw $"{__where__} :: 'AuthSchemeUserLevel' invalid AuthSchemeUserLevel '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsBodyPart_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsBodyPart_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsBodyPart_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsBodyPart";

    if (!is_undefined(__inst__[$ "contentDisposition"]))
    {
        ElementsContentDisposition_validate(__inst__[$ "contentDisposition"], $"{__where__} :: 'contentDisposition'");
    }
    if (!is_undefined(__inst__[$ "entity"]))
    {
        if (!is_struct(__inst__[$ "entity"])) throw $"{__where__} :: 'entity' expected Struct";
    }
    if (!is_undefined(__inst__[$ "headers"]))
    {
        ElementsBodyPartHeaders_validate(__inst__[$ "headers"], $"{__where__} :: 'headers'");
    }
    if (!is_undefined(__inst__[$ "mediaType"]))
    {
        ElementsMediaType_validate(__inst__[$ "mediaType"], $"{__where__} :: 'mediaType'");
    }
    if (!is_undefined(__inst__[$ "messageBodyWorkers"]))
    {
        ElementsMessageBodyWorkers_validate(__inst__[$ "messageBodyWorkers"], $"{__where__} :: 'messageBodyWorkers'");
    }
    if (!is_undefined(__inst__[$ "parent"]))
    {
        ElementsMultiPart_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    }
    if (!is_undefined(__inst__[$ "providers"]))
    {
        ElementsProviders_validate(__inst__[$ "providers"], $"{__where__} :: 'providers'");
    }
    if (!is_undefined(__inst__[$ "parameterizedHeaders"]))
    {
        ElementsBodyPartParameterizedHeaders_validate(__inst__[$ "parameterizedHeaders"], $"{__where__} :: 'parameterizedHeaders'");
    }
}

/**
 * @func ElementsBodyPartHeaders_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsBodyPartHeaders_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsBodyPartHeaders_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsBodyPartHeaders";

    if (!is_undefined(__inst__[$ "empty"]))
    {
        if (!(is_bool(__inst__[$ "empty"]) || __inst__[$ "empty"] == 0 || __inst__[$ "empty"] == 1)) throw $"{__where__} :: 'empty' expected Bool";
    }
}

/**
 * @func ElementsBodyPartParameterizedHeaders_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsBodyPartParameterizedHeaders_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsBodyPartParameterizedHeaders_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsBodyPartParameterizedHeaders";

    if (!is_undefined(__inst__[$ "empty"]))
    {
        if (!(is_bool(__inst__[$ "empty"]) || __inst__[$ "empty"] == 0 || __inst__[$ "empty"] == 1)) throw $"{__where__} :: 'empty' expected Bool";
    }
}

/**
 * @func ElementsBuildIndexRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsBuildIndexRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsBuildIndexRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsBuildIndexRequest";

    if (!is_undefined(__inst__[$ "plan"]))
    {
        if (!(is_bool(__inst__[$ "plan"]) || __inst__[$ "plan"] == 0 || __inst__[$ "plan"] == 1)) throw $"{__where__} :: 'plan' expected Bool";
    }
    if (!is_undefined(__inst__[$ "toIndex"]))
    {
        if (!is_array(__inst__[$ "toIndex"])) throw $"{__where__} :: 'toIndex' expected Array<ElementsBuildIndexRequestToIndexItem>";
    }
}

/**
 * @func ElementsBuildIndexRequestToIndexItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsBuildIndexRequestToIndexItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsBuildIndexRequestToIndexItem_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'BuildIndexRequestToIndexItem' expected String";
    switch (__inst__)
    {
        case "DISTINCT_INVENTORY_ITEM":
            break;
        case "METADATA":
            break;
        default:
            throw $"{__where__} :: 'BuildIndexRequestToIndexItem' invalid BuildIndexRequestToIndexItem '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCallbackDefinition_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCallbackDefinition_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCallbackDefinition_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCallbackDefinition";

    if (!is_string(__inst__[$ "method"])) throw $"{__where__} :: 'method' expected String";
    ElementsElementServiceReference_validate(__inst__[$ "service"], $"{__where__} :: 'service'");
}

/**
 * @func ElementsCodegenRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCodegenRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCodegenRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCodegenRequest";

    if (!is_undefined(__inst__[$ "elementSpecUrl"]))
    {
        if (!is_string(__inst__[$ "elementSpecUrl"])) throw $"{__where__} :: 'elementSpecUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "language"]))
    {
        if (!is_string(__inst__[$ "language"])) throw $"{__where__} :: 'language' expected String";
    }
    if (!is_undefined(__inst__[$ "packageName"]))
    {
        if (!is_string(__inst__[$ "packageName"])) throw $"{__where__} :: 'packageName' expected String";
    }
    if (!is_undefined(__inst__[$ "options"]))
    {
        if (!is_string(__inst__[$ "options"])) throw $"{__where__} :: 'options' expected String";
    }
}

/**
 * @func ElementsCompletePasswordResetRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCompletePasswordResetRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCompletePasswordResetRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCompletePasswordResetRequest";

    if (!is_string(__inst__[$ "token"])) throw $"{__where__} :: 'token' expected String";
    if (!is_string(__inst__[$ "password"])) throw $"{__where__} :: 'password' expected String";
}

/**
 * @func ElementsContentDisposition_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsContentDisposition_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsContentDisposition_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsContentDisposition";

    if (!is_undefined(__inst__[$ "type"]))
    {
        if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    }
    if (!is_undefined(__inst__[$ "parameters"]))
    {
        ElementsContentDispositionParameters_validate(__inst__[$ "parameters"], $"{__where__} :: 'parameters'");
    }
    if (!is_undefined(__inst__[$ "fileName"]))
    {
        if (!is_string(__inst__[$ "fileName"])) throw $"{__where__} :: 'fileName' expected String";
    }
    if (!is_undefined(__inst__[$ "creationDate"]))
    {
        if (!is_string(__inst__[$ "creationDate"])) throw $"{__where__} :: 'creationDate' expected String";
    }
    if (!is_undefined(__inst__[$ "modificationDate"]))
    {
        if (!is_string(__inst__[$ "modificationDate"])) throw $"{__where__} :: 'modificationDate' expected String";
    }
    if (!is_undefined(__inst__[$ "readDate"]))
    {
        if (!is_string(__inst__[$ "readDate"])) throw $"{__where__} :: 'readDate' expected String";
    }
    if (!is_undefined(__inst__[$ "size"]))
    {
        if (!is_numeric(__inst__[$ "size"])) throw $"{__where__} :: 'size' expected Real";
    }
}

/**
 * @func ElementsContentDispositionParameters_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsContentDispositionParameters_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsContentDispositionParameters_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsContentDispositionParameters";

}

/**
 * @func ElementsCreateAdvancedInventoryItemRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateAdvancedInventoryItemRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateAdvancedInventoryItemRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateAdvancedInventoryItemRequest";

    if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    if (!is_string(__inst__[$ "itemId"])) throw $"{__where__} :: 'itemId' expected String";
    if (!is_undefined(__inst__[$ "quantity"]))
    {
        if (!is_numeric(__inst__[$ "quantity"])) throw $"{__where__} :: 'quantity' expected Real";
    }
    if (!is_undefined(__inst__[$ "priority"]))
    {
        if (!is_numeric(__inst__[$ "priority"])) throw $"{__where__} :: 'priority' expected Real";
    }
}

/**
 * @func ElementsCreateAppleIapReceipt_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateAppleIapReceipt_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateAppleIapReceipt_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateAppleIapReceipt";

    if (!is_string(__inst__[$ "receiptData"])) throw $"{__where__} :: 'receiptData' expected String";
    if (!is_undefined(__inst__[$ "createAppleIapReceiptEnvironment"]))
    {
        ElementsCreateAppleIapReceiptCreateAppleIapReceiptEnvironment_validate(__inst__[$ "createAppleIapReceiptEnvironment"], $"{__where__} :: 'createAppleIapReceiptEnvironment'");
    }
}

/**
 * @func ElementsCreateAppleIapReceiptCreateAppleIapReceiptEnvironment_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateAppleIapReceiptCreateAppleIapReceiptEnvironment_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateAppleIapReceiptCreateAppleIapReceiptEnvironment_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateAppleIapReceiptCreateAppleIapReceiptEnvironment' expected String";
    switch (__inst__)
    {
        case "SANDBOX":
            break;
        case "PRODUCTION":
            break;
        default:
            throw $"{__where__} :: 'CreateAppleIapReceiptCreateAppleIapReceiptEnvironment' invalid CreateAppleIapReceiptCreateAppleIapReceiptEnvironment '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateApplicationRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateApplicationRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateApplicationRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateApplicationRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "attributes"]))
    {
        ElementsCreateApplicationRequestAttributes_validate(__inst__[$ "attributes"], $"{__where__} :: 'attributes'");
    }
    if (!is_undefined(__inst__[$ "maxProfiles"]))
    {
        if (!is_numeric(__inst__[$ "maxProfiles"])) throw $"{__where__} :: 'maxProfiles' expected Real";
    }
    if (!is_undefined(__inst__[$ "autoCreateProfile"]))
    {
        if (!(is_bool(__inst__[$ "autoCreateProfile"]) || __inst__[$ "autoCreateProfile"] == 0 || __inst__[$ "autoCreateProfile"] == 1)) throw $"{__where__} :: 'autoCreateProfile' expected Bool";
    }
    if (!is_undefined(__inst__[$ "authoritativeProfilePicture"]))
    {
        if (!(is_bool(__inst__[$ "authoritativeProfilePicture"]) || __inst__[$ "authoritativeProfilePicture"] == 0 || __inst__[$ "authoritativeProfilePicture"] == 1)) throw $"{__where__} :: 'authoritativeProfilePicture' expected Bool";
    }
    if (!is_undefined(__inst__[$ "displayNameRegex"]))
    {
        if (!is_string(__inst__[$ "displayNameRegex"])) throw $"{__where__} :: 'displayNameRegex' expected String";
    }
}

/**
 * @func ElementsCreateApplicationRequestAttributes_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateApplicationRequestAttributes_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateApplicationRequestAttributes_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateApplicationRequestAttributes";

}

/**
 * @func ElementsCreateAuthSchemeRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateAuthSchemeRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateAuthSchemeRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateAuthSchemeRequest";

    if (!is_string(__inst__[$ "audience"])) throw $"{__where__} :: 'audience' expected String";
    ElementsCreateAuthSchemeRequestAlgorithm_validate(__inst__[$ "algorithm"], $"{__where__} :: 'algorithm'");
    ElementsCreateAuthSchemeRequestUserLevel_validate(__inst__[$ "userLevel"], $"{__where__} :: 'userLevel'");
    if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    if (!is_array(__inst__[$ "allowedIssuers"])) throw $"{__where__} :: 'allowedIssuers' expected Array<String>";
    if (!is_undefined(__inst__[$ "publicKey"]))
    {
        if (!is_string(__inst__[$ "publicKey"])) throw $"{__where__} :: 'publicKey' expected String";
    }
}

/**
 * @func ElementsCreateAuthSchemeRequestAlgorithm_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateAuthSchemeRequestAlgorithm_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateAuthSchemeRequestAlgorithm_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateAuthSchemeRequestAlgorithm' expected String";
    switch (__inst__)
    {
        case "RSA_256":
            break;
        case "RSA_384":
            break;
        case "RSA_512":
            break;
        default:
            throw $"{__where__} :: 'CreateAuthSchemeRequestAlgorithm' invalid CreateAuthSchemeRequestAlgorithm '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateAuthSchemeRequestUserLevel_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateAuthSchemeRequestUserLevel_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateAuthSchemeRequestUserLevel_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateAuthSchemeRequestUserLevel' expected String";
    switch (__inst__)
    {
        case "UNPRIVILEGED":
            break;
        case "USER":
            break;
        case "SUPERUSER":
            break;
        default:
            throw $"{__where__} :: 'CreateAuthSchemeRequestUserLevel' invalid CreateAuthSchemeRequestUserLevel '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateAuthSchemeResponse_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateAuthSchemeResponse_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateAuthSchemeResponse_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateAuthSchemeResponse";

    ElementsAuthScheme_validate(__inst__[$ "scheme"], $"{__where__} :: 'scheme'");
    if (!is_string(__inst__[$ "publicKey"])) throw $"{__where__} :: 'publicKey' expected String";
    if (!is_undefined(__inst__[$ "privateKey"]))
    {
        if (!is_string(__inst__[$ "privateKey"])) throw $"{__where__} :: 'privateKey' expected String";
    }
}

/**
 * @func ElementsCreateDeploymentRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateDeploymentRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateDeploymentRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateDeploymentRequest";

    if (!is_string(__inst__[$ "version"])) throw $"{__where__} :: 'version' expected String";
    if (!is_string(__inst__[$ "revision"])) throw $"{__where__} :: 'revision' expected String";
}

/**
 * @func ElementsCreateDistinctInventoryItemRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateDistinctInventoryItemRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateDistinctInventoryItemRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateDistinctInventoryItemRequest";

    if (!is_string(__inst__[$ "itemId"])) throw $"{__where__} :: 'itemId' expected String";
    if (!is_undefined(__inst__[$ "userId"]))
    {
        if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(__inst__[$ "profileId"]))
    {
        if (!is_string(__inst__[$ "profileId"])) throw $"{__where__} :: 'profileId' expected String";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsCreateDistinctInventoryItemRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsCreateDistinctInventoryItemRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateDistinctInventoryItemRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateDistinctInventoryItemRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateDistinctInventoryItemRequestMetadata";

}

/**
 * @func ElementsCreateElementDeploymentRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateElementDeploymentRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateElementDeploymentRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateElementDeploymentRequest";

    if (!is_undefined(__inst__[$ "applicationNameOrId"]))
    {
        if (!is_string(__inst__[$ "applicationNameOrId"])) throw $"{__where__} :: 'applicationNameOrId' expected String";
    }
    if (!is_undefined(__inst__[$ "elements"]))
    {
        if (!is_array(__inst__[$ "elements"])) throw $"{__where__} :: 'elements' expected Array<ElementsElementPathDefinition>";
    }
    if (!is_undefined(__inst__[$ "packages"]))
    {
        if (!is_array(__inst__[$ "packages"])) throw $"{__where__} :: 'packages' expected Array<ElementsElementPackageDefinition>";
    }
    if (!is_undefined(__inst__[$ "useDefaultRepositories"]))
    {
        if (!(is_bool(__inst__[$ "useDefaultRepositories"]) || __inst__[$ "useDefaultRepositories"] == 0 || __inst__[$ "useDefaultRepositories"] == 1)) throw $"{__where__} :: 'useDefaultRepositories' expected Bool";
    }
    if (!is_undefined(__inst__[$ "repositories"]))
    {
        if (!is_array(__inst__[$ "repositories"])) throw $"{__where__} :: 'repositories' expected Array<ElementsElementArtifactRepository>";
    }
    if (!is_undefined(__inst__[$ "pathAttributes"]))
    {
        ElementsCreateElementDeploymentRequestPathAttributes_validate(__inst__[$ "pathAttributes"], $"{__where__} :: 'pathAttributes'");
    }
    if (!is_undefined(__inst__[$ "pathSpiBuiltins"]))
    {
        ElementsCreateElementDeploymentRequestPathSpiBuiltins_validate(__inst__[$ "pathSpiBuiltins"], $"{__where__} :: 'pathSpiBuiltins'");
    }
    if (!is_undefined(__inst__[$ "pathSpiClassPaths"]))
    {
        ElementsCreateElementDeploymentRequestPathSpiClassPaths_validate(__inst__[$ "pathSpiClassPaths"], $"{__where__} :: 'pathSpiClassPaths'");
    }
    if (!is_undefined(__inst__[$ "state"]))
    {
        ElementsCreateElementDeploymentRequestState_validate(__inst__[$ "state"], $"{__where__} :: 'state'");
    }
}

/**
 * @func ElementsCreateElementDeploymentRequestPathAttributes_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateElementDeploymentRequestPathAttributes_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateElementDeploymentRequestPathAttributes_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateElementDeploymentRequestPathAttributes";

}

/**
 * @func ElementsCreateElementDeploymentRequestPathAttributesAp_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateElementDeploymentRequestPathAttributesAp_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateElementDeploymentRequestPathAttributesAp_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateElementDeploymentRequestPathAttributesAp";

}

/**
 * @func ElementsCreateElementDeploymentRequestPathSpiBuiltins_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateElementDeploymentRequestPathSpiBuiltins_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateElementDeploymentRequestPathSpiBuiltins_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateElementDeploymentRequestPathSpiBuiltins";

}

/**
 * @func ElementsCreateElementDeploymentRequestPathSpiClassPaths_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateElementDeploymentRequestPathSpiClassPaths_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateElementDeploymentRequestPathSpiClassPaths_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateElementDeploymentRequestPathSpiClassPaths";

}

/**
 * @func ElementsCreateElementDeploymentRequestState_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateElementDeploymentRequestState_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateElementDeploymentRequestState_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateElementDeploymentRequestState' expected String";
    switch (__inst__)
    {
        case "UNLOADED":
            break;
        case "ENABLED":
            break;
        case "DISABLED":
            break;
        default:
            throw $"{__where__} :: 'CreateElementDeploymentRequestState' invalid CreateElementDeploymentRequestState '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateFollowerRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateFollowerRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateFollowerRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateFollowerRequest";

    if (!is_string(__inst__[$ "followedId"])) throw $"{__where__} :: 'followedId' expected String";
}

/**
 * @func ElementsCreateGooglePlayIapReceipt_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateGooglePlayIapReceipt_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateGooglePlayIapReceipt_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateGooglePlayIapReceipt";

    if (!is_string(__inst__[$ "packageName"])) throw $"{__where__} :: 'packageName' expected String";
    if (!is_string(__inst__[$ "productId"])) throw $"{__where__} :: 'productId' expected String";
    if (!is_string(__inst__[$ "purchaseToken"])) throw $"{__where__} :: 'purchaseToken' expected String";
}

/**
 * @func ElementsCreateItemRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateItemRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateItemRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateItemRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    ElementsCreateItemRequestCategory_validate(__inst__[$ "category"], $"{__where__} :: 'category'");
    if (!is_undefined(__inst__[$ "tags"]))
    {
        if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "metadataSpecId"]))
    {
        if (!is_string(__inst__[$ "metadataSpecId"])) throw $"{__where__} :: 'metadataSpecId' expected String";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsCreateItemRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
    if (!is_undefined(__inst__[$ "publicVisible"]))
    {
        if (!(is_bool(__inst__[$ "publicVisible"]) || __inst__[$ "publicVisible"] == 0 || __inst__[$ "publicVisible"] == 1)) throw $"{__where__} :: 'publicVisible' expected Bool";
    }
    if (!is_undefined(__inst__[$ "metadataSpec"]))
    {
        if (!is_string(__inst__[$ "metadataSpec"])) throw $"{__where__} :: 'metadataSpec' expected String";
    }
}

/**
 * @func ElementsCreateItemRequestCategory_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateItemRequestCategory_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateItemRequestCategory_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateItemRequestCategory' expected String";
    switch (__inst__)
    {
        case "FUNGIBLE":
            break;
        case "DISTINCT":
            break;
        default:
            throw $"{__where__} :: 'CreateItemRequestCategory' invalid CreateItemRequestCategory '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateItemRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateItemRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateItemRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateItemRequestMetadata";

}

/**
 * @func ElementsCreateLargeObjectFromUrlRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateLargeObjectFromUrlRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateLargeObjectFromUrlRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateLargeObjectFromUrlRequest";

    if (!is_string(__inst__[$ "mimeType"])) throw $"{__where__} :: 'mimeType' expected String";
    ElementsSubjectRequest_validate(__inst__[$ "read"], $"{__where__} :: 'read'");
    ElementsSubjectRequest_validate(__inst__[$ "write"], $"{__where__} :: 'write'");
    ElementsSubjectRequest_validate(__inst__[$ "delete"], $"{__where__} :: 'delete'");
    if (!is_string(__inst__[$ "fileUrl"])) throw $"{__where__} :: 'fileUrl' expected String";
}

/**
 * @func ElementsCreateLargeObjectRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateLargeObjectRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateLargeObjectRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateLargeObjectRequest";

    if (!is_string(__inst__[$ "mimeType"])) throw $"{__where__} :: 'mimeType' expected String";
    ElementsSubjectRequest_validate(__inst__[$ "read"], $"{__where__} :: 'read'");
    ElementsSubjectRequest_validate(__inst__[$ "write"], $"{__where__} :: 'write'");
    ElementsSubjectRequest_validate(__inst__[$ "delete"], $"{__where__} :: 'delete'");
}

/**
 * @func ElementsCreateLeaderboardRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateLeaderboardRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateLeaderboardRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateLeaderboardRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    ElementsCreateLeaderboardRequestTimeStrategyType_validate(__inst__[$ "timeStrategyType"], $"{__where__} :: 'timeStrategyType'");
    ElementsCreateLeaderboardRequestScoreStrategyType_validate(__inst__[$ "scoreStrategyType"], $"{__where__} :: 'scoreStrategyType'");
    if (!is_string(__inst__[$ "title"])) throw $"{__where__} :: 'title' expected String";
    if (!is_string(__inst__[$ "scoreUnits"])) throw $"{__where__} :: 'scoreUnits' expected String";
    if (!is_undefined(__inst__[$ "firstEpochTimestamp"]))
    {
        if (!is_numeric(__inst__[$ "firstEpochTimestamp"])) throw $"{__where__} :: 'firstEpochTimestamp' expected Real";
    }
    if (!is_undefined(__inst__[$ "epochInterval"]))
    {
        if (!is_numeric(__inst__[$ "epochInterval"])) throw $"{__where__} :: 'epochInterval' expected Real";
    }
}

/**
 * @func ElementsCreateLeaderboardRequestScoreStrategyType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateLeaderboardRequestScoreStrategyType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateLeaderboardRequestScoreStrategyType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateLeaderboardRequestScoreStrategyType' expected String";
    switch (__inst__)
    {
        case "OVERWRITE_IF_GREATER":
            break;
        case "ACCUMULATE":
            break;
        default:
            throw $"{__where__} :: 'CreateLeaderboardRequestScoreStrategyType' invalid CreateLeaderboardRequestScoreStrategyType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateLeaderboardRequestTimeStrategyType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateLeaderboardRequestTimeStrategyType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateLeaderboardRequestTimeStrategyType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateLeaderboardRequestTimeStrategyType' expected String";
    switch (__inst__)
    {
        case "ALL_TIME":
            break;
        case "EPOCHAL":
            break;
        default:
            throw $"{__where__} :: 'CreateLeaderboardRequestTimeStrategyType' invalid CreateLeaderboardRequestTimeStrategyType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateMetadataRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateMetadataRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateMetadataRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateMetadataRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsCreateMetadataRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
    if (!is_undefined(__inst__[$ "metadataSpec"]))
    {
        ElementsMetadataSpec_validate(__inst__[$ "metadataSpec"], $"{__where__} :: 'metadataSpec'");
    }
    if (!is_undefined(__inst__[$ "accessLevel"]))
    {
        ElementsCreateMetadataRequestAccessLevel_validate(__inst__[$ "accessLevel"], $"{__where__} :: 'accessLevel'");
    }
}

/**
 * @func ElementsCreateMetadataRequestAccessLevel_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateMetadataRequestAccessLevel_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateMetadataRequestAccessLevel_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateMetadataRequestAccessLevel' expected String";
    switch (__inst__)
    {
        case "UNPRIVILEGED":
            break;
        case "USER":
            break;
        case "SUPERUSER":
            break;
        default:
            throw $"{__where__} :: 'CreateMetadataRequestAccessLevel' invalid CreateMetadataRequestAccessLevel '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateMetadataRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateMetadataRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateMetadataRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateMetadataRequestMetadata";

}

/**
 * @func ElementsCreateMetadataSpecRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateMetadataSpecRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateMetadataSpecRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateMetadataSpecRequest";

    if (!is_array(__inst__[$ "properties"])) throw $"{__where__} :: 'properties' expected Array<ElementsMetadataSpecProperty>";
    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "type"]))
    {
        ElementsCreateMetadataSpecRequestType_validate(__inst__[$ "type"], $"{__where__} :: 'type'");
    }
}

/**
 * @func ElementsCreateMetadataSpecRequestType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateMetadataSpecRequestType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateMetadataSpecRequestType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateMetadataSpecRequestType' expected String";
    switch (__inst__)
    {
        case "STRING":
            break;
        case "NUMBER":
            break;
        case "BOOLEAN":
            break;
        case "ARRAY":
            break;
        case "ENUM":
            break;
        case "OBJECT":
            break;
        case "TAGS":
            break;
        default:
            throw $"{__where__} :: 'CreateMetadataSpecRequestType' invalid CreateMetadataSpecRequestType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateMissionRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateMissionRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateMissionRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateMissionRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    if (!is_undefined(__inst__[$ "tags"]))
    {
        if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "steps"]))
    {
        if (!is_array(__inst__[$ "steps"])) throw $"{__where__} :: 'steps' expected Array<ElementsStep>";
    }
    if (!is_undefined(__inst__[$ "finalRepeatStep"]))
    {
        ElementsStep_validate(__inst__[$ "finalRepeatStep"], $"{__where__} :: 'finalRepeatStep'");
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsCreateMissionRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsCreateMissionRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateMissionRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateMissionRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateMissionRequestMetadata";

}

/**
 * @func ElementsCreateMultipartLargeObjectBody_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateMultipartLargeObjectBody_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateMultipartLargeObjectBody_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateMultipartLargeObjectBody";

    if (!is_undefined(__inst__[$ "object"]))
    {
        ElementsFormDataBodyPart_validate(__inst__[$ "object"], $"{__where__} :: 'object'");
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsCreateLargeObjectRequest_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsCreateOrUpdateOAuth2AuthSchemeRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateOrUpdateOAuth2AuthSchemeRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateOrUpdateOAuth2AuthSchemeRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateOrUpdateOAuth2AuthSchemeRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "validationUrl"])) throw $"{__where__} :: 'validationUrl' expected String";
    ElementsCreateOrUpdateOauth2AuthSchemeRequestMethod_validate(__inst__[$ "method"], $"{__where__} :: 'method'");
    if (!is_undefined(__inst__[$ "headers"]))
    {
        if (!is_array(__inst__[$ "headers"])) throw $"{__where__} :: 'headers' expected Array<ElementsOAuth2RequestKeyValue>";
    }
    if (!is_undefined(__inst__[$ "params"]))
    {
        if (!is_array(__inst__[$ "params"])) throw $"{__where__} :: 'params' expected Array<ElementsOAuth2RequestKeyValue>";
    }
    if (!is_undefined(__inst__[$ "body"]))
    {
        if (!is_array(__inst__[$ "body"])) throw $"{__where__} :: 'body' expected Array<ElementsOAuth2RequestKeyValue>";
    }
    if (!is_undefined(__inst__[$ "responseIdMapping"]))
    {
        if (!is_string(__inst__[$ "responseIdMapping"])) throw $"{__where__} :: 'responseIdMapping' expected String";
    }
    if (!is_undefined(__inst__[$ "responseValidMapping"]))
    {
        if (!is_string(__inst__[$ "responseValidMapping"])) throw $"{__where__} :: 'responseValidMapping' expected String";
    }
    if (!is_undefined(__inst__[$ "responseValidExpectedValue"]))
    {
        if (!is_string(__inst__[$ "responseValidExpectedValue"])) throw $"{__where__} :: 'responseValidExpectedValue' expected String";
    }
    if (!is_undefined(__inst__[$ "validStatusCodes"]))
    {
        if (!is_array(__inst__[$ "validStatusCodes"])) throw $"{__where__} :: 'validStatusCodes' expected Array<Real>";
    }
    if (!is_undefined(__inst__[$ "bodyType"]))
    {
        ElementsCreateOrUpdateOauth2AuthSchemeRequestBodyType_validate(__inst__[$ "bodyType"], $"{__where__} :: 'bodyType'");
    }
}

/**
 * @func ElementsCreateOrUpdateOauth2AuthSchemeRequestBodyType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateOrUpdateOauth2AuthSchemeRequestBodyType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateOrUpdateOauth2AuthSchemeRequestBodyType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateOrUpdateOauth2AuthSchemeRequestBodyType' expected String";
    switch (__inst__)
    {
        case "NONE":
            break;
        case "FORM_URL_ENCODED":
            break;
        case "JSON":
            break;
        default:
            throw $"{__where__} :: 'CreateOrUpdateOauth2AuthSchemeRequestBodyType' invalid CreateOrUpdateOauth2AuthSchemeRequestBodyType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateOrUpdateOauth2AuthSchemeRequestMethod_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateOrUpdateOauth2AuthSchemeRequestMethod_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateOrUpdateOauth2AuthSchemeRequestMethod_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateOrUpdateOauth2AuthSchemeRequestMethod' expected String";
    switch (__inst__)
    {
        case "GET":
            break;
        case "POST":
            break;
        default:
            throw $"{__where__} :: 'CreateOrUpdateOauth2AuthSchemeRequestMethod' invalid CreateOrUpdateOauth2AuthSchemeRequestMethod '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateOrUpdateOAuth2AuthSchemeResponse_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateOrUpdateOAuth2AuthSchemeResponse_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateOrUpdateOAuth2AuthSchemeResponse_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateOrUpdateOAuth2AuthSchemeResponse";

    if (!is_undefined(__inst__[$ "scheme"]))
    {
        ElementsOAuth2AuthScheme_validate(__inst__[$ "scheme"], $"{__where__} :: 'scheme'");
    }
}

/**
 * @func ElementsCreateOrUpdateOidcAuthSchemeRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateOrUpdateOidcAuthSchemeRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateOrUpdateOidcAuthSchemeRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateOrUpdateOidcAuthSchemeRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "issuer"])) throw $"{__where__} :: 'issuer' expected String";
    if (!is_array(__inst__[$ "keys"])) throw $"{__where__} :: 'keys' expected Array<ElementsJWK>";
    if (!is_undefined(__inst__[$ "keysUrl"]))
    {
        if (!is_string(__inst__[$ "keysUrl"])) throw $"{__where__} :: 'keysUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "mediaType"]))
    {
        if (!is_string(__inst__[$ "mediaType"])) throw $"{__where__} :: 'mediaType' expected String";
    }
}

/**
 * @func ElementsCreateOrUpdateOidcAuthSchemeResponse_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateOrUpdateOidcAuthSchemeResponse_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateOrUpdateOidcAuthSchemeResponse_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateOrUpdateOidcAuthSchemeResponse";

    if (!is_undefined(__inst__[$ "scheme"]))
    {
        ElementsOidcAuthScheme_validate(__inst__[$ "scheme"], $"{__where__} :: 'scheme'");
    }
}

/**
 * @func ElementsCreateOrUpdateOidcProviderConfigurationRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateOrUpdateOidcProviderConfigurationRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateOrUpdateOidcProviderConfigurationRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateOrUpdateOidcProviderConfigurationRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "discoveryUrl"])) throw $"{__where__} :: 'discoveryUrl' expected String";
    if (!is_string(__inst__[$ "clientId"])) throw $"{__where__} :: 'clientId' expected String";
    if (!is_undefined(__inst__[$ "clientSecret"]))
    {
        if (!is_string(__inst__[$ "clientSecret"])) throw $"{__where__} :: 'clientSecret' expected String";
    }
    if (!is_undefined(__inst__[$ "scopes"]))
    {
        if (!is_array(__inst__[$ "scopes"])) throw $"{__where__} :: 'scopes' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "redirectUri"]))
    {
        if (!is_string(__inst__[$ "redirectUri"])) throw $"{__where__} :: 'redirectUri' expected String";
    }
    if (!is_undefined(__inst__[$ "extraAuthorizeParams"]))
    {
        ElementsCreateOrUpdateOidcProviderConfigurationRequestExtraAuthorizeParams_validate(__inst__[$ "extraAuthorizeParams"], $"{__where__} :: 'extraAuthorizeParams'");
    }
    if (!is_undefined(__inst__[$ "tokenEndpointAuthMethod"]))
    {
        ElementsCreateOrUpdateOidcProviderConfigurationRequestTokenEndpointAuthMethod_validate(__inst__[$ "tokenEndpointAuthMethod"], $"{__where__} :: 'tokenEndpointAuthMethod'");
    }
    if (!is_undefined(__inst__[$ "successRedirectUrl"]))
    {
        if (!is_string(__inst__[$ "successRedirectUrl"])) throw $"{__where__} :: 'successRedirectUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "errorRedirectUrl"]))
    {
        if (!is_string(__inst__[$ "errorRedirectUrl"])) throw $"{__where__} :: 'errorRedirectUrl' expected String";
    }
}

/**
 * @func ElementsCreateOrUpdateOidcProviderConfigurationRequestExtraAuthorizeParams_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateOrUpdateOidcProviderConfigurationRequestExtraAuthorizeParams_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateOrUpdateOidcProviderConfigurationRequestExtraAuthorizeParams_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateOrUpdateOidcProviderConfigurationRequestExtraAuthorizeParams";

}

/**
 * @func ElementsCreateOrUpdateOidcProviderConfigurationRequestTokenEndpointAuthMethod_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateOrUpdateOidcProviderConfigurationRequestTokenEndpointAuthMethod_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateOrUpdateOidcProviderConfigurationRequestTokenEndpointAuthMethod_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateOrUpdateOidcProviderConfigurationRequestTokenEndpointAuthMethod' expected String";
    switch (__inst__)
    {
        case "CLIENT_SECRET_BASIC":
            break;
        case "CLIENT_SECRET_POST":
            break;
        default:
            throw $"{__where__} :: 'CreateOrUpdateOidcProviderConfigurationRequestTokenEndpointAuthMethod' invalid CreateOrUpdateOidcProviderConfigurationRequestTokenEndpointAuthMethod '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateOrUpdateOidcProviderConfigurationResponse_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateOrUpdateOidcProviderConfigurationResponse_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateOrUpdateOidcProviderConfigurationResponse_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateOrUpdateOidcProviderConfigurationResponse";

    if (!is_undefined(__inst__[$ "configuration"]))
    {
        ElementsOidcProviderConfiguration_validate(__inst__[$ "configuration"], $"{__where__} :: 'configuration'");
    }
    if (!is_undefined(__inst__[$ "issuer"]))
    {
        if (!is_string(__inst__[$ "issuer"])) throw $"{__where__} :: 'issuer' expected String";
    }
    if (!is_undefined(__inst__[$ "authorizationEndpoint"]))
    {
        if (!is_string(__inst__[$ "authorizationEndpoint"])) throw $"{__where__} :: 'authorizationEndpoint' expected String";
    }
    if (!is_undefined(__inst__[$ "tokenEndpoint"]))
    {
        if (!is_string(__inst__[$ "tokenEndpoint"])) throw $"{__where__} :: 'tokenEndpoint' expected String";
    }
}

/**
 * @func ElementsCreateProfileRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateProfileRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateProfileRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateProfileRequest";

    if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    if (!is_string(__inst__[$ "applicationId"])) throw $"{__where__} :: 'applicationId' expected String";
    if (!is_undefined(__inst__[$ "imageUrl"]))
    {
        if (!is_string(__inst__[$ "imageUrl"])) throw $"{__where__} :: 'imageUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "displayName"]))
    {
        if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsCreateProfileRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsCreateProfileRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateProfileRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateProfileRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateProfileRequestMetadata";

}

/**
 * @func ElementsCreateProfileSignupRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateProfileSignupRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateProfileSignupRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateProfileSignupRequest";

    if (!is_string(__inst__[$ "applicationId"])) throw $"{__where__} :: 'applicationId' expected String";
    if (!is_undefined(__inst__[$ "displayName"]))
    {
        if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    }
    if (!is_undefined(__inst__[$ "imageUrl"]))
    {
        if (!is_string(__inst__[$ "imageUrl"])) throw $"{__where__} :: 'imageUrl' expected String";
    }
}

/**
 * @func ElementsCreateProgressRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateProgressRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateProgressRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateProgressRequest";

    if (!is_undefined(__inst__[$ "profile"]))
    {
        ElementsProfile_validate(__inst__[$ "profile"], $"{__where__} :: 'profile'");
    }
    if (!is_undefined(__inst__[$ "mission"]))
    {
        ElementsProgressMissionInfo_validate(__inst__[$ "mission"], $"{__where__} :: 'mission'");
    }
}

/**
 * @func ElementsCreateReceiptRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateReceiptRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateReceiptRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateReceiptRequest";

    if (!is_undefined(__inst__[$ "originalTransactionId"]))
    {
        if (!is_string(__inst__[$ "originalTransactionId"])) throw $"{__where__} :: 'originalTransactionId' expected String";
    }
    if (!is_undefined(__inst__[$ "schema"]))
    {
        if (!is_string(__inst__[$ "schema"])) throw $"{__where__} :: 'schema' expected String";
    }
    if (!is_undefined(__inst__[$ "userId"]))
    {
        if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(__inst__[$ "purchaseTime"]))
    {
        if (!is_numeric(__inst__[$ "purchaseTime"])) throw $"{__where__} :: 'purchaseTime' expected Real";
    }
    if (!is_undefined(__inst__[$ "body"]))
    {
        if (!is_string(__inst__[$ "body"])) throw $"{__where__} :: 'body' expected String";
    }
}

/**
 * @func ElementsCreateSaveDataDocumentRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateSaveDataDocumentRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateSaveDataDocumentRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateSaveDataDocumentRequest";

    if (!is_numeric(__inst__[$ "slot"])) throw $"{__where__} :: 'slot' expected Real";
    if (!is_string(__inst__[$ "contents"])) throw $"{__where__} :: 'contents' expected String";
    if (!is_undefined(__inst__[$ "userId"]))
    {
        if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(__inst__[$ "profileId"]))
    {
        if (!is_string(__inst__[$ "profileId"])) throw $"{__where__} :: 'profileId' expected String";
    }
}

/**
 * @func ElementsCreateScheduleEventRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateScheduleEventRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateScheduleEventRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateScheduleEventRequest";

    if (!is_array(__inst__[$ "missionNamesOrIds"])) throw $"{__where__} :: 'missionNamesOrIds' expected Array<String>";
    if (!is_undefined(__inst__[$ "begin"]))
    {
        if (!is_numeric(__inst__[$ "begin"])) throw $"{__where__} :: 'begin' expected Real";
    }
    if (!is_undefined(__inst__[$ "end"]))
    {
        if (!is_numeric(__inst__[$ "end"])) throw $"{__where__} :: 'end' expected Real";
    }
}

/**
 * @func ElementsCreateScheduleRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateScheduleRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateScheduleRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateScheduleRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
}

/**
 * @func ElementsCreateSimpleInventoryItemRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateSimpleInventoryItemRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateSimpleInventoryItemRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateSimpleInventoryItemRequest";

    if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    if (!is_string(__inst__[$ "itemId"])) throw $"{__where__} :: 'itemId' expected String";
    if (!is_undefined(__inst__[$ "quantity"]))
    {
        if (!is_numeric(__inst__[$ "quantity"])) throw $"{__where__} :: 'quantity' expected Real";
    }
}

/**
 * @func ElementsCreateSmartContractRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateSmartContractRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateSmartContractRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateSmartContractRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    ElementsCreateSmartContractRequestAddresses_validate(__inst__[$ "addresses"], $"{__where__} :: 'addresses'");
    if (!is_string(__inst__[$ "vaultId"])) throw $"{__where__} :: 'vaultId' expected String";
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsCreateSmartContractRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsCreateSmartContractRequestAddresses_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateSmartContractRequestAddresses_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateSmartContractRequestAddresses_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateSmartContractRequestAddresses";

}

/**
 * @func ElementsCreateSmartContractRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateSmartContractRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateSmartContractRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateSmartContractRequestMetadata";

}

/**
 * @func ElementsCreateSteamIapReceipt_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateSteamIapReceipt_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateSteamIapReceipt_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateSteamIapReceipt";

    if (!is_string(__inst__[$ "orderId"])) throw $"{__where__} :: 'orderId' expected String";
}

/**
 * @func ElementsCreateVaultRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateVaultRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateVaultRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateVaultRequest";

    if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_undefined(__inst__[$ "passphrase"]))
    {
        if (!is_string(__inst__[$ "passphrase"])) throw $"{__where__} :: 'passphrase' expected String";
    }
    if (!is_undefined(__inst__[$ "algorithm"]))
    {
        ElementsCreateVaultRequestAlgorithm_validate(__inst__[$ "algorithm"], $"{__where__} :: 'algorithm'");
    }
}

/**
 * @func ElementsCreateVaultRequestAlgorithm_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateVaultRequestAlgorithm_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateVaultRequestAlgorithm_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateVaultRequestAlgorithm' expected String";
    switch (__inst__)
    {
        case "RSA_256":
            break;
        case "RSA_384":
            break;
        case "RSA_512":
            break;
        default:
            throw $"{__where__} :: 'CreateVaultRequestAlgorithm' invalid CreateVaultRequestAlgorithm '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateWalletRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateWalletRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateWalletRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateWalletRequest";

    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    ElementsCreateWalletRequestApi_validate(__inst__[$ "api"], $"{__where__} :: 'api'");
    if (!is_array(__inst__[$ "networks"])) throw $"{__where__} :: 'networks' expected Array<ElementsCreateWalletRequestNetworksItem>";
    if (!is_array(__inst__[$ "accounts"])) throw $"{__where__} :: 'accounts' expected Array<ElementsCreateWalletRequestAccount>";
    if (!is_undefined(__inst__[$ "preferredAccount"]))
    {
        if (!is_numeric(__inst__[$ "preferredAccount"])) throw $"{__where__} :: 'preferredAccount' expected Real";
    }
}

/**
 * @func ElementsCreateWalletRequestAccount_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateWalletRequestAccount_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateWalletRequestAccount_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsCreateWalletRequestAccount";

    if (!is_undefined(__inst__[$ "generate"]))
    {
        if (!(is_bool(__inst__[$ "generate"]) || __inst__[$ "generate"] == 0 || __inst__[$ "generate"] == 1)) throw $"{__where__} :: 'generate' expected Bool";
    }
    if (!is_undefined(__inst__[$ "address"]))
    {
        if (!is_string(__inst__[$ "address"])) throw $"{__where__} :: 'address' expected String";
    }
    if (!is_undefined(__inst__[$ "privateKey"]))
    {
        if (!is_string(__inst__[$ "privateKey"])) throw $"{__where__} :: 'privateKey' expected String";
    }
}

/**
 * @func ElementsCreateWalletRequestApi_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateWalletRequestApi_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateWalletRequestApi_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateWalletRequestApi' expected String";
    switch (__inst__)
    {
        case "NEO":
            break;
        case "ETHEREUM":
            break;
        case "SOLANA":
            break;
        case "FLOW":
            break;
        case "NEAR":
            break;
        default:
            throw $"{__where__} :: 'CreateWalletRequestApi' invalid CreateWalletRequestApi '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsCreateWalletRequestNetworksItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsCreateWalletRequestNetworksItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsCreateWalletRequestNetworksItem_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'CreateWalletRequestNetworksItem' expected String";
    switch (__inst__)
    {
        case "NEO":
            break;
        case "NEO_TEST":
            break;
        case "ETHEREUM":
            break;
        case "ETHEREUM_TEST":
            break;
        case "BSC":
            break;
        case "BSC_TEST":
            break;
        case "POLYGON":
            break;
        case "POLYGON_TEST":
            break;
        case "SOLANA":
            break;
        case "SOLANA_TEST":
            break;
        case "FLOW":
            break;
        case "FLOW_TEST":
            break;
        case "NEAR":
            break;
        case "NEAR_TEST":
            break;
        default:
            throw $"{__where__} :: 'CreateWalletRequestNetworksItem' invalid CreateWalletRequestNetworksItem '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsDatabaseHealthStatus_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsDatabaseHealthStatus_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsDatabaseHealthStatus_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsDatabaseHealthStatus";

    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        if (!is_string(__inst__[$ "metadata"])) throw $"{__where__} :: 'metadata' expected String";
    }
}

/**
 * @func ElementsDeployment_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsDeployment_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsDeployment_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsDeployment";

    if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    if (!is_string(__inst__[$ "version"])) throw $"{__where__} :: 'version' expected String";
    if (!is_string(__inst__[$ "revision"])) throw $"{__where__} :: 'revision' expected String";
    ElementsApplication_validate(__inst__[$ "application"], $"{__where__} :: 'application'");
}

/**
 * @func ElementsDiscoveryHealthStatus_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsDiscoveryHealthStatus_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsDiscoveryHealthStatus_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsDiscoveryHealthStatus";

    if (!is_undefined(__inst__[$ "records"]))
    {
        if (!is_array(__inst__[$ "records"])) throw $"{__where__} :: 'records' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "knownHosts"]))
    {
        if (!is_array(__inst__[$ "knownHosts"])) throw $"{__where__} :: 'knownHosts' expected Array<String>";
    }
}

/**
 * @func ElementsDistinctInventoryItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsDistinctInventoryItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsDistinctInventoryItem_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsDistinctInventoryItem";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "item"]))
    {
        ElementsItem_validate(__inst__[$ "item"], $"{__where__} :: 'item'");
    }
    if (!is_undefined(__inst__[$ "user"]))
    {
        ElementsUser_validate(__inst__[$ "user"], $"{__where__} :: 'user'");
    }
    if (!is_undefined(__inst__[$ "profile"]))
    {
        ElementsProfile_validate(__inst__[$ "profile"], $"{__where__} :: 'profile'");
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsDistinctInventoryItemMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsDistinctInventoryItemMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsDistinctInventoryItemMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsDistinctInventoryItemMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsDistinctInventoryItemMetadata";

}

/**
 * @func ElementsEditorLayout_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsEditorLayout_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsEditorLayout_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsEditorLayout";

    if (!is_undefined(__inst__[$ "key"]))
    {
        if (!is_string(__inst__[$ "key"])) throw $"{__where__} :: 'key' expected String";
    }
    if (!is_undefined(__inst__[$ "title"]))
    {
        if (!is_string(__inst__[$ "title"])) throw $"{__where__} :: 'title' expected String";
    }
    if (!is_undefined(__inst__[$ "placeholder"]))
    {
        if (!is_string(__inst__[$ "placeholder"])) throw $"{__where__} :: 'placeholder' expected String";
    }
}

/**
 * @func ElementsEditorSchema_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsEditorSchema_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsEditorSchema_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsEditorSchema";

    if (!is_undefined(__inst__[$ "data"]))
    {
        if (!is_struct(__inst__[$ "data"])) throw $"{__where__} :: 'data' expected Struct";
    }
    if (!is_undefined(__inst__[$ "schema"]))
    {
        ElementsJsonSchema_validate(__inst__[$ "schema"], $"{__where__} :: 'schema'");
    }
    if (!is_undefined(__inst__[$ "layout"]))
    {
        if (!is_array(__inst__[$ "layout"])) throw $"{__where__} :: 'layout' expected Array<ElementsEditorLayout>";
    }
}

/**
 * @func ElementsElementArtifactRepository_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementArtifactRepository_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementArtifactRepository_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementArtifactRepository";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "url"]))
    {
        if (!is_string(__inst__[$ "url"])) throw $"{__where__} :: 'url' expected String";
    }
}

/**
 * @func ElementsElementContainerStatus_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementContainerStatus_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementContainerStatus_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementContainerStatus";

    if (!is_undefined(__inst__[$ "runtime"]))
    {
        ElementsElementRuntimeStatus_validate(__inst__[$ "runtime"], $"{__where__} :: 'runtime'");
    }
    if (!is_undefined(__inst__[$ "status"]))
    {
        if (!is_string(__inst__[$ "status"])) throw $"{__where__} :: 'status' expected String";
    }
    if (!is_undefined(__inst__[$ "uris"]))
    {
        if (!is_array(__inst__[$ "uris"])) throw $"{__where__} :: 'uris' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "logs"]))
    {
        if (!is_array(__inst__[$ "logs"])) throw $"{__where__} :: 'logs' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "warnings"]))
    {
        if (!is_array(__inst__[$ "warnings"])) throw $"{__where__} :: 'warnings' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "elements"]))
    {
        if (!is_array(__inst__[$ "elements"])) throw $"{__where__} :: 'elements' expected Array<ElementsElementMetadata>";
    }
}

/**
 * @func ElementsElementDefaultAttributeRecord_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementDefaultAttributeRecord_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementDefaultAttributeRecord_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementDefaultAttributeRecord";

    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "value"]))
    {
        if (!is_string(__inst__[$ "value"])) throw $"{__where__} :: 'value' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "sensitive"]))
    {
        if (!(is_bool(__inst__[$ "sensitive"]) || __inst__[$ "sensitive"] == 0 || __inst__[$ "sensitive"] == 1)) throw $"{__where__} :: 'sensitive' expected Bool";
    }
}

/**
 * @func ElementsElementDefinitionMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementDefinitionMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementDefinitionMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementDefinitionMetadata";

    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "recursive"]))
    {
        if (!(is_bool(__inst__[$ "recursive"]) || __inst__[$ "recursive"] == 0 || __inst__[$ "recursive"] == 1)) throw $"{__where__} :: 'recursive' expected Bool";
    }
    if (!is_undefined(__inst__[$ "additionalPackages"]))
    {
        if (!is_array(__inst__[$ "additionalPackages"])) throw $"{__where__} :: 'additionalPackages' expected Array<ElementsElementPackageRecord>";
    }
    if (!is_undefined(__inst__[$ "loader"]))
    {
        if (!is_string(__inst__[$ "loader"])) throw $"{__where__} :: 'loader' expected String";
    }
}

/**
 * @func ElementsElementDependencyMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementDependencyMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementDependencyMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementDependencyMetadata";

    if (!is_undefined(__inst__[$ "value"]))
    {
        if (!is_string(__inst__[$ "value"])) throw $"{__where__} :: 'value' expected String";
    }
    if (!is_undefined(__inst__[$ "selector"]))
    {
        if (!is_string(__inst__[$ "selector"])) throw $"{__where__} :: 'selector' expected String";
    }
}

/**
 * @func ElementsElementDeployment_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementDeployment_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementDeployment_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementDeployment";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "application"]))
    {
        ElementsApplication_validate(__inst__[$ "application"], $"{__where__} :: 'application'");
    }
    if (!is_undefined(__inst__[$ "elm"]))
    {
        ElementsLargeObjectReference_validate(__inst__[$ "elm"], $"{__where__} :: 'elm'");
    }
    if (!is_undefined(__inst__[$ "pathSpiBuiltins"]))
    {
        ElementsElementDeploymentPathSpiBuiltins_validate(__inst__[$ "pathSpiBuiltins"], $"{__where__} :: 'pathSpiBuiltins'");
    }
    if (!is_undefined(__inst__[$ "pathSpiClassPaths"]))
    {
        ElementsElementDeploymentPathSpiClassPaths_validate(__inst__[$ "pathSpiClassPaths"], $"{__where__} :: 'pathSpiClassPaths'");
    }
    if (!is_undefined(__inst__[$ "pathAttributes"]))
    {
        ElementsElementDeploymentPathAttributes_validate(__inst__[$ "pathAttributes"], $"{__where__} :: 'pathAttributes'");
    }
    if (!is_undefined(__inst__[$ "elements"]))
    {
        if (!is_array(__inst__[$ "elements"])) throw $"{__where__} :: 'elements' expected Array<ElementsElementPathDefinition>";
    }
    if (!is_undefined(__inst__[$ "packages"]))
    {
        if (!is_array(__inst__[$ "packages"])) throw $"{__where__} :: 'packages' expected Array<ElementsElementPackageDefinition>";
    }
    if (!is_undefined(__inst__[$ "useDefaultRepositories"]))
    {
        if (!(is_bool(__inst__[$ "useDefaultRepositories"]) || __inst__[$ "useDefaultRepositories"] == 0 || __inst__[$ "useDefaultRepositories"] == 1)) throw $"{__where__} :: 'useDefaultRepositories' expected Bool";
    }
    if (!is_undefined(__inst__[$ "repositories"]))
    {
        if (!is_array(__inst__[$ "repositories"])) throw $"{__where__} :: 'repositories' expected Array<ElementsElementArtifactRepository>";
    }
    if (!is_undefined(__inst__[$ "state"]))
    {
        ElementsElementDeploymentState_validate(__inst__[$ "state"], $"{__where__} :: 'state'");
    }
    if (!is_undefined(__inst__[$ "version"]))
    {
        if (!is_numeric(__inst__[$ "version"])) throw $"{__where__} :: 'version' expected Real";
    }
}

/**
 * @func ElementsElementDeploymentPathAttributes_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementDeploymentPathAttributes_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementDeploymentPathAttributes_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementDeploymentPathAttributes";

}

/**
 * @func ElementsElementDeploymentPathAttributesAp_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementDeploymentPathAttributesAp_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementDeploymentPathAttributesAp_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementDeploymentPathAttributesAp";

}

/**
 * @func ElementsElementDeploymentPathSpiBuiltins_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementDeploymentPathSpiBuiltins_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementDeploymentPathSpiBuiltins_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementDeploymentPathSpiBuiltins";

}

/**
 * @func ElementsElementDeploymentPathSpiClassPaths_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementDeploymentPathSpiClassPaths_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementDeploymentPathSpiClassPaths_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementDeploymentPathSpiClassPaths";

}

/**
 * @func ElementsElementDeploymentState_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementDeploymentState_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementDeploymentState_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'ElementDeploymentState' expected String";
    switch (__inst__)
    {
        case "UNLOADED":
            break;
        case "ENABLED":
            break;
        case "DISABLED":
            break;
        default:
            throw $"{__where__} :: 'ElementDeploymentState' invalid ElementDeploymentState '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsElementEventConsumerMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementEventConsumerMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementEventConsumerMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementEventConsumerMetadata";

    if (!is_undefined(__inst__[$ "serviceType"]))
    {
        if (!is_string(__inst__[$ "serviceType"])) throw $"{__where__} :: 'serviceType' expected String";
    }
    if (!is_undefined(__inst__[$ "serviceName"]))
    {
        if (!is_string(__inst__[$ "serviceName"])) throw $"{__where__} :: 'serviceName' expected String";
    }
    if (!is_undefined(__inst__[$ "eventName"]))
    {
        if (!is_string(__inst__[$ "eventName"])) throw $"{__where__} :: 'eventName' expected String";
    }
    if (!is_undefined(__inst__[$ "methodName"]))
    {
        if (!is_string(__inst__[$ "methodName"])) throw $"{__where__} :: 'methodName' expected String";
    }
}

/**
 * @func ElementsElementEventProducerMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementEventProducerMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementEventProducerMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementEventProducerMetadata";

    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "parameters"]))
    {
        if (!is_array(__inst__[$ "parameters"])) throw $"{__where__} :: 'parameters' expected Array<String>";
    }
}

/**
 * @func ElementsElementFeature_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementFeature_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementFeature_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementFeature";

    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
}

/**
 * @func ElementsElementManifestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementManifestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementManifestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementManifestMetadata";

    if (!is_undefined(__inst__[$ "version"]))
    {
        ElementsSystemVersion_validate(__inst__[$ "version"], $"{__where__} :: 'version'");
    }
    if (!is_undefined(__inst__[$ "builtinSpis"]))
    {
        if (!is_array(__inst__[$ "builtinSpis"])) throw $"{__where__} :: 'builtinSpis' expected Array<String>";
    }
}

/**
 * @func ElementsElementManifestRecord_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementManifestRecord_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementManifestRecord_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementManifestRecord";

    if (!is_undefined(__inst__[$ "version"]))
    {
        ElementsSystemVersion_validate(__inst__[$ "version"], $"{__where__} :: 'version'");
    }
    if (!is_undefined(__inst__[$ "builtinSpis"]))
    {
        if (!is_array(__inst__[$ "builtinSpis"])) throw $"{__where__} :: 'builtinSpis' expected Array<String>";
    }
}

/**
 * @func ElementsElementMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementMetadata";

    if (!is_undefined(__inst__[$ "type"]))
    {
        ElementsElementMetadataType_validate(__inst__[$ "type"], $"{__where__} :: 'type'");
    }
    if (!is_undefined(__inst__[$ "definition"]))
    {
        ElementsElementDefinitionMetadata_validate(__inst__[$ "definition"], $"{__where__} :: 'definition'");
    }
    if (!is_undefined(__inst__[$ "services"]))
    {
        if (!is_array(__inst__[$ "services"])) throw $"{__where__} :: 'services' expected Array<ElementsElementServiceMetadata>";
    }
    if (!is_undefined(__inst__[$ "producedEvents"]))
    {
        if (!is_array(__inst__[$ "producedEvents"])) throw $"{__where__} :: 'producedEvents' expected Array<ElementsElementEventProducerMetadata>";
    }
    if (!is_undefined(__inst__[$ "consumedEvents"]))
    {
        if (!is_array(__inst__[$ "consumedEvents"])) throw $"{__where__} :: 'consumedEvents' expected Array<ElementsElementEventConsumerMetadata>";
    }
    if (!is_undefined(__inst__[$ "dependencies"]))
    {
        if (!is_array(__inst__[$ "dependencies"])) throw $"{__where__} :: 'dependencies' expected Array<ElementsElementDependencyMetadata>";
    }
    if (!is_undefined(__inst__[$ "attributes"]))
    {
        ElementsElementMetadataAttributes_validate(__inst__[$ "attributes"], $"{__where__} :: 'attributes'");
    }
    if (!is_undefined(__inst__[$ "defaultAttributes"]))
    {
        if (!is_array(__inst__[$ "defaultAttributes"])) throw $"{__where__} :: 'defaultAttributes' expected Array<ElementsElementDefaultAttributeRecord>";
    }
    if (!is_undefined(__inst__[$ "requiredAttributes"]))
    {
        if (!is_array(__inst__[$ "requiredAttributes"])) throw $"{__where__} :: 'requiredAttributes' expected Array<ElementsElementRequiredAttributeRecord>";
    }
    if (!is_undefined(__inst__[$ "elementPath"]))
    {
        if (!is_string(__inst__[$ "elementPath"])) throw $"{__where__} :: 'elementPath' expected String";
    }
    if (!is_undefined(__inst__[$ "sourceElmArtifact"]))
    {
        if (!is_string(__inst__[$ "sourceElmArtifact"])) throw $"{__where__} :: 'sourceElmArtifact' expected String";
    }
}

/**
 * @func ElementsElementMetadataAttributes_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementMetadataAttributes_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementMetadataAttributes_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementMetadataAttributes";

}

/**
 * @func ElementsElementMetadataType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementMetadataType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementMetadataType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'ElementMetadataType' expected String";
    switch (__inst__)
    {
        case "ISOLATED_CLASSPATH":
            break;
        case "SHARED_CLASSPATH":
            break;
        default:
            throw $"{__where__} :: 'ElementMetadataType' invalid ElementMetadataType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsElementPackageDefinition_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementPackageDefinition_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementPackageDefinition_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementPackageDefinition";

    if (!is_string(__inst__[$ "elmArtifact"])) throw $"{__where__} :: 'elmArtifact' expected String";
    if (!is_undefined(__inst__[$ "pathSpiBuiltins"]))
    {
        ElementsElementPackageDefinitionPathSpiBuiltins_validate(__inst__[$ "pathSpiBuiltins"], $"{__where__} :: 'pathSpiBuiltins'");
    }
    if (!is_undefined(__inst__[$ "pathSpiClassPaths"]))
    {
        ElementsElementPackageDefinitionPathSpiClassPaths_validate(__inst__[$ "pathSpiClassPaths"], $"{__where__} :: 'pathSpiClassPaths'");
    }
    if (!is_undefined(__inst__[$ "pathAttributes"]))
    {
        ElementsElementPackageDefinitionPathAttributes_validate(__inst__[$ "pathAttributes"], $"{__where__} :: 'pathAttributes'");
    }
}

/**
 * @func ElementsElementPackageDefinitionPathAttributes_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementPackageDefinitionPathAttributes_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementPackageDefinitionPathAttributes_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementPackageDefinitionPathAttributes";

}

/**
 * @func ElementsElementPackageDefinitionPathAttributesAp_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementPackageDefinitionPathAttributesAp_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementPackageDefinitionPathAttributesAp_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementPackageDefinitionPathAttributesAp";

}

/**
 * @func ElementsElementPackageDefinitionPathSpiBuiltins_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementPackageDefinitionPathSpiBuiltins_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementPackageDefinitionPathSpiBuiltins_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementPackageDefinitionPathSpiBuiltins";

}

/**
 * @func ElementsElementPackageDefinitionPathSpiClassPaths_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementPackageDefinitionPathSpiClassPaths_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementPackageDefinitionPathSpiClassPaths_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementPackageDefinitionPathSpiClassPaths";

}

/**
 * @func ElementsElementPackageRecord_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementPackageRecord_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementPackageRecord_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementPackageRecord";

    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "recursive"]))
    {
        if (!(is_bool(__inst__[$ "recursive"]) || __inst__[$ "recursive"] == 0 || __inst__[$ "recursive"] == 1)) throw $"{__where__} :: 'recursive' expected Bool";
    }
}

/**
 * @func ElementsElementPathDefinition_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementPathDefinition_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementPathDefinition_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementPathDefinition";

    if (!is_undefined(__inst__[$ "path"]))
    {
        if (!is_string(__inst__[$ "path"])) throw $"{__where__} :: 'path' expected String";
    }
    if (!is_undefined(__inst__[$ "apiArtifacts"]))
    {
        if (!is_array(__inst__[$ "apiArtifacts"])) throw $"{__where__} :: 'apiArtifacts' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "spiBuiltins"]))
    {
        if (!is_array(__inst__[$ "spiBuiltins"])) throw $"{__where__} :: 'spiBuiltins' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "spiArtifacts"]))
    {
        if (!is_array(__inst__[$ "spiArtifacts"])) throw $"{__where__} :: 'spiArtifacts' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "elementArtifacts"]))
    {
        if (!is_array(__inst__[$ "elementArtifacts"])) throw $"{__where__} :: 'elementArtifacts' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "attributes"]))
    {
        ElementsElementPathDefinitionAttributes_validate(__inst__[$ "attributes"], $"{__where__} :: 'attributes'");
    }
}

/**
 * @func ElementsElementPathDefinitionAttributes_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementPathDefinitionAttributes_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementPathDefinitionAttributes_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementPathDefinitionAttributes";

}

/**
 * @func ElementsElementPathRecordMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementPathRecordMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementPathRecordMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementPathRecordMetadata";

    if (!is_undefined(__inst__[$ "path"]))
    {
        if (!is_string(__inst__[$ "path"])) throw $"{__where__} :: 'path' expected String";
    }
    if (!is_undefined(__inst__[$ "api"]))
    {
        if (!is_array(__inst__[$ "api"])) throw $"{__where__} :: 'api' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "spi"]))
    {
        if (!is_array(__inst__[$ "spi"])) throw $"{__where__} :: 'spi' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "lib"]))
    {
        if (!is_array(__inst__[$ "lib"])) throw $"{__where__} :: 'lib' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "classpath"]))
    {
        if (!is_array(__inst__[$ "classpath"])) throw $"{__where__} :: 'classpath' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "attributes"]))
    {
        ElementsElementPathRecordMetadataAttributes_validate(__inst__[$ "attributes"], $"{__where__} :: 'attributes'");
    }
    if (!is_undefined(__inst__[$ "manifest"]))
    {
        ElementsElementManifestMetadata_validate(__inst__[$ "manifest"], $"{__where__} :: 'manifest'");
    }
}

/**
 * @func ElementsElementPathRecordMetadataAttributes_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementPathRecordMetadataAttributes_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementPathRecordMetadataAttributes_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementPathRecordMetadataAttributes";

}

/**
 * @func ElementsElementRequiredAttributeRecord_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementRequiredAttributeRecord_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementRequiredAttributeRecord_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementRequiredAttributeRecord";

    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "sensitive"]))
    {
        if (!(is_bool(__inst__[$ "sensitive"]) || __inst__[$ "sensitive"] == 0 || __inst__[$ "sensitive"] == 1)) throw $"{__where__} :: 'sensitive' expected Bool";
    }
}

/**
 * @func ElementsElementRuntimeStatus_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementRuntimeStatus_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementRuntimeStatus_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementRuntimeStatus";

    if (!is_undefined(__inst__[$ "deployment"]))
    {
        ElementsElementDeployment_validate(__inst__[$ "deployment"], $"{__where__} :: 'deployment'");
    }
    if (!is_undefined(__inst__[$ "status"]))
    {
        if (!is_string(__inst__[$ "status"])) throw $"{__where__} :: 'status' expected String";
    }
    if (!is_undefined(__inst__[$ "elementPaths"]))
    {
        if (!is_array(__inst__[$ "elementPaths"])) throw $"{__where__} :: 'elementPaths' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "deploymentFiles"]))
    {
        if (!is_array(__inst__[$ "deploymentFiles"])) throw $"{__where__} :: 'deploymentFiles' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "logs"]))
    {
        if (!is_array(__inst__[$ "logs"])) throw $"{__where__} :: 'logs' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "warnings"]))
    {
        if (!is_array(__inst__[$ "warnings"])) throw $"{__where__} :: 'warnings' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "errors"]))
    {
        if (!is_array(__inst__[$ "errors"])) throw $"{__where__} :: 'errors' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "elements"]))
    {
        if (!is_array(__inst__[$ "elements"])) throw $"{__where__} :: 'elements' expected Array<ElementsElementMetadata>";
    }
    if (!is_undefined(__inst__[$ "failedElements"]))
    {
        if (!is_array(__inst__[$ "failedElements"])) throw $"{__where__} :: 'failedElements' expected Array<ElementsElementMetadata>";
    }
    if (!is_undefined(__inst__[$ "elementManifests"]))
    {
        ElementsElementRuntimeStatusElementManifests_validate(__inst__[$ "elementManifests"], $"{__where__} :: 'elementManifests'");
    }
}

/**
 * @func ElementsElementRuntimeStatusElementManifests_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementRuntimeStatusElementManifests_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementRuntimeStatusElementManifests_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementRuntimeStatusElementManifests";

}

/**
 * @func ElementsElementServiceExportMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementServiceExportMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementServiceExportMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementServiceExportMetadata";

    if (!is_undefined(__inst__[$ "exposed"]))
    {
        if (!is_array(__inst__[$ "exposed"])) throw $"{__where__} :: 'exposed' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
}

/**
 * @func ElementsElementServiceImplementationMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementServiceImplementationMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementServiceImplementationMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementServiceImplementationMetadata";

    if (!is_undefined(__inst__[$ "type"]))
    {
        if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    }
    if (!is_undefined(__inst__[$ "expose"]))
    {
        if (!(is_bool(__inst__[$ "expose"]) || __inst__[$ "expose"] == 0 || __inst__[$ "expose"] == 1)) throw $"{__where__} :: 'expose' expected Bool";
    }
}

/**
 * @func ElementsElementServiceMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementServiceMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementServiceMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementServiceMetadata";

    if (!is_undefined(__inst__[$ "implementation"]))
    {
        ElementsElementServiceImplementationMetadata_validate(__inst__[$ "implementation"], $"{__where__} :: 'implementation'");
    }
    if (!is_undefined(__inst__[$ "export"]))
    {
        ElementsElementServiceExportMetadata_validate(__inst__[$ "export"], $"{__where__} :: 'export'");
    }
}

/**
 * @func ElementsElementServiceReference_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementServiceReference_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementServiceReference_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementServiceReference";

    if (!is_string(__inst__[$ "elementName"])) throw $"{__where__} :: 'elementName' expected String";
    if (!is_undefined(__inst__[$ "serviceType"]))
    {
        if (!is_string(__inst__[$ "serviceType"])) throw $"{__where__} :: 'serviceType' expected String";
    }
    if (!is_undefined(__inst__[$ "serviceName"]))
    {
        if (!is_string(__inst__[$ "serviceName"])) throw $"{__where__} :: 'serviceName' expected String";
    }
}

/**
 * @func ElementsElementSpi_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsElementSpi_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsElementSpi_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsElementSpi";

    if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    if (!is_string(__inst__[$ "version"])) throw $"{__where__} :: 'version' expected String";
    if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    if (!is_array(__inst__[$ "coordinates"])) throw $"{__where__} :: 'coordinates' expected Array<String>";
}

/**
 * @func ElementsEmailVerificationRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsEmailVerificationRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsEmailVerificationRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsEmailVerificationRequest";

    if (!is_string(__inst__[$ "email"])) throw $"{__where__} :: 'email' expected String";
}

/**
 * @func ElementsErrorResponse_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsErrorResponse_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsErrorResponse_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsErrorResponse";

    if (!is_undefined(__inst__[$ "code"]))
    {
        if (!is_string(__inst__[$ "code"])) throw $"{__where__} :: 'code' expected String";
    }
    if (!is_undefined(__inst__[$ "message"]))
    {
        if (!is_string(__inst__[$ "message"])) throw $"{__where__} :: 'message' expected String";
    }
}

/**
 * @func ElementsFacebookApplicationConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsFacebookApplicationConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsFacebookApplicationConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsFacebookApplicationConfiguration";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    ElementsApplication_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    if (!is_string(__inst__[$ "applicationId"])) throw $"{__where__} :: 'applicationId' expected String";
    if (!is_string(__inst__[$ "applicationSecret"])) throw $"{__where__} :: 'applicationSecret' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "builtinApplicationPermissions"]))
    {
        if (!is_array(__inst__[$ "builtinApplicationPermissions"])) throw $"{__where__} :: 'builtinApplicationPermissions' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "productBundles"]))
    {
        if (!is_array(__inst__[$ "productBundles"])) throw $"{__where__} :: 'productBundles' expected Array<ElementsProductBundle>";
    }
}

/**
 * @func ElementsFacebookIapReceipt_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsFacebookIapReceipt_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsFacebookIapReceipt_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsFacebookIapReceipt";

    if (!is_undefined(__inst__[$ "userId"]))
    {
        if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(__inst__[$ "purchaseId"]))
    {
        if (!is_string(__inst__[$ "purchaseId"])) throw $"{__where__} :: 'purchaseId' expected String";
    }
    if (!is_undefined(__inst__[$ "reportingId"]))
    {
        if (!is_string(__inst__[$ "reportingId"])) throw $"{__where__} :: 'reportingId' expected String";
    }
    if (!is_undefined(__inst__[$ "sku"]))
    {
        if (!is_string(__inst__[$ "sku"])) throw $"{__where__} :: 'sku' expected String";
    }
    if (!is_undefined(__inst__[$ "grantTime"]))
    {
        if (!is_numeric(__inst__[$ "grantTime"])) throw $"{__where__} :: 'grantTime' expected Real";
    }
    if (!is_undefined(__inst__[$ "expirationTime"]))
    {
        if (!is_numeric(__inst__[$ "expirationTime"])) throw $"{__where__} :: 'expirationTime' expected Real";
    }
    if (!is_undefined(__inst__[$ "developerPayload"]))
    {
        if (!is_string(__inst__[$ "developerPayload"])) throw $"{__where__} :: 'developerPayload' expected String";
    }
}

/**
 * @func ElementsFCMRegistration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsFCMRegistration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsFCMRegistration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsFCMRegistration";

    if (!is_string(__inst__[$ "registrationToken"])) throw $"{__where__} :: 'registrationToken' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "profile"]))
    {
        ElementsProfile_validate(__inst__[$ "profile"], $"{__where__} :: 'profile'");
    }
}

/**
 * @func ElementsFirebaseApplicationConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsFirebaseApplicationConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsFirebaseApplicationConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsFirebaseApplicationConfiguration";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    ElementsApplication_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    if (!is_string(__inst__[$ "projectId"])) throw $"{__where__} :: 'projectId' expected String";
    if (!is_string(__inst__[$ "serviceAccountCredentials"])) throw $"{__where__} :: 'serviceAccountCredentials' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
}

/**
 * @func ElementsFormDataBodyPart_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsFormDataBodyPart_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsFormDataBodyPart_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsFormDataBodyPart";

    if (!is_undefined(__inst__[$ "contentDisposition"]))
    {
        ElementsContentDisposition_validate(__inst__[$ "contentDisposition"], $"{__where__} :: 'contentDisposition'");
    }
    if (!is_undefined(__inst__[$ "entity"]))
    {
        if (!is_struct(__inst__[$ "entity"])) throw $"{__where__} :: 'entity' expected Struct";
    }
    if (!is_undefined(__inst__[$ "headers"]))
    {
        ElementsFormDataBodyPartHeaders_validate(__inst__[$ "headers"], $"{__where__} :: 'headers'");
    }
    if (!is_undefined(__inst__[$ "mediaType"]))
    {
        ElementsMediaType_validate(__inst__[$ "mediaType"], $"{__where__} :: 'mediaType'");
    }
    if (!is_undefined(__inst__[$ "messageBodyWorkers"]))
    {
        ElementsMessageBodyWorkers_validate(__inst__[$ "messageBodyWorkers"], $"{__where__} :: 'messageBodyWorkers'");
    }
    if (!is_undefined(__inst__[$ "parent"]))
    {
        ElementsMultiPart_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    }
    if (!is_undefined(__inst__[$ "providers"]))
    {
        ElementsProviders_validate(__inst__[$ "providers"], $"{__where__} :: 'providers'");
    }
    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "value"]))
    {
        if (!is_string(__inst__[$ "value"])) throw $"{__where__} :: 'value' expected String";
    }
    if (!is_undefined(__inst__[$ "content"]))
    {
        if (!is_struct(__inst__[$ "content"])) throw $"{__where__} :: 'content' expected Struct";
    }
    if (!is_undefined(__inst__[$ "fileName"]))
    {
        if (!is_string(__inst__[$ "fileName"])) throw $"{__where__} :: 'fileName' expected String";
    }
    if (!is_undefined(__inst__[$ "formDataContentDisposition"]))
    {
        ElementsFormDataContentDisposition_validate(__inst__[$ "formDataContentDisposition"], $"{__where__} :: 'formDataContentDisposition'");
    }
    if (!is_undefined(__inst__[$ "simple"]))
    {
        if (!(is_bool(__inst__[$ "simple"]) || __inst__[$ "simple"] == 0 || __inst__[$ "simple"] == 1)) throw $"{__where__} :: 'simple' expected Bool";
    }
    if (!is_undefined(__inst__[$ "parameterizedHeaders"]))
    {
        ElementsFormDataBodyPartParameterizedHeaders_validate(__inst__[$ "parameterizedHeaders"], $"{__where__} :: 'parameterizedHeaders'");
    }
}

/**
 * @func ElementsFormDataBodyPartHeaders_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsFormDataBodyPartHeaders_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsFormDataBodyPartHeaders_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsFormDataBodyPartHeaders";

    if (!is_undefined(__inst__[$ "empty"]))
    {
        if (!(is_bool(__inst__[$ "empty"]) || __inst__[$ "empty"] == 0 || __inst__[$ "empty"] == 1)) throw $"{__where__} :: 'empty' expected Bool";
    }
}

/**
 * @func ElementsFormDataBodyPartParameterizedHeaders_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsFormDataBodyPartParameterizedHeaders_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsFormDataBodyPartParameterizedHeaders_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsFormDataBodyPartParameterizedHeaders";

    if (!is_undefined(__inst__[$ "empty"]))
    {
        if (!(is_bool(__inst__[$ "empty"]) || __inst__[$ "empty"] == 0 || __inst__[$ "empty"] == 1)) throw $"{__where__} :: 'empty' expected Bool";
    }
}

/**
 * @func ElementsFormDataContentDisposition_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsFormDataContentDisposition_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsFormDataContentDisposition_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsFormDataContentDisposition";

    if (!is_undefined(__inst__[$ "type"]))
    {
        if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    }
    if (!is_undefined(__inst__[$ "parameters"]))
    {
        ElementsFormDataContentDispositionParameters_validate(__inst__[$ "parameters"], $"{__where__} :: 'parameters'");
    }
    if (!is_undefined(__inst__[$ "fileName"]))
    {
        if (!is_string(__inst__[$ "fileName"])) throw $"{__where__} :: 'fileName' expected String";
    }
    if (!is_undefined(__inst__[$ "creationDate"]))
    {
        if (!is_string(__inst__[$ "creationDate"])) throw $"{__where__} :: 'creationDate' expected String";
    }
    if (!is_undefined(__inst__[$ "modificationDate"]))
    {
        if (!is_string(__inst__[$ "modificationDate"])) throw $"{__where__} :: 'modificationDate' expected String";
    }
    if (!is_undefined(__inst__[$ "readDate"]))
    {
        if (!is_string(__inst__[$ "readDate"])) throw $"{__where__} :: 'readDate' expected String";
    }
    if (!is_undefined(__inst__[$ "size"]))
    {
        if (!is_numeric(__inst__[$ "size"])) throw $"{__where__} :: 'size' expected Real";
    }
    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
}

/**
 * @func ElementsFormDataContentDispositionParameters_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsFormDataContentDispositionParameters_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsFormDataContentDispositionParameters_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsFormDataContentDispositionParameters";

}

/**
 * @func ElementsFriend_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsFriend_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsFriend_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsFriend";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "user"]))
    {
        ElementsUser_validate(__inst__[$ "user"], $"{__where__} :: 'user'");
    }
    if (!is_undefined(__inst__[$ "friendship"]))
    {
        ElementsFriendFriendship_validate(__inst__[$ "friendship"], $"{__where__} :: 'friendship'");
    }
    if (!is_undefined(__inst__[$ "profiles"]))
    {
        if (!is_array(__inst__[$ "profiles"])) throw $"{__where__} :: 'profiles' expected Array<ElementsProfile>";
    }
}

/**
 * @func ElementsFriendFriendship_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsFriendFriendship_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsFriendFriendship_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'FriendFriendship' expected String";
    switch (__inst__)
    {
        case "NONE":
            break;
        case "OUTGOING":
            break;
        case "INCOMING":
            break;
        case "MUTUAL":
            break;
        default:
            throw $"{__where__} :: 'FriendFriendship' invalid FriendFriendship '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsGooglePlayApplicationConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsGooglePlayApplicationConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsGooglePlayApplicationConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsGooglePlayApplicationConfiguration";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    ElementsApplication_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "applicationId"]))
    {
        if (!is_string(__inst__[$ "applicationId"])) throw $"{__where__} :: 'applicationId' expected String";
    }
    if (!is_undefined(__inst__[$ "jsonKey"]))
    {
        ElementsGooglePlayApplicationConfigurationJsonKey_validate(__inst__[$ "jsonKey"], $"{__where__} :: 'jsonKey'");
    }
    if (!is_undefined(__inst__[$ "productBundles"]))
    {
        if (!is_array(__inst__[$ "productBundles"])) throw $"{__where__} :: 'productBundles' expected Array<ElementsProductBundle>";
    }
}

/**
 * @func ElementsGooglePlayApplicationConfigurationJsonKey_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsGooglePlayApplicationConfigurationJsonKey_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsGooglePlayApplicationConfigurationJsonKey_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsGooglePlayApplicationConfigurationJsonKey";

}

/**
 * @func ElementsHealthStatus_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsHealthStatus_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsHealthStatus_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsHealthStatus";

    if (!is_undefined(__inst__[$ "checksFailed"]))
    {
        if (!is_numeric(__inst__[$ "checksFailed"])) throw $"{__where__} :: 'checksFailed' expected Real";
    }
    if (!is_undefined(__inst__[$ "checksPerformed"]))
    {
        if (!is_numeric(__inst__[$ "checksPerformed"])) throw $"{__where__} :: 'checksPerformed' expected Real";
    }
    if (!is_undefined(__inst__[$ "overallHealth"]))
    {
        if (!is_numeric(__inst__[$ "overallHealth"])) throw $"{__where__} :: 'overallHealth' expected Real";
    }
    if (!is_undefined(__inst__[$ "problems"]))
    {
        if (!is_array(__inst__[$ "problems"])) throw $"{__where__} :: 'problems' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "instanceStatus"]))
    {
        ElementsInstanceHealthStatus_validate(__inst__[$ "instanceStatus"], $"{__where__} :: 'instanceStatus'");
    }
    if (!is_undefined(__inst__[$ "databaseStatus"]))
    {
        if (!is_array(__inst__[$ "databaseStatus"])) throw $"{__where__} :: 'databaseStatus' expected Array<ElementsDatabaseHealthStatus>";
    }
    if (!is_undefined(__inst__[$ "discoveryHealthStatus"]))
    {
        ElementsDiscoveryHealthStatus_validate(__inst__[$ "discoveryHealthStatus"], $"{__where__} :: 'discoveryHealthStatus'");
    }
    if (!is_undefined(__inst__[$ "routingHealthStatus"]))
    {
        ElementsRoutingHealthStatus_validate(__inst__[$ "routingHealthStatus"], $"{__where__} :: 'routingHealthStatus'");
    }
    if (!is_undefined(__inst__[$ "invokerHealthStatus"]))
    {
        ElementsInvokerHealthStatus_validate(__inst__[$ "invokerHealthStatus"], $"{__where__} :: 'invokerHealthStatus'");
    }
}

/**
 * @func ElementsIndexMetadataObject_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsIndexMetadataObject_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsIndexMetadataObject_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsIndexMetadataObject";

    if (!is_undefined(__inst__[$ "identifier"]))
    {
        if (!is_struct(__inst__[$ "identifier"])) throw $"{__where__} :: 'identifier' expected Struct";
    }
}

/**
 * @func ElementsIndexPlanObject_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsIndexPlanObject_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsIndexPlanObject_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsIndexPlanObject";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "state"]))
    {
        ElementsIndexPlanObjectState_validate(__inst__[$ "state"], $"{__where__} :: 'state'");
    }
    if (!is_undefined(__inst__[$ "steps"]))
    {
        ElementsIndexPlanStepObject_validate(__inst__[$ "steps"], $"{__where__} :: 'steps'");
    }
}

/**
 * @func ElementsIndexPlanObjectState_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsIndexPlanObjectState_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsIndexPlanObjectState_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'IndexPlanObjectState' expected String";
    switch (__inst__)
    {
        case "READY":
            break;
        case "PROCESSING":
            break;
        case "APPLIED":
            break;
        default:
            throw $"{__where__} :: 'IndexPlanObjectState' invalid IndexPlanObjectState '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsIndexPlanStepObject_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsIndexPlanStepObject_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsIndexPlanStepObject_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsIndexPlanStepObject";

    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "operation"]))
    {
        ElementsIndexPlanStepObjectOperation_validate(__inst__[$ "operation"], $"{__where__} :: 'operation'");
    }
    if (!is_undefined(__inst__[$ "indexMetadata"]))
    {
        ElementsIndexMetadataObject_validate(__inst__[$ "indexMetadata"], $"{__where__} :: 'indexMetadata'");
    }
}

/**
 * @func ElementsIndexPlanStepObjectOperation_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsIndexPlanStepObjectOperation_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsIndexPlanStepObjectOperation_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'IndexPlanStepObjectOperation' expected String";
    switch (__inst__)
    {
        case "CREATE":
            break;
        case "LEAVE_AS_IS":
            break;
        case "REPLACE":
            break;
        case "DELETE":
            break;
        default:
            throw $"{__where__} :: 'IndexPlanStepObjectOperation' invalid IndexPlanStepObjectOperation '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsInspectUploadedElmBody_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsInspectUploadedElmBody_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsInspectUploadedElmBody_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsInspectUploadedElmBody";

    if (!is_undefined(__inst__[$ "elm"]))
    {
        if (!is_struct(__inst__[$ "elm"])) throw $"{__where__} :: 'elm' expected Struct";
    }
}

/**
 * @func ElementsInstanceHealthStatus_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsInstanceHealthStatus_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsInstanceHealthStatus_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsInstanceHealthStatus";

    if (!is_undefined(__inst__[$ "instanceId"]))
    {
        if (!is_string(__inst__[$ "instanceId"])) throw $"{__where__} :: 'instanceId' expected String";
    }
    if (!is_undefined(__inst__[$ "nodeIds"]))
    {
        if (!is_array(__inst__[$ "nodeIds"])) throw $"{__where__} :: 'nodeIds' expected Array<String>";
    }
}

/**
 * @func ElementsInventoryItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsInventoryItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsInventoryItem_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsInventoryItem";

    ElementsUser_validate(__inst__[$ "user"], $"{__where__} :: 'user'");
    ElementsItem_validate(__inst__[$ "item"], $"{__where__} :: 'item'");
    if (!is_numeric(__inst__[$ "quantity"])) throw $"{__where__} :: 'quantity' expected Real";
    if (!is_numeric(__inst__[$ "priority"])) throw $"{__where__} :: 'priority' expected Real";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
}

/**
 * @func ElementsInviteViaPhonesRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsInviteViaPhonesRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsInviteViaPhonesRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsInviteViaPhonesRequest";

    if (!is_undefined(__inst__[$ "phoneNumbers"]))
    {
        if (!is_array(__inst__[$ "phoneNumbers"])) throw $"{__where__} :: 'phoneNumbers' expected Array<String>";
    }
}

/**
 * @func ElementsInviteViaPhonesResponse_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsInviteViaPhonesResponse_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsInviteViaPhonesResponse_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsInviteViaPhonesResponse";

    if (!is_undefined(__inst__[$ "matched"]))
    {
        if (!is_array(__inst__[$ "matched"])) throw $"{__where__} :: 'matched' expected Array<ElementsPhoneMatchedInvitation>";
    }
}

/**
 * @func ElementsInvokerHealthStatus_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsInvokerHealthStatus_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsInvokerHealthStatus_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsInvokerHealthStatus";

    if (!is_undefined(__inst__[$ "priorities"]))
    {
        if (!is_array(__inst__[$ "priorities"])) throw $"{__where__} :: 'priorities' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "connectedPeers"]))
    {
        if (!is_array(__inst__[$ "connectedPeers"])) throw $"{__where__} :: 'connectedPeers' expected Array<String>";
    }
}

/**
 * @func ElementsIosApplicationConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsIosApplicationConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsIosApplicationConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsIosApplicationConfiguration";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    ElementsApplication_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    if (!is_string(__inst__[$ "applicationId"])) throw $"{__where__} :: 'applicationId' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "productBundles"]))
    {
        if (!is_array(__inst__[$ "productBundles"])) throw $"{__where__} :: 'productBundles' expected Array<ElementsProductBundle>";
    }
}

/**
 * @func ElementsItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsItem_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsItem";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    ElementsItemCategory_validate(__inst__[$ "category"], $"{__where__} :: 'category'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "tags"]))
    {
        if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "metadataSpec"]))
    {
        ElementsMetadataSpec_validate(__inst__[$ "metadataSpec"], $"{__where__} :: 'metadataSpec'");
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsItemMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
    if (!is_undefined(__inst__[$ "publicVisible"]))
    {
        if (!(is_bool(__inst__[$ "publicVisible"]) || __inst__[$ "publicVisible"] == 0 || __inst__[$ "publicVisible"] == 1)) throw $"{__where__} :: 'publicVisible' expected Bool";
    }
}

/**
 * @func ElementsItemCategory_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsItemCategory_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsItemCategory_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'ItemCategory' expected String";
    switch (__inst__)
    {
        case "FUNGIBLE":
            break;
        case "DISTINCT":
            break;
        default:
            throw $"{__where__} :: 'ItemCategory' invalid ItemCategory '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsItemLedgerEntry_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsItemLedgerEntry_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsItemLedgerEntry_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsItemLedgerEntry";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "inventoryItemId"]))
    {
        if (!is_string(__inst__[$ "inventoryItemId"])) throw $"{__where__} :: 'inventoryItemId' expected String";
    }
    if (!is_undefined(__inst__[$ "itemCategory"]))
    {
        ElementsItemLedgerEntryItemCategory_validate(__inst__[$ "itemCategory"], $"{__where__} :: 'itemCategory'");
    }
    if (!is_undefined(__inst__[$ "itemId"]))
    {
        if (!is_string(__inst__[$ "itemId"])) throw $"{__where__} :: 'itemId' expected String";
    }
    if (!is_undefined(__inst__[$ "userId"]))
    {
        if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(__inst__[$ "actorId"]))
    {
        if (!is_string(__inst__[$ "actorId"])) throw $"{__where__} :: 'actorId' expected String";
    }
    if (!is_undefined(__inst__[$ "eventType"]))
    {
        ElementsItemLedgerEntryEventType_validate(__inst__[$ "eventType"], $"{__where__} :: 'eventType'");
    }
    if (!is_undefined(__inst__[$ "timestamp"]))
    {
        if (!is_numeric(__inst__[$ "timestamp"])) throw $"{__where__} :: 'timestamp' expected Real";
    }
    if (!is_undefined(__inst__[$ "quantityBefore"]))
    {
        if (!is_numeric(__inst__[$ "quantityBefore"])) throw $"{__where__} :: 'quantityBefore' expected Real";
    }
    if (!is_undefined(__inst__[$ "quantityAfter"]))
    {
        if (!is_numeric(__inst__[$ "quantityAfter"])) throw $"{__where__} :: 'quantityAfter' expected Real";
    }
    if (!is_undefined(__inst__[$ "metadataBefore"]))
    {
        ElementsItemLedgerEntryMetadataBefore_validate(__inst__[$ "metadataBefore"], $"{__where__} :: 'metadataBefore'");
    }
    if (!is_undefined(__inst__[$ "metadataAfter"]))
    {
        ElementsItemLedgerEntryMetadataAfter_validate(__inst__[$ "metadataAfter"], $"{__where__} :: 'metadataAfter'");
    }
}

/**
 * @func ElementsItemLedgerEntryEventType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsItemLedgerEntryEventType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsItemLedgerEntryEventType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'ItemLedgerEntryEventType' expected String";
    switch (__inst__)
    {
        case "CREATED":
            break;
        case "QUANTITY_ADJUSTED":
            break;
        case "QUANTITY_SET":
            break;
        case "DELETED":
            break;
        case "METADATA_UPDATED":
            break;
        case "ITEM_CREATED":
            break;
        case "ITEM_UPDATED":
            break;
        case "ITEM_DELETED":
            break;
        default:
            throw $"{__where__} :: 'ItemLedgerEntryEventType' invalid ItemLedgerEntryEventType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsItemLedgerEntryItemCategory_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsItemLedgerEntryItemCategory_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsItemLedgerEntryItemCategory_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'ItemLedgerEntryItemCategory' expected String";
    switch (__inst__)
    {
        case "FUNGIBLE":
            break;
        case "DISTINCT":
            break;
        default:
            throw $"{__where__} :: 'ItemLedgerEntryItemCategory' invalid ItemLedgerEntryItemCategory '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsItemLedgerEntryMetadataAfter_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsItemLedgerEntryMetadataAfter_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsItemLedgerEntryMetadataAfter_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsItemLedgerEntryMetadataAfter";

}

/**
 * @func ElementsItemLedgerEntryMetadataBefore_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsItemLedgerEntryMetadataBefore_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsItemLedgerEntryMetadataBefore_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsItemLedgerEntryMetadataBefore";

}

/**
 * @func ElementsItemMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsItemMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsItemMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsItemMetadata";

}

/**
 * @func ElementsJsonSchema_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsJsonSchema_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsJsonSchema_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsJsonSchema";

    if (!is_undefined(__inst__[$ "get$id"]))
    {
        if (!is_string(__inst__[$ "get$id"])) throw $"{__where__} :: 'get$id' expected String";
    }
    if (!is_undefined(__inst__[$ "get$schema"]))
    {
        if (!is_string(__inst__[$ "get$schema"])) throw $"{__where__} :: 'get$schema' expected String";
    }
    if (!is_undefined(__inst__[$ "title"]))
    {
        if (!is_string(__inst__[$ "title"])) throw $"{__where__} :: 'title' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "type"]))
    {
        if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    }
    if (!is_undefined(__inst__[$ "properties"]))
    {
        ElementsJsonSchemaProperties_validate(__inst__[$ "properties"], $"{__where__} :: 'properties'");
    }
    if (!is_undefined(__inst__[$ "required"]))
    {
        if (!is_array(__inst__[$ "required"])) throw $"{__where__} :: 'required' expected Array<String>";
    }
}

/**
 * @func ElementsJsonSchemaProperties_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsJsonSchemaProperties_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsJsonSchemaProperties_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsJsonSchemaProperties";

}

/**
 * @func ElementsJsonSchemaProperty_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsJsonSchemaProperty_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsJsonSchemaProperty_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsJsonSchemaProperty";

    if (!is_undefined(__inst__[$ "type"]))
    {
        if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    }
    if (!is_undefined(__inst__[$ "title"]))
    {
        if (!is_string(__inst__[$ "title"])) throw $"{__where__} :: 'title' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "required"]))
    {
        if (!is_array(__inst__[$ "required"])) throw $"{__where__} :: 'required' expected Array<String>";
    }
}

/**
 * @func ElementsJWK_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsJWK_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsJWK_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsJWK";

    if (!is_undefined(__inst__[$ "alg"]))
    {
        if (!is_string(__inst__[$ "alg"])) throw $"{__where__} :: 'alg' expected String";
    }
    if (!is_undefined(__inst__[$ "kid"]))
    {
        if (!is_string(__inst__[$ "kid"])) throw $"{__where__} :: 'kid' expected String";
    }
    if (!is_undefined(__inst__[$ "kty"]))
    {
        if (!is_string(__inst__[$ "kty"])) throw $"{__where__} :: 'kty' expected String";
    }
    if (!is_undefined(__inst__[$ "use"]))
    {
        if (!is_string(__inst__[$ "use"])) throw $"{__where__} :: 'use' expected String";
    }
    if (!is_undefined(__inst__[$ "e"]))
    {
        if (!is_string(__inst__[$ "e"])) throw $"{__where__} :: 'e' expected String";
    }
    if (!is_undefined(__inst__[$ "n"]))
    {
        if (!is_string(__inst__[$ "n"])) throw $"{__where__} :: 'n' expected String";
    }
    if (!is_undefined(__inst__[$ "crv"]))
    {
        if (!is_string(__inst__[$ "crv"])) throw $"{__where__} :: 'crv' expected String";
    }
    if (!is_undefined(__inst__[$ "x"]))
    {
        if (!is_string(__inst__[$ "x"])) throw $"{__where__} :: 'x' expected String";
    }
    if (!is_undefined(__inst__[$ "y"]))
    {
        if (!is_string(__inst__[$ "y"])) throw $"{__where__} :: 'y' expected String";
    }
}

/**
 * @func ElementsLargeObject_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsLargeObject_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsLargeObject_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsLargeObject";

    if (!is_string(__inst__[$ "path"])) throw $"{__where__} :: 'path' expected String";
    ElementsAccessPermissions_validate(__inst__[$ "accessPermissions"], $"{__where__} :: 'accessPermissions'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "url"]))
    {
        if (!is_string(__inst__[$ "url"])) throw $"{__where__} :: 'url' expected String";
    }
    if (!is_undefined(__inst__[$ "mimeType"]))
    {
        if (!is_string(__inst__[$ "mimeType"])) throw $"{__where__} :: 'mimeType' expected String";
    }
    if (!is_undefined(__inst__[$ "state"]))
    {
        ElementsLargeObjectState_validate(__inst__[$ "state"], $"{__where__} :: 'state'");
    }
    if (!is_undefined(__inst__[$ "lastModified"]))
    {
        if (!is_string(__inst__[$ "lastModified"])) throw $"{__where__} :: 'lastModified' expected String";
    }
    if (!is_undefined(__inst__[$ "originalFilename"]))
    {
        if (!is_string(__inst__[$ "originalFilename"])) throw $"{__where__} :: 'originalFilename' expected String";
    }
}

/**
 * @func ElementsLargeObjectReference_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsLargeObjectReference_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsLargeObjectReference_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsLargeObjectReference";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "url"]))
    {
        if (!is_string(__inst__[$ "url"])) throw $"{__where__} :: 'url' expected String";
    }
    if (!is_undefined(__inst__[$ "mimeType"]))
    {
        if (!is_string(__inst__[$ "mimeType"])) throw $"{__where__} :: 'mimeType' expected String";
    }
    if (!is_undefined(__inst__[$ "state"]))
    {
        ElementsLargeObjectReferenceState_validate(__inst__[$ "state"], $"{__where__} :: 'state'");
    }
    if (!is_undefined(__inst__[$ "lastModified"]))
    {
        if (!is_string(__inst__[$ "lastModified"])) throw $"{__where__} :: 'lastModified' expected String";
    }
}

/**
 * @func ElementsLargeObjectReferenceState_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsLargeObjectReferenceState_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsLargeObjectReferenceState_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'LargeObjectReferenceState' expected String";
    switch (__inst__)
    {
        case "EMPTY":
            break;
        case "UPLOADED":
            break;
        default:
            throw $"{__where__} :: 'LargeObjectReferenceState' invalid LargeObjectReferenceState '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsLargeObjectState_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsLargeObjectState_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsLargeObjectState_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'LargeObjectState' expected String";
    switch (__inst__)
    {
        case "EMPTY":
            break;
        case "UPLOADED":
            break;
        default:
            throw $"{__where__} :: 'LargeObjectState' invalid LargeObjectState '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsLeaderboard_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsLeaderboard_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsLeaderboard_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsLeaderboard";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    ElementsLeaderboardTimeStrategyType_validate(__inst__[$ "timeStrategyType"], $"{__where__} :: 'timeStrategyType'");
    ElementsLeaderboardScoreStrategyType_validate(__inst__[$ "scoreStrategyType"], $"{__where__} :: 'scoreStrategyType'");
    if (!is_string(__inst__[$ "title"])) throw $"{__where__} :: 'title' expected String";
    if (!is_string(__inst__[$ "scoreUnits"])) throw $"{__where__} :: 'scoreUnits' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "firstEpochTimestamp"]))
    {
        if (!is_numeric(__inst__[$ "firstEpochTimestamp"])) throw $"{__where__} :: 'firstEpochTimestamp' expected Real";
    }
    if (!is_undefined(__inst__[$ "epochInterval"]))
    {
        if (!is_numeric(__inst__[$ "epochInterval"])) throw $"{__where__} :: 'epochInterval' expected Real";
    }
}

/**
 * @func ElementsLeaderboardScoreStrategyType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsLeaderboardScoreStrategyType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsLeaderboardScoreStrategyType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'LeaderboardScoreStrategyType' expected String";
    switch (__inst__)
    {
        case "OVERWRITE_IF_GREATER":
            break;
        case "ACCUMULATE":
            break;
        default:
            throw $"{__where__} :: 'LeaderboardScoreStrategyType' invalid LeaderboardScoreStrategyType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsLeaderboardTimeStrategyType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsLeaderboardTimeStrategyType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsLeaderboardTimeStrategyType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'LeaderboardTimeStrategyType' expected String";
    switch (__inst__)
    {
        case "ALL_TIME":
            break;
        case "EPOCHAL":
            break;
        default:
            throw $"{__where__} :: 'LeaderboardTimeStrategyType' invalid LeaderboardTimeStrategyType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsLinkEmailPasswordRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsLinkEmailPasswordRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsLinkEmailPasswordRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsLinkEmailPasswordRequest";

    if (!is_string(__inst__[$ "email"])) throw $"{__where__} :: 'email' expected String";
    if (!is_string(__inst__[$ "password"])) throw $"{__where__} :: 'password' expected String";
}

/**
 * @func ElementsLinkUsernamePasswordRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsLinkUsernamePasswordRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsLinkUsernamePasswordRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsLinkUsernamePasswordRequest";

    if (!is_string(__inst__[$ "username"])) throw $"{__where__} :: 'username' expected String";
    if (!is_string(__inst__[$ "password"])) throw $"{__where__} :: 'password' expected String";
}

/**
 * @func ElementsMatchmakingApplicationConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMatchmakingApplicationConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMatchmakingApplicationConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMatchmakingApplicationConfiguration";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    ElementsApplication_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "success"]))
    {
        ElementsCallbackDefinition_validate(__inst__[$ "success"], $"{__where__} :: 'success'");
    }
    if (!is_undefined(__inst__[$ "matchmaker"]))
    {
        ElementsElementServiceReference_validate(__inst__[$ "matchmaker"], $"{__where__} :: 'matchmaker'");
    }
    if (!is_undefined(__inst__[$ "maxProfiles"]))
    {
        if (!is_numeric(__inst__[$ "maxProfiles"])) throw $"{__where__} :: 'maxProfiles' expected Real";
    }
    if (!is_undefined(__inst__[$ "lingerSeconds"]))
    {
        if (!is_numeric(__inst__[$ "lingerSeconds"])) throw $"{__where__} :: 'lingerSeconds' expected Real";
    }
    if (!is_undefined(__inst__[$ "timeoutSeconds"]))
    {
        if (!is_numeric(__inst__[$ "timeoutSeconds"])) throw $"{__where__} :: 'timeoutSeconds' expected Real";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsMatchmakingApplicationConfigurationMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
    if (!is_undefined(__inst__[$ "metadataSpec"]))
    {
        ElementsMetadataSpec_validate(__inst__[$ "metadataSpec"], $"{__where__} :: 'metadataSpec'");
    }
}

/**
 * @func ElementsMatchmakingApplicationConfigurationMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMatchmakingApplicationConfigurationMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMatchmakingApplicationConfigurationMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMatchmakingApplicationConfigurationMetadata";

}

/**
 * @func ElementsMediaType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMediaType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMediaType_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMediaType";

    if (!is_undefined(__inst__[$ "type"]))
    {
        if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    }
    if (!is_undefined(__inst__[$ "subtype"]))
    {
        if (!is_string(__inst__[$ "subtype"])) throw $"{__where__} :: 'subtype' expected String";
    }
    if (!is_undefined(__inst__[$ "parameters"]))
    {
        ElementsMediaTypeParameters_validate(__inst__[$ "parameters"], $"{__where__} :: 'parameters'");
    }
    if (!is_undefined(__inst__[$ "wildcardType"]))
    {
        if (!(is_bool(__inst__[$ "wildcardType"]) || __inst__[$ "wildcardType"] == 0 || __inst__[$ "wildcardType"] == 1)) throw $"{__where__} :: 'wildcardType' expected Bool";
    }
    if (!is_undefined(__inst__[$ "wildcardSubtype"]))
    {
        if (!(is_bool(__inst__[$ "wildcardSubtype"]) || __inst__[$ "wildcardSubtype"] == 0 || __inst__[$ "wildcardSubtype"] == 1)) throw $"{__where__} :: 'wildcardSubtype' expected Bool";
    }
}

/**
 * @func ElementsMediaTypeParameters_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMediaTypeParameters_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMediaTypeParameters_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMediaTypeParameters";

}

/**
 * @func ElementsMessageBodyWorkers_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMessageBodyWorkers_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMessageBodyWorkers_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMessageBodyWorkers";

}

/**
 * @func ElementsMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMetadata";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsMetadataMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
    if (!is_undefined(__inst__[$ "metadataSpec"]))
    {
        ElementsMetadataSpec_validate(__inst__[$ "metadataSpec"], $"{__where__} :: 'metadataSpec'");
    }
    if (!is_undefined(__inst__[$ "accessLevel"]))
    {
        ElementsMetadataAccessLevel_validate(__inst__[$ "accessLevel"], $"{__where__} :: 'accessLevel'");
    }
}

/**
 * @func ElementsMetadataAccessLevel_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMetadataAccessLevel_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMetadataAccessLevel_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'MetadataAccessLevel' expected String";
    switch (__inst__)
    {
        case "UNPRIVILEGED":
            break;
        case "USER":
            break;
        case "SUPERUSER":
            break;
        default:
            throw $"{__where__} :: 'MetadataAccessLevel' invalid MetadataAccessLevel '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsMetadataMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMetadataMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMetadataMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMetadataMetadata";

}

/**
 * @func ElementsMetadataSpec_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMetadataSpec_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMetadataSpec_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMetadataSpec";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    ElementsMetadataSpecType_validate(__inst__[$ "type"], $"{__where__} :: 'type'");
    if (!is_array(__inst__[$ "properties"])) throw $"{__where__} :: 'properties' expected Array<ElementsMetadataSpecProperty>";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
}

/**
 * @func ElementsMetadataSpecProperty_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMetadataSpecProperty_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMetadataSpecProperty_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMetadataSpecProperty";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    ElementsMetadataSpecPropertyType_validate(__inst__[$ "type"], $"{__where__} :: 'type'");
    if (!is_undefined(__inst__[$ "required"]))
    {
        if (!(is_bool(__inst__[$ "required"]) || __inst__[$ "required"] == 0 || __inst__[$ "required"] == 1)) throw $"{__where__} :: 'required' expected Bool";
    }
    if (!is_undefined(__inst__[$ "placeholder"]))
    {
        if (!is_string(__inst__[$ "placeholder"])) throw $"{__where__} :: 'placeholder' expected String";
    }
    if (!is_undefined(__inst__[$ "defaultValue"]))
    {
        if (!is_struct(__inst__[$ "defaultValue"])) throw $"{__where__} :: 'defaultValue' expected Struct";
    }
    if (!is_undefined(__inst__[$ "properties"]))
    {
        if (!is_array(__inst__[$ "properties"])) throw $"{__where__} :: 'properties' expected Array<ElementsMetadataSpecProperty>";
    }
}

/**
 * @func ElementsMetadataSpecPropertyType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMetadataSpecPropertyType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMetadataSpecPropertyType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'MetadataSpecPropertyType' expected String";
    switch (__inst__)
    {
        case "STRING":
            break;
        case "NUMBER":
            break;
        case "BOOLEAN":
            break;
        case "ARRAY":
            break;
        case "ENUM":
            break;
        case "OBJECT":
            break;
        case "TAGS":
            break;
        default:
            throw $"{__where__} :: 'MetadataSpecPropertyType' invalid MetadataSpecPropertyType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsMetadataSpecType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMetadataSpecType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMetadataSpecType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'MetadataSpecType' expected String";
    switch (__inst__)
    {
        case "STRING":
            break;
        case "NUMBER":
            break;
        case "BOOLEAN":
            break;
        case "ARRAY":
            break;
        case "ENUM":
            break;
        case "OBJECT":
            break;
        case "TAGS":
            break;
        default:
            throw $"{__where__} :: 'MetadataSpecType' invalid MetadataSpecType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsMission_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMission_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMission_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMission";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "tags"]))
    {
        if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "steps"]))
    {
        if (!is_array(__inst__[$ "steps"])) throw $"{__where__} :: 'steps' expected Array<ElementsStep>";
    }
    if (!is_undefined(__inst__[$ "finalRepeatStep"]))
    {
        ElementsStep_validate(__inst__[$ "finalRepeatStep"], $"{__where__} :: 'finalRepeatStep'");
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsMissionMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsMissionMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMissionMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMissionMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMissionMetadata";

}

/**
 * @func ElementsMockSessionCreation_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMockSessionCreation_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMockSessionCreation_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMockSessionCreation";

    if (!is_undefined(__inst__[$ "sessionSecret"]))
    {
        if (!is_string(__inst__[$ "sessionSecret"])) throw $"{__where__} :: 'sessionSecret' expected String";
    }
    if (!is_undefined(__inst__[$ "session"]))
    {
        ElementsSession_validate(__inst__[$ "session"], $"{__where__} :: 'session'");
    }
    if (!is_undefined(__inst__[$ "userExpiresAt"]))
    {
        if (!is_numeric(__inst__[$ "userExpiresAt"])) throw $"{__where__} :: 'userExpiresAt' expected Real";
    }
    if (!is_undefined(__inst__[$ "password"]))
    {
        if (!is_string(__inst__[$ "password"])) throw $"{__where__} :: 'password' expected String";
    }
}

/**
 * @func ElementsMockSessionRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMockSessionRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMockSessionRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMockSessionRequest";

    if (!is_undefined(__inst__[$ "lifetimeInSeconds"]))
    {
        if (!is_numeric(__inst__[$ "lifetimeInSeconds"])) throw $"{__where__} :: 'lifetimeInSeconds' expected Real";
    }
    if (!is_undefined(__inst__[$ "application"]))
    {
        ElementsApplication_validate(__inst__[$ "application"], $"{__where__} :: 'application'");
    }
}

/**
 * @func ElementsMultiMatch_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMultiMatch_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMultiMatch_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMultiMatch";

    ElementsMatchmakingApplicationConfiguration_validate(__inst__[$ "configuration"], $"{__where__} :: 'configuration'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "joinCode"]))
    {
        ElementsUniqueCode_validate(__inst__[$ "joinCode"], $"{__where__} :: 'joinCode'");
    }
    if (!is_undefined(__inst__[$ "status"]))
    {
        ElementsMultiMatchStatus_validate(__inst__[$ "status"], $"{__where__} :: 'status'");
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsMultiMatchMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
    if (!is_undefined(__inst__[$ "count"]))
    {
        if (!is_numeric(__inst__[$ "count"])) throw $"{__where__} :: 'count' expected Real";
    }
    if (!is_undefined(__inst__[$ "expiry"]))
    {
        if (!is_numeric(__inst__[$ "expiry"])) throw $"{__where__} :: 'expiry' expected Real";
    }
    if (!is_undefined(__inst__[$ "created"]))
    {
        if (!is_numeric(__inst__[$ "created"])) throw $"{__where__} :: 'created' expected Real";
    }
}

/**
 * @func ElementsMultiMatchMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMultiMatchMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMultiMatchMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMultiMatchMetadata";

}

/**
 * @func ElementsMultiMatchStatus_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMultiMatchStatus_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMultiMatchStatus_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'MultiMatchStatus' expected String";
    switch (__inst__)
    {
        case "OPEN":
            break;
        case "FULL":
            break;
        case "CLOSED":
            break;
        case "ENDED":
            break;
        default:
            throw $"{__where__} :: 'MultiMatchStatus' invalid MultiMatchStatus '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsMultiPart_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMultiPart_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMultiPart_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMultiPart";

    if (!is_undefined(__inst__[$ "contentDisposition"]))
    {
        ElementsContentDisposition_validate(__inst__[$ "contentDisposition"], $"{__where__} :: 'contentDisposition'");
    }
    if (!is_undefined(__inst__[$ "entity"]))
    {
        if (!is_struct(__inst__[$ "entity"])) throw $"{__where__} :: 'entity' expected Struct";
    }
    if (!is_undefined(__inst__[$ "headers"]))
    {
        ElementsMultiPartHeaders_validate(__inst__[$ "headers"], $"{__where__} :: 'headers'");
    }
    if (!is_undefined(__inst__[$ "mediaType"]))
    {
        ElementsMediaType_validate(__inst__[$ "mediaType"], $"{__where__} :: 'mediaType'");
    }
    if (!is_undefined(__inst__[$ "messageBodyWorkers"]))
    {
        ElementsMessageBodyWorkers_validate(__inst__[$ "messageBodyWorkers"], $"{__where__} :: 'messageBodyWorkers'");
    }
    if (!is_undefined(__inst__[$ "parent"]))
    {
        ElementsMultiPart_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    }
    if (!is_undefined(__inst__[$ "providers"]))
    {
        ElementsProviders_validate(__inst__[$ "providers"], $"{__where__} :: 'providers'");
    }
    if (!is_undefined(__inst__[$ "bodyParts"]))
    {
        if (!is_array(__inst__[$ "bodyParts"])) throw $"{__where__} :: 'bodyParts' expected Array<ElementsBodyPart>";
    }
    if (!is_undefined(__inst__[$ "parameterizedHeaders"]))
    {
        ElementsMultiPartParameterizedHeaders_validate(__inst__[$ "parameterizedHeaders"], $"{__where__} :: 'parameterizedHeaders'");
    }
}

/**
 * @func ElementsMultiPartHeaders_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMultiPartHeaders_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMultiPartHeaders_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMultiPartHeaders";

    if (!is_undefined(__inst__[$ "empty"]))
    {
        if (!(is_bool(__inst__[$ "empty"]) || __inst__[$ "empty"] == 0 || __inst__[$ "empty"] == 1)) throw $"{__where__} :: 'empty' expected Bool";
    }
}

/**
 * @func ElementsMultiPartParameterizedHeaders_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMultiPartParameterizedHeaders_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMultiPartParameterizedHeaders_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMultiPartParameterizedHeaders";

    if (!is_undefined(__inst__[$ "empty"]))
    {
        if (!(is_bool(__inst__[$ "empty"]) || __inst__[$ "empty"] == 0 || __inst__[$ "empty"] == 1)) throw $"{__where__} :: 'empty' expected Bool";
    }
}

/**
 * @func ElementsMultivaluedMapStringParameterizedHeader_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMultivaluedMapStringParameterizedHeader_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMultivaluedMapStringParameterizedHeader_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMultivaluedMapStringParameterizedHeader";

    if (!is_undefined(__inst__[$ "empty"]))
    {
        if (!(is_bool(__inst__[$ "empty"]) || __inst__[$ "empty"] == 0 || __inst__[$ "empty"] == 1)) throw $"{__where__} :: 'empty' expected Bool";
    }
}

/**
 * @func ElementsMultivaluedMapStringString_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsMultivaluedMapStringString_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsMultivaluedMapStringString_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsMultivaluedMapStringString";

    if (!is_undefined(__inst__[$ "empty"]))
    {
        if (!(is_bool(__inst__[$ "empty"]) || __inst__[$ "empty"] == 0 || __inst__[$ "empty"] == 1)) throw $"{__where__} :: 'empty' expected Bool";
    }
}

/**
 * @func ElementsOAuth2AuthScheme_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOAuth2AuthScheme_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOAuth2AuthScheme_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOAuth2AuthScheme";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "validationUrl"])) throw $"{__where__} :: 'validationUrl' expected String";
    ElementsOauth2AuthSchemeMethod_validate(__inst__[$ "method"], $"{__where__} :: 'method'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "headers"]))
    {
        if (!is_array(__inst__[$ "headers"])) throw $"{__where__} :: 'headers' expected Array<ElementsOAuth2RequestKeyValue>";
    }
    if (!is_undefined(__inst__[$ "params"]))
    {
        if (!is_array(__inst__[$ "params"])) throw $"{__where__} :: 'params' expected Array<ElementsOAuth2RequestKeyValue>";
    }
    if (!is_undefined(__inst__[$ "body"]))
    {
        if (!is_array(__inst__[$ "body"])) throw $"{__where__} :: 'body' expected Array<ElementsOAuth2RequestKeyValue>";
    }
    if (!is_undefined(__inst__[$ "responseIdMapping"]))
    {
        if (!is_string(__inst__[$ "responseIdMapping"])) throw $"{__where__} :: 'responseIdMapping' expected String";
    }
    if (!is_undefined(__inst__[$ "responseValidMapping"]))
    {
        if (!is_string(__inst__[$ "responseValidMapping"])) throw $"{__where__} :: 'responseValidMapping' expected String";
    }
    if (!is_undefined(__inst__[$ "responseValidExpectedValue"]))
    {
        if (!is_string(__inst__[$ "responseValidExpectedValue"])) throw $"{__where__} :: 'responseValidExpectedValue' expected String";
    }
    if (!is_undefined(__inst__[$ "validStatusCodes"]))
    {
        if (!is_array(__inst__[$ "validStatusCodes"])) throw $"{__where__} :: 'validStatusCodes' expected Array<Real>";
    }
    if (!is_undefined(__inst__[$ "bodyType"]))
    {
        ElementsOauth2AuthSchemeBodyType_validate(__inst__[$ "bodyType"], $"{__where__} :: 'bodyType'");
    }
}

/**
 * @func ElementsOauth2AuthSchemeBodyType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOauth2AuthSchemeBodyType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOauth2AuthSchemeBodyType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'Oauth2AuthSchemeBodyType' expected String";
    switch (__inst__)
    {
        case "NONE":
            break;
        case "FORM_URL_ENCODED":
            break;
        case "JSON":
            break;
        default:
            throw $"{__where__} :: 'Oauth2AuthSchemeBodyType' invalid Oauth2AuthSchemeBodyType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsOauth2AuthSchemeMethod_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOauth2AuthSchemeMethod_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOauth2AuthSchemeMethod_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'Oauth2AuthSchemeMethod' expected String";
    switch (__inst__)
    {
        case "GET":
            break;
        case "POST":
            break;
        default:
            throw $"{__where__} :: 'Oauth2AuthSchemeMethod' invalid Oauth2AuthSchemeMethod '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsOAuth2RequestKeyValue_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOAuth2RequestKeyValue_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOAuth2RequestKeyValue_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOAuth2RequestKeyValue";

    if (!is_undefined(__inst__[$ "key"]))
    {
        if (!is_string(__inst__[$ "key"])) throw $"{__where__} :: 'key' expected String";
    }
    if (!is_undefined(__inst__[$ "value"]))
    {
        if (!is_string(__inst__[$ "value"])) throw $"{__where__} :: 'value' expected String";
    }
    if (!is_undefined(__inst__[$ "fromClient"]))
    {
        if (!(is_bool(__inst__[$ "fromClient"]) || __inst__[$ "fromClient"] == 0 || __inst__[$ "fromClient"] == 1)) throw $"{__where__} :: 'fromClient' expected Bool";
    }
    if (!is_undefined(__inst__[$ "userId"]))
    {
        if (!(is_bool(__inst__[$ "userId"]) || __inst__[$ "userId"] == 0 || __inst__[$ "userId"] == 1)) throw $"{__where__} :: 'userId' expected Bool";
    }
}

/**
 * @func ElementsOAuth2SessionRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOAuth2SessionRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOAuth2SessionRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOAuth2SessionRequest";

    if (!is_string(__inst__[$ "schemeId"])) throw $"{__where__} :: 'schemeId' expected String";
    if (!is_undefined(__inst__[$ "requestParameters"]))
    {
        ElementsOauth2SessionRequestRequestParameters_validate(__inst__[$ "requestParameters"], $"{__where__} :: 'requestParameters'");
    }
    if (!is_undefined(__inst__[$ "requestHeaders"]))
    {
        ElementsOauth2SessionRequestRequestHeaders_validate(__inst__[$ "requestHeaders"], $"{__where__} :: 'requestHeaders'");
    }
    if (!is_undefined(__inst__[$ "profileId"]))
    {
        if (!is_string(__inst__[$ "profileId"])) throw $"{__where__} :: 'profileId' expected String";
    }
    if (!is_undefined(__inst__[$ "profileSelector"]))
    {
        if (!is_string(__inst__[$ "profileSelector"])) throw $"{__where__} :: 'profileSelector' expected String";
    }
    if (!is_undefined(__inst__[$ "applicationNameOrId"]))
    {
        if (!is_string(__inst__[$ "applicationNameOrId"])) throw $"{__where__} :: 'applicationNameOrId' expected String";
    }
}

/**
 * @func ElementsOauth2SessionRequestRequestHeaders_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOauth2SessionRequestRequestHeaders_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOauth2SessionRequestRequestHeaders_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOauth2SessionRequestRequestHeaders";

}

/**
 * @func ElementsOauth2SessionRequestRequestParameters_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOauth2SessionRequestRequestParameters_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOauth2SessionRequestRequestParameters_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOauth2SessionRequestRequestParameters";

}

/**
 * @func ElementsOculusApplicationConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOculusApplicationConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOculusApplicationConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOculusApplicationConfiguration";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    ElementsApplication_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    if (!is_string(__inst__[$ "applicationId"])) throw $"{__where__} :: 'applicationId' expected String";
    if (!is_string(__inst__[$ "applicationSecret"])) throw $"{__where__} :: 'applicationSecret' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "builtinApplicationPermissions"]))
    {
        if (!is_array(__inst__[$ "builtinApplicationPermissions"])) throw $"{__where__} :: 'builtinApplicationPermissions' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "productBundles"]))
    {
        if (!is_array(__inst__[$ "productBundles"])) throw $"{__where__} :: 'productBundles' expected Array<ElementsProductBundle>";
    }
}

/**
 * @func ElementsOculusIapConsumeResponse_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOculusIapConsumeResponse_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOculusIapConsumeResponse_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOculusIapConsumeResponse";

    if (!is_undefined(__inst__[$ "success"]))
    {
        if (!(is_bool(__inst__[$ "success"]) || __inst__[$ "success"] == 0 || __inst__[$ "success"] == 1)) throw $"{__where__} :: 'success' expected Bool";
    }
}

/**
 * @func ElementsOculusIapReceipt_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOculusIapReceipt_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOculusIapReceipt_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOculusIapReceipt";

    if (!is_undefined(__inst__[$ "userId"]))
    {
        if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(__inst__[$ "purchaseId"]))
    {
        if (!is_string(__inst__[$ "purchaseId"])) throw $"{__where__} :: 'purchaseId' expected String";
    }
    if (!is_undefined(__inst__[$ "reportingId"]))
    {
        if (!is_string(__inst__[$ "reportingId"])) throw $"{__where__} :: 'reportingId' expected String";
    }
    if (!is_undefined(__inst__[$ "sku"]))
    {
        if (!is_string(__inst__[$ "sku"])) throw $"{__where__} :: 'sku' expected String";
    }
    if (!is_undefined(__inst__[$ "grantTime"]))
    {
        if (!is_numeric(__inst__[$ "grantTime"])) throw $"{__where__} :: 'grantTime' expected Real";
    }
    if (!is_undefined(__inst__[$ "expirationTime"]))
    {
        if (!is_numeric(__inst__[$ "expirationTime"])) throw $"{__where__} :: 'expirationTime' expected Real";
    }
    if (!is_undefined(__inst__[$ "developerPayload"]))
    {
        if (!is_string(__inst__[$ "developerPayload"])) throw $"{__where__} :: 'developerPayload' expected String";
    }
}

/**
 * @func ElementsOculusIapVerifyReceiptResponse_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOculusIapVerifyReceiptResponse_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOculusIapVerifyReceiptResponse_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOculusIapVerifyReceiptResponse";

    if (!is_undefined(__inst__[$ "success"]))
    {
        if (!(is_bool(__inst__[$ "success"]) || __inst__[$ "success"] == 0 || __inst__[$ "success"] == 1)) throw $"{__where__} :: 'success' expected Bool";
    }
    if (!is_undefined(__inst__[$ "grantTime"]))
    {
        if (!is_numeric(__inst__[$ "grantTime"])) throw $"{__where__} :: 'grantTime' expected Real";
    }
    if (!is_undefined(__inst__[$ "userId"]))
    {
        if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(__inst__[$ "sku"]))
    {
        if (!is_string(__inst__[$ "sku"])) throw $"{__where__} :: 'sku' expected String";
    }
}

/**
 * @func ElementsOidcAuthScheme_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOidcAuthScheme_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOidcAuthScheme_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOidcAuthScheme";

    if (!is_string(__inst__[$ "issuer"])) throw $"{__where__} :: 'issuer' expected String";
    if (!is_array(__inst__[$ "keys"])) throw $"{__where__} :: 'keys' expected Array<ElementsJWK>";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "keysUrl"]))
    {
        if (!is_string(__inst__[$ "keysUrl"])) throw $"{__where__} :: 'keysUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "mediaType"]))
    {
        if (!is_string(__inst__[$ "mediaType"])) throw $"{__where__} :: 'mediaType' expected String";
    }
    if (!is_undefined(__inst__[$ "keysFetchedAt"]))
    {
        if (!is_numeric(__inst__[$ "keysFetchedAt"])) throw $"{__where__} :: 'keysFetchedAt' expected Real";
    }
}

/**
 * @func ElementsOidcLoginAttemptConfirmRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOidcLoginAttemptConfirmRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOidcLoginAttemptConfirmRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOidcLoginAttemptConfirmRequest";

    if (!is_string(__inst__[$ "confirmToken"])) throw $"{__where__} :: 'confirmToken' expected String";
}

/**
 * @func ElementsOidcLoginAttemptRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOidcLoginAttemptRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOidcLoginAttemptRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOidcLoginAttemptRequest";

    if (!is_string(__inst__[$ "provider"])) throw $"{__where__} :: 'provider' expected String";
    if (!is_undefined(__inst__[$ "idToken"]))
    {
        if (!is_string(__inst__[$ "idToken"])) throw $"{__where__} :: 'idToken' expected String";
    }
    if (!is_undefined(__inst__[$ "applicationNameOrId"]))
    {
        if (!is_string(__inst__[$ "applicationNameOrId"])) throw $"{__where__} :: 'applicationNameOrId' expected String";
    }
}

/**
 * @func ElementsOidcLoginAttemptStatusResponse_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOidcLoginAttemptStatusResponse_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOidcLoginAttemptStatusResponse_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOidcLoginAttemptStatusResponse";

    if (!is_undefined(__inst__[$ "status"]))
    {
        ElementsOidcLoginAttemptStatusResponseStatus_validate(__inst__[$ "status"], $"{__where__} :: 'status'");
    }
    if (!is_undefined(__inst__[$ "session"]))
    {
        ElementsSessionCreation_validate(__inst__[$ "session"], $"{__where__} :: 'session'");
    }
    if (!is_undefined(__inst__[$ "reason"]))
    {
        if (!is_string(__inst__[$ "reason"])) throw $"{__where__} :: 'reason' expected String";
    }
}

/**
 * @func ElementsOidcLoginAttemptStatusResponseStatus_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOidcLoginAttemptStatusResponseStatus_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOidcLoginAttemptStatusResponseStatus_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'OidcLoginAttemptStatusResponseStatus' expected String";
    switch (__inst__)
    {
        case "PENDING":
            break;
        case "COMPLETE":
            break;
        case "FAILED":
            break;
        case "EXPIRED":
            break;
        default:
            throw $"{__where__} :: 'OidcLoginAttemptStatusResponseStatus' invalid OidcLoginAttemptStatusResponseStatus '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsOidcProviderConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOidcProviderConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOidcProviderConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOidcProviderConfiguration";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "discoveryUrl"])) throw $"{__where__} :: 'discoveryUrl' expected String";
    if (!is_string(__inst__[$ "clientId"])) throw $"{__where__} :: 'clientId' expected String";
    if (!is_string(__inst__[$ "clientSecret"])) throw $"{__where__} :: 'clientSecret' expected String";
    if (!is_string(__inst__[$ "redirectUri"])) throw $"{__where__} :: 'redirectUri' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "scopes"]))
    {
        if (!is_array(__inst__[$ "scopes"])) throw $"{__where__} :: 'scopes' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "extraAuthorizeParams"]))
    {
        ElementsOidcProviderConfigurationExtraAuthorizeParams_validate(__inst__[$ "extraAuthorizeParams"], $"{__where__} :: 'extraAuthorizeParams'");
    }
    if (!is_undefined(__inst__[$ "tokenEndpointAuthMethod"]))
    {
        ElementsOidcProviderConfigurationTokenEndpointAuthMethod_validate(__inst__[$ "tokenEndpointAuthMethod"], $"{__where__} :: 'tokenEndpointAuthMethod'");
    }
    if (!is_undefined(__inst__[$ "successRedirectUrl"]))
    {
        if (!is_string(__inst__[$ "successRedirectUrl"])) throw $"{__where__} :: 'successRedirectUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "errorRedirectUrl"]))
    {
        if (!is_string(__inst__[$ "errorRedirectUrl"])) throw $"{__where__} :: 'errorRedirectUrl' expected String";
    }
}

/**
 * @func ElementsOidcProviderConfigurationExtraAuthorizeParams_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOidcProviderConfigurationExtraAuthorizeParams_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOidcProviderConfigurationExtraAuthorizeParams_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOidcProviderConfigurationExtraAuthorizeParams";

}

/**
 * @func ElementsOidcProviderConfigurationTokenEndpointAuthMethod_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOidcProviderConfigurationTokenEndpointAuthMethod_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOidcProviderConfigurationTokenEndpointAuthMethod_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'OidcProviderConfigurationTokenEndpointAuthMethod' expected String";
    switch (__inst__)
    {
        case "CLIENT_SECRET_BASIC":
            break;
        case "CLIENT_SECRET_POST":
            break;
        default:
            throw $"{__where__} :: 'OidcProviderConfigurationTokenEndpointAuthMethod' invalid OidcProviderConfigurationTokenEndpointAuthMethod '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsOidcSessionRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsOidcSessionRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsOidcSessionRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsOidcSessionRequest";

    if (!is_string(__inst__[$ "jwt"])) throw $"{__where__} :: 'jwt' expected String";
    if (!is_undefined(__inst__[$ "profileId"]))
    {
        if (!is_string(__inst__[$ "profileId"])) throw $"{__where__} :: 'profileId' expected String";
    }
    if (!is_undefined(__inst__[$ "profileSelector"]))
    {
        if (!is_string(__inst__[$ "profileSelector"])) throw $"{__where__} :: 'profileSelector' expected String";
    }
    if (!is_undefined(__inst__[$ "applicationNameOrId"]))
    {
        if (!is_string(__inst__[$ "applicationNameOrId"])) throw $"{__where__} :: 'applicationNameOrId' expected String";
    }
}

/**
 * @func ElementsPaginationApplication_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationApplication_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationApplication_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationApplication";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsApplication>";
    }
}

/**
 * @func ElementsPaginationApplicationConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationApplicationConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationApplicationConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationApplicationConfiguration";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsApplicationConfiguration>";
    }
}

/**
 * @func ElementsPaginationAuthScheme_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationAuthScheme_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationAuthScheme_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationAuthScheme";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsAuthScheme>";
    }
}

/**
 * @func ElementsPaginationDeployment_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationDeployment_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationDeployment_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationDeployment";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsDeployment>";
    }
}

/**
 * @func ElementsPaginationDistinctInventoryItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationDistinctInventoryItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationDistinctInventoryItem_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationDistinctInventoryItem";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsDistinctInventoryItem>";
    }
}

/**
 * @func ElementsPaginationElementDeployment_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationElementDeployment_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationElementDeployment_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationElementDeployment";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsElementDeployment>";
    }
}

/**
 * @func ElementsPaginationFacebookIapReceipt_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationFacebookIapReceipt_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationFacebookIapReceipt_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationFacebookIapReceipt";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsFacebookIapReceipt>";
    }
}

/**
 * @func ElementsPaginationFriend_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationFriend_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationFriend_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationFriend";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsFriend>";
    }
}

/**
 * @func ElementsPaginationIndexPlanObject_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationIndexPlanObject_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationIndexPlanObject_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationIndexPlanObject";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsIndexPlanObject>";
    }
}

/**
 * @func ElementsPaginationInventoryItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationInventoryItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationInventoryItem_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationInventoryItem";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsInventoryItem>";
    }
}

/**
 * @func ElementsPaginationItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationItem_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationItem";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsItem>";
    }
}

/**
 * @func ElementsPaginationItemLedgerEntry_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationItemLedgerEntry_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationItemLedgerEntry_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationItemLedgerEntry";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsItemLedgerEntry>";
    }
}

/**
 * @func ElementsPaginationLargeObject_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationLargeObject_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationLargeObject_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationLargeObject";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsLargeObject>";
    }
}

/**
 * @func ElementsPaginationLeaderboard_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationLeaderboard_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationLeaderboard_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationLeaderboard";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsLeaderboard>";
    }
}

/**
 * @func ElementsPaginationMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationMetadata";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsMetadata>";
    }
}

/**
 * @func ElementsPaginationMetadataSpec_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationMetadataSpec_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationMetadataSpec_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationMetadataSpec";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsMetadataSpec>";
    }
}

/**
 * @func ElementsPaginationMission_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationMission_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationMission_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationMission";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsMission>";
    }
}

/**
 * @func ElementsPaginationMultiMatch_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationMultiMatch_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationMultiMatch_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationMultiMatch";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsMultiMatch>";
    }
}

/**
 * @func ElementsPaginationOAuth2AuthScheme_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationOAuth2AuthScheme_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationOAuth2AuthScheme_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationOAuth2AuthScheme";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsOAuth2AuthScheme>";
    }
}

/**
 * @func ElementsPaginationOculusIapReceipt_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationOculusIapReceipt_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationOculusIapReceipt_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationOculusIapReceipt";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsOculusIapReceipt>";
    }
}

/**
 * @func ElementsPaginationOidcAuthScheme_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationOidcAuthScheme_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationOidcAuthScheme_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationOidcAuthScheme";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsOidcAuthScheme>";
    }
}

/**
 * @func ElementsPaginationOidcProviderConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationOidcProviderConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationOidcProviderConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationOidcProviderConfiguration";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsOidcProviderConfiguration>";
    }
}

/**
 * @func ElementsPaginationProductBundle_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationProductBundle_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationProductBundle_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationProductBundle";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsProductBundle>";
    }
}

/**
 * @func ElementsPaginationProductSkuSchema_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationProductSkuSchema_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationProductSkuSchema_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationProductSkuSchema";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsProductSkuSchema>";
    }
}

/**
 * @func ElementsPaginationProfile_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationProfile_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationProfile_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationProfile";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsProfile>";
    }
}

/**
 * @func ElementsPaginationProgress_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationProgress_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationProgress_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationProgress";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsProgress>";
    }
}

/**
 * @func ElementsPaginationRank_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationRank_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationRank_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationRank";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsRank>";
    }
}

/**
 * @func ElementsPaginationReceipt_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationReceipt_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationReceipt_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationReceipt";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsReceipt>";
    }
}

/**
 * @func ElementsPaginationRewardIssuance_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationRewardIssuance_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationRewardIssuance_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationRewardIssuance";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsRewardIssuance>";
    }
}

/**
 * @func ElementsPaginationSaveDataDocument_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationSaveDataDocument_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationSaveDataDocument_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationSaveDataDocument";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsSaveDataDocument>";
    }
}

/**
 * @func ElementsPaginationSchedule_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationSchedule_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationSchedule_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationSchedule";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsSchedule>";
    }
}

/**
 * @func ElementsPaginationScheduleEvent_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationScheduleEvent_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationScheduleEvent_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationScheduleEvent";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsScheduleEvent>";
    }
}

/**
 * @func ElementsPaginationSmartContract_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationSmartContract_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationSmartContract_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationSmartContract";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsSmartContract>";
    }
}

/**
 * @func ElementsPaginationUser_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationUser_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationUser_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationUser";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsUser>";
    }
}

/**
 * @func ElementsPaginationVault_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationVault_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationVault_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationVault";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsVault>";
    }
}

/**
 * @func ElementsPaginationWallet_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPaginationWallet_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPaginationWallet_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPaginationWallet";

    if (!is_undefined(__inst__[$ "offset"]))
    {
        if (!is_numeric(__inst__[$ "offset"])) throw $"{__where__} :: 'offset' expected Real";
    }
    if (!is_undefined(__inst__[$ "total"]))
    {
        if (!is_numeric(__inst__[$ "total"])) throw $"{__where__} :: 'total' expected Real";
    }
    if (!is_undefined(__inst__[$ "approximation"]))
    {
        if (!(is_bool(__inst__[$ "approximation"]) || __inst__[$ "approximation"] == 0 || __inst__[$ "approximation"] == 1)) throw $"{__where__} :: 'approximation' expected Bool";
    }
    if (!is_undefined(__inst__[$ "objects"]))
    {
        if (!is_array(__inst__[$ "objects"])) throw $"{__where__} :: 'objects' expected Array<ElementsWallet>";
    }
}

/**
 * @func ElementsParamApi_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsParamApi_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsParamApi_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'ParamApi' expected String";
    switch (__inst__)
    {
        case "NEO":
            break;
        case "ETHEREUM":
            break;
        case "SOLANA":
            break;
        case "FLOW":
            break;
        case "NEAR":
            break;
        default:
            throw $"{__where__} :: 'ParamApi' invalid ParamApi '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsParamApi2_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsParamApi2_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsParamApi2_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'ParamApi2' expected String";
    switch (__inst__)
    {
        case "NEO":
            break;
        case "ETHEREUM":
            break;
        case "SOLANA":
            break;
        case "FLOW":
            break;
        case "NEAR":
            break;
        default:
            throw $"{__where__} :: 'ParamApi2' invalid ParamApi2 '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsParameterizedHeader_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsParameterizedHeader_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsParameterizedHeader_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsParameterizedHeader";

    if (!is_undefined(__inst__[$ "value"]))
    {
        if (!is_string(__inst__[$ "value"])) throw $"{__where__} :: 'value' expected String";
    }
    if (!is_undefined(__inst__[$ "parameters"]))
    {
        ElementsParameterizedHeaderParameters_validate(__inst__[$ "parameters"], $"{__where__} :: 'parameters'");
    }
}

/**
 * @func ElementsParameterizedHeaderParameters_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsParameterizedHeaderParameters_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsParameterizedHeaderParameters_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsParameterizedHeaderParameters";

}

/**
 * @func ElementsParamEventType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsParamEventType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsParamEventType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'ParamEventType' expected String";
    switch (__inst__)
    {
        case "CREATED":
            break;
        case "QUANTITY_ADJUSTED":
            break;
        case "QUANTITY_SET":
            break;
        case "DELETED":
            break;
        case "METADATA_UPDATED":
            break;
        case "ITEM_CREATED":
            break;
        case "ITEM_UPDATED":
            break;
        case "ITEM_DELETED":
            break;
        default:
            throw $"{__where__} :: 'ParamEventType' invalid ParamEventType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsParamNetworkItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsParamNetworkItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsParamNetworkItem_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'ParamNetworkItem' expected String";
    switch (__inst__)
    {
        case "NEO":
            break;
        case "NEO_TEST":
            break;
        case "ETHEREUM":
            break;
        case "ETHEREUM_TEST":
            break;
        case "BSC":
            break;
        case "BSC_TEST":
            break;
        case "POLYGON":
            break;
        case "POLYGON_TEST":
            break;
        case "SOLANA":
            break;
        case "SOLANA_TEST":
            break;
        case "FLOW":
            break;
        case "FLOW_TEST":
            break;
        case "NEAR":
            break;
        case "NEAR_TEST":
            break;
        default:
            throw $"{__where__} :: 'ParamNetworkItem' invalid ParamNetworkItem '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsParamNetworkItem2_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsParamNetworkItem2_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsParamNetworkItem2_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'ParamNetworkItem2' expected String";
    switch (__inst__)
    {
        case "NEO":
            break;
        case "NEO_TEST":
            break;
        case "ETHEREUM":
            break;
        case "ETHEREUM_TEST":
            break;
        case "BSC":
            break;
        case "BSC_TEST":
            break;
        case "POLYGON":
            break;
        case "POLYGON_TEST":
            break;
        case "SOLANA":
            break;
        case "SOLANA_TEST":
            break;
        case "FLOW":
            break;
        case "FLOW_TEST":
            break;
        case "NEAR":
            break;
        case "NEAR_TEST":
            break;
        default:
            throw $"{__where__} :: 'ParamNetworkItem2' invalid ParamNetworkItem2 '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsParamStatesItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsParamStatesItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsParamStatesItem_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'ParamStatesItem' expected String";
    switch (__inst__)
    {
        case "ISSUED":
            break;
        case "REDEEMED":
            break;
        default:
            throw $"{__where__} :: 'ParamStatesItem' invalid ParamStatesItem '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsPasswordResetRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPasswordResetRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPasswordResetRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPasswordResetRequest";

    if (!is_string(__inst__[$ "email"])) throw $"{__where__} :: 'email' expected String";
}

/**
 * @func ElementsPhoneMatchedInvitation_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPhoneMatchedInvitation_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPhoneMatchedInvitation_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPhoneMatchedInvitation";

    if (!is_undefined(__inst__[$ "phoneNumber"]))
    {
        if (!is_string(__inst__[$ "phoneNumber"])) throw $"{__where__} :: 'phoneNumber' expected String";
    }
    if (!is_undefined(__inst__[$ "profileIds"]))
    {
        if (!is_array(__inst__[$ "profileIds"])) throw $"{__where__} :: 'profileIds' expected Array<String>";
    }
}

/**
 * @func ElementsProductBundle_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsProductBundle_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsProductBundle_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsProductBundle";

    if (!is_string(__inst__[$ "schema"])) throw $"{__where__} :: 'schema' expected String";
    if (!is_string(__inst__[$ "productId"])) throw $"{__where__} :: 'productId' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "application"]))
    {
        ElementsApplication_validate(__inst__[$ "application"], $"{__where__} :: 'application'");
    }
    if (!is_undefined(__inst__[$ "displayName"]))
    {
        if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "productBundleRewards"]))
    {
        if (!is_array(__inst__[$ "productBundleRewards"])) throw $"{__where__} :: 'productBundleRewards' expected Array<ElementsProductBundleReward>";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsProductBundleMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
    if (!is_undefined(__inst__[$ "display"]))
    {
        if (!(is_bool(__inst__[$ "display"]) || __inst__[$ "display"] == 0 || __inst__[$ "display"] == 1)) throw $"{__where__} :: 'display' expected Bool";
    }
    if (!is_undefined(__inst__[$ "tags"]))
    {
        if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    }
}

/**
 * @func ElementsProductBundleMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsProductBundleMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsProductBundleMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsProductBundleMetadata";

}

/**
 * @func ElementsProductBundleReward_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsProductBundleReward_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsProductBundleReward_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsProductBundleReward";

    if (!is_string(__inst__[$ "itemId"])) throw $"{__where__} :: 'itemId' expected String";
    if (!is_undefined(__inst__[$ "quantity"]))
    {
        if (!is_numeric(__inst__[$ "quantity"])) throw $"{__where__} :: 'quantity' expected Real";
    }
}

/**
 * @func ElementsProductSkuSchema_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsProductSkuSchema_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsProductSkuSchema_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsProductSkuSchema";

    if (!is_string(__inst__[$ "schema"])) throw $"{__where__} :: 'schema' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
}

/**
 * @func ElementsProfile_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsProfile_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsProfile_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsProfile";

    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "user"]))
    {
        ElementsUser_validate(__inst__[$ "user"], $"{__where__} :: 'user'");
    }
    if (!is_undefined(__inst__[$ "application"]))
    {
        ElementsApplication_validate(__inst__[$ "application"], $"{__where__} :: 'application'");
    }
    if (!is_undefined(__inst__[$ "imageUrl"]))
    {
        if (!is_string(__inst__[$ "imageUrl"])) throw $"{__where__} :: 'imageUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "imageObject"]))
    {
        ElementsLargeObjectReference_validate(__inst__[$ "imageObject"], $"{__where__} :: 'imageObject'");
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsProfileMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
    if (!is_undefined(__inst__[$ "lastLogin"]))
    {
        if (!is_numeric(__inst__[$ "lastLogin"])) throw $"{__where__} :: 'lastLogin' expected Real";
    }
}

/**
 * @func ElementsProfileMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsProfileMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsProfileMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsProfileMetadata";

}

/**
 * @func ElementsProgress_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsProgress_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsProgress_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsProgress";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "profile"]))
    {
        ElementsProfile_validate(__inst__[$ "profile"], $"{__where__} :: 'profile'");
    }
    if (!is_undefined(__inst__[$ "currentStep"]))
    {
        ElementsStep_validate(__inst__[$ "currentStep"], $"{__where__} :: 'currentStep'");
    }
    if (!is_undefined(__inst__[$ "remaining"]))
    {
        if (!is_numeric(__inst__[$ "remaining"])) throw $"{__where__} :: 'remaining' expected Real";
    }
    if (!is_undefined(__inst__[$ "mission"]))
    {
        ElementsProgressMissionInfo_validate(__inst__[$ "mission"], $"{__where__} :: 'mission'");
    }
    if (!is_undefined(__inst__[$ "rewardIssuances"]))
    {
        if (!is_array(__inst__[$ "rewardIssuances"])) throw $"{__where__} :: 'rewardIssuances' expected Array<ElementsRewardIssuance>";
    }
    if (!is_undefined(__inst__[$ "sequence"]))
    {
        if (!is_numeric(__inst__[$ "sequence"])) throw $"{__where__} :: 'sequence' expected Real";
    }
    if (!is_undefined(__inst__[$ "managedBySchedule"]))
    {
        if (!(is_bool(__inst__[$ "managedBySchedule"]) || __inst__[$ "managedBySchedule"] == 0 || __inst__[$ "managedBySchedule"] == 1)) throw $"{__where__} :: 'managedBySchedule' expected Bool";
    }
    if (!is_undefined(__inst__[$ "schedules"]))
    {
        if (!is_array(__inst__[$ "schedules"])) throw $"{__where__} :: 'schedules' expected Array<ElementsSchedule>";
    }
    if (!is_undefined(__inst__[$ "scheduleEvents"]))
    {
        if (!is_array(__inst__[$ "scheduleEvents"])) throw $"{__where__} :: 'scheduleEvents' expected Array<ElementsScheduleEvent>";
    }
}

/**
 * @func ElementsProgressMissionInfo_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsProgressMissionInfo_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsProgressMissionInfo_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsProgressMissionInfo";

    if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    if (!is_undefined(__inst__[$ "steps"]))
    {
        if (!is_array(__inst__[$ "steps"])) throw $"{__where__} :: 'steps' expected Array<ElementsStep>";
    }
    if (!is_undefined(__inst__[$ "finalRepeatStep"]))
    {
        ElementsStep_validate(__inst__[$ "finalRepeatStep"], $"{__where__} :: 'finalRepeatStep'");
    }
    if (!is_undefined(__inst__[$ "tags"]))
    {
        if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsProgressMissionInfoMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsProgressMissionInfoMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsProgressMissionInfoMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsProgressMissionInfoMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsProgressMissionInfoMetadata";

}

/**
 * @func ElementsProgressRow_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsProgressRow_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsProgressRow_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsProgressRow";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "profileId"]))
    {
        if (!is_string(__inst__[$ "profileId"])) throw $"{__where__} :: 'profileId' expected String";
    }
    if (!is_undefined(__inst__[$ "profileImageUrl"]))
    {
        if (!is_string(__inst__[$ "profileImageUrl"])) throw $"{__where__} :: 'profileImageUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "profileDisplayName"]))
    {
        if (!is_string(__inst__[$ "profileDisplayName"])) throw $"{__where__} :: 'profileDisplayName' expected String";
    }
    if (!is_undefined(__inst__[$ "stepDisplayName"]))
    {
        if (!is_string(__inst__[$ "stepDisplayName"])) throw $"{__where__} :: 'stepDisplayName' expected String";
    }
    if (!is_undefined(__inst__[$ "stepDescription"]))
    {
        if (!is_string(__inst__[$ "stepDescription"])) throw $"{__where__} :: 'stepDescription' expected String";
    }
    if (!is_undefined(__inst__[$ "remaining"]))
    {
        if (!is_numeric(__inst__[$ "remaining"])) throw $"{__where__} :: 'remaining' expected Real";
    }
    if (!is_undefined(__inst__[$ "stepCount"]))
    {
        if (!is_numeric(__inst__[$ "stepCount"])) throw $"{__where__} :: 'stepCount' expected Real";
    }
}

/**
 * @func ElementsProviders_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsProviders_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsProviders_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsProviders";

}

/**
 * @func ElementsPSNApplicationConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsPSNApplicationConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsPSNApplicationConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsPSNApplicationConfiguration";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    ElementsApplication_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    if (!is_string(__inst__[$ "npIdentifier"])) throw $"{__where__} :: 'npIdentifier' expected String";
    if (!is_string(__inst__[$ "clientSecret"])) throw $"{__where__} :: 'clientSecret' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
}

/**
 * @func ElementsRank_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsRank_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsRank_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsRank";

    ElementsScore_validate(__inst__[$ "score"], $"{__where__} :: 'score'");
    if (!is_undefined(__inst__[$ "position"]))
    {
        if (!is_numeric(__inst__[$ "position"])) throw $"{__where__} :: 'position' expected Real";
    }
}

/**
 * @func ElementsRankRow_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsRankRow_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsRankRow_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsRankRow";

    if (!is_string(__inst__[$ "profileId"])) throw $"{__where__} :: 'profileId' expected String";
    if (!is_string(__inst__[$ "profileDisplayName"])) throw $"{__where__} :: 'profileDisplayName' expected String";
    if (!is_string(__inst__[$ "profileImageUrl"])) throw $"{__where__} :: 'profileImageUrl' expected String";
    if (!is_numeric(__inst__[$ "lastLogin"])) throw $"{__where__} :: 'lastLogin' expected Real";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "position"]))
    {
        if (!is_numeric(__inst__[$ "position"])) throw $"{__where__} :: 'position' expected Real";
    }
    if (!is_undefined(__inst__[$ "pointValue"]))
    {
        if (!is_numeric(__inst__[$ "pointValue"])) throw $"{__where__} :: 'pointValue' expected Real";
    }
    if (!is_undefined(__inst__[$ "scoreUnits"]))
    {
        if (!is_string(__inst__[$ "scoreUnits"])) throw $"{__where__} :: 'scoreUnits' expected String";
    }
    if (!is_undefined(__inst__[$ "creationTimestamp"]))
    {
        if (!is_numeric(__inst__[$ "creationTimestamp"])) throw $"{__where__} :: 'creationTimestamp' expected Real";
    }
    if (!is_undefined(__inst__[$ "leaderboardEpoch"]))
    {
        if (!is_numeric(__inst__[$ "leaderboardEpoch"])) throw $"{__where__} :: 'leaderboardEpoch' expected Real";
    }
}

/**
 * @func ElementsReceipt_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsReceipt_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsReceipt_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsReceipt";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "originalTransactionId"]))
    {
        if (!is_string(__inst__[$ "originalTransactionId"])) throw $"{__where__} :: 'originalTransactionId' expected String";
    }
    if (!is_undefined(__inst__[$ "schema"]))
    {
        if (!is_string(__inst__[$ "schema"])) throw $"{__where__} :: 'schema' expected String";
    }
    if (!is_undefined(__inst__[$ "user"]))
    {
        ElementsUser_validate(__inst__[$ "user"], $"{__where__} :: 'user'");
    }
    if (!is_undefined(__inst__[$ "purchaseTime"]))
    {
        if (!is_numeric(__inst__[$ "purchaseTime"])) throw $"{__where__} :: 'purchaseTime' expected Real";
    }
    if (!is_undefined(__inst__[$ "body"]))
    {
        if (!is_string(__inst__[$ "body"])) throw $"{__where__} :: 'body' expected String";
    }
}

/**
 * @func ElementsReward_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsReward_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsReward_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsReward";

    ElementsItem_validate(__inst__[$ "item"], $"{__where__} :: 'item'");
    if (!is_numeric(__inst__[$ "quantity"])) throw $"{__where__} :: 'quantity' expected Real";
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsRewardMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsRewardIssuance_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsRewardIssuance_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsRewardIssuance_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsRewardIssuance";

    ElementsUser_validate(__inst__[$ "user"], $"{__where__} :: 'user'");
    ElementsRewardIssuanceState_validate(__inst__[$ "state"], $"{__where__} :: 'state'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "item"]))
    {
        ElementsItem_validate(__inst__[$ "item"], $"{__where__} :: 'item'");
    }
    if (!is_undefined(__inst__[$ "itemQuantity"]))
    {
        if (!is_numeric(__inst__[$ "itemQuantity"])) throw $"{__where__} :: 'itemQuantity' expected Real";
    }
    if (!is_undefined(__inst__[$ "context"]))
    {
        if (!is_string(__inst__[$ "context"])) throw $"{__where__} :: 'context' expected String";
    }
    if (!is_undefined(__inst__[$ "type"]))
    {
        ElementsRewardIssuanceType_validate(__inst__[$ "type"], $"{__where__} :: 'type'");
    }
    if (!is_undefined(__inst__[$ "source"]))
    {
        if (!is_string(__inst__[$ "source"])) throw $"{__where__} :: 'source' expected String";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsRewardIssuanceMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
    if (!is_undefined(__inst__[$ "tags"]))
    {
        if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "expirationTimestamp"]))
    {
        if (!is_numeric(__inst__[$ "expirationTimestamp"])) throw $"{__where__} :: 'expirationTimestamp' expected Real";
    }
    if (!is_undefined(__inst__[$ "uuid"]))
    {
        if (!is_string(__inst__[$ "uuid"])) throw $"{__where__} :: 'uuid' expected String";
    }
}

/**
 * @func ElementsRewardIssuanceMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsRewardIssuanceMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsRewardIssuanceMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsRewardIssuanceMetadata";

}

/**
 * @func ElementsRewardIssuanceRedemptionResult_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsRewardIssuanceRedemptionResult_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsRewardIssuanceRedemptionResult_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsRewardIssuanceRedemptionResult";

    if (!is_undefined(__inst__[$ "rewardIssuanceId"]))
    {
        if (!is_string(__inst__[$ "rewardIssuanceId"])) throw $"{__where__} :: 'rewardIssuanceId' expected String";
    }
    if (!is_undefined(__inst__[$ "rewardIssuance"]))
    {
        ElementsRewardIssuance_validate(__inst__[$ "rewardIssuance"], $"{__where__} :: 'rewardIssuance'");
    }
    if (!is_undefined(__inst__[$ "inventoryItem"]))
    {
        ElementsInventoryItem_validate(__inst__[$ "inventoryItem"], $"{__where__} :: 'inventoryItem'");
    }
    if (!is_undefined(__inst__[$ "errorDetails"]))
    {
        if (!is_string(__inst__[$ "errorDetails"])) throw $"{__where__} :: 'errorDetails' expected String";
    }
}

/**
 * @func ElementsRewardIssuanceState_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsRewardIssuanceState_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsRewardIssuanceState_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'RewardIssuanceState' expected String";
    switch (__inst__)
    {
        case "ISSUED":
            break;
        case "REDEEMED":
            break;
        default:
            throw $"{__where__} :: 'RewardIssuanceState' invalid RewardIssuanceState '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsRewardIssuanceType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsRewardIssuanceType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsRewardIssuanceType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'RewardIssuanceType' expected String";
    switch (__inst__)
    {
        case "PERSISTENT":
            break;
        case "NON_PERSISTENT":
            break;
        default:
            throw $"{__where__} :: 'RewardIssuanceType' invalid RewardIssuanceType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsRewardMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsRewardMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsRewardMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsRewardMetadata";

}

/**
 * @func ElementsRoutingHealthStatus_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsRoutingHealthStatus_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsRoutingHealthStatus_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsRoutingHealthStatus";

    if (!is_undefined(__inst__[$ "instanceId"]))
    {
        if (!is_string(__inst__[$ "instanceId"])) throw $"{__where__} :: 'instanceId' expected String";
    }
    if (!is_undefined(__inst__[$ "routingTable"]))
    {
        if (!is_array(__inst__[$ "routingTable"])) throw $"{__where__} :: 'routingTable' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "masterNodeRoutingTable"]))
    {
        if (!is_array(__inst__[$ "masterNodeRoutingTable"])) throw $"{__where__} :: 'masterNodeRoutingTable' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "applicationNodeRoutingTable"]))
    {
        if (!is_array(__inst__[$ "applicationNodeRoutingTable"])) throw $"{__where__} :: 'applicationNodeRoutingTable' expected Array<String>";
    }
}

/**
 * @func ElementsSaveDataDocument_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSaveDataDocument_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSaveDataDocument_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSaveDataDocument";

    if (!is_string(__inst__[$ "contents"])) throw $"{__where__} :: 'contents' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "slot"]))
    {
        if (!is_numeric(__inst__[$ "slot"])) throw $"{__where__} :: 'slot' expected Real";
    }
    if (!is_undefined(__inst__[$ "user"]))
    {
        ElementsUser_validate(__inst__[$ "user"], $"{__where__} :: 'user'");
    }
    if (!is_undefined(__inst__[$ "profile"]))
    {
        ElementsProfile_validate(__inst__[$ "profile"], $"{__where__} :: 'profile'");
    }
    if (!is_undefined(__inst__[$ "timestamp"]))
    {
        if (!is_numeric(__inst__[$ "timestamp"])) throw $"{__where__} :: 'timestamp' expected Real";
    }
    if (!is_undefined(__inst__[$ "version"]))
    {
        if (!is_string(__inst__[$ "version"])) throw $"{__where__} :: 'version' expected String";
    }
}

/**
 * @func ElementsSchedule_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSchedule_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSchedule_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSchedule";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
}

/**
 * @func ElementsScheduleEvent_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsScheduleEvent_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsScheduleEvent_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsScheduleEvent";

    ElementsSchedule_validate(__inst__[$ "schedule"], $"{__where__} :: 'schedule'");
    if (!is_array(__inst__[$ "missions"])) throw $"{__where__} :: 'missions' expected Array<ElementsMission>";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "begin"]))
    {
        if (!is_numeric(__inst__[$ "begin"])) throw $"{__where__} :: 'begin' expected Real";
    }
    if (!is_undefined(__inst__[$ "end"]))
    {
        if (!is_numeric(__inst__[$ "end"])) throw $"{__where__} :: 'end' expected Real";
    }
}

/**
 * @func ElementsScore_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsScore_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsScore_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsScore";

    ElementsProfile_validate(__inst__[$ "profile"], $"{__where__} :: 'profile'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "pointValue"]))
    {
        if (!is_numeric(__inst__[$ "pointValue"])) throw $"{__where__} :: 'pointValue' expected Real";
    }
    if (!is_undefined(__inst__[$ "scoreUnits"]))
    {
        if (!is_string(__inst__[$ "scoreUnits"])) throw $"{__where__} :: 'scoreUnits' expected String";
    }
    if (!is_undefined(__inst__[$ "creationTimestamp"]))
    {
        if (!is_numeric(__inst__[$ "creationTimestamp"])) throw $"{__where__} :: 'creationTimestamp' expected Real";
    }
    if (!is_undefined(__inst__[$ "leaderboardEpoch"]))
    {
        if (!is_numeric(__inst__[$ "leaderboardEpoch"])) throw $"{__where__} :: 'leaderboardEpoch' expected Real";
    }
}

/**
 * @func ElementsSession_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSession_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSession_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSession";

    ElementsUser_validate(__inst__[$ "user"], $"{__where__} :: 'user'");
    if (!is_undefined(__inst__[$ "profile"]))
    {
        ElementsProfile_validate(__inst__[$ "profile"], $"{__where__} :: 'profile'");
    }
    if (!is_undefined(__inst__[$ "application"]))
    {
        ElementsApplication_validate(__inst__[$ "application"], $"{__where__} :: 'application'");
    }
    if (!is_undefined(__inst__[$ "expiry"]))
    {
        if (!is_numeric(__inst__[$ "expiry"])) throw $"{__where__} :: 'expiry' expected Real";
    }
}

/**
 * @func ElementsSessionCreation_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSessionCreation_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSessionCreation_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSessionCreation";

    if (!is_undefined(__inst__[$ "sessionSecret"]))
    {
        if (!is_string(__inst__[$ "sessionSecret"])) throw $"{__where__} :: 'sessionSecret' expected String";
    }
    if (!is_undefined(__inst__[$ "session"]))
    {
        ElementsSession_validate(__inst__[$ "session"], $"{__where__} :: 'session'");
    }
}

/**
 * @func ElementsSimpleInventoryItemQuantityAdjustment_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSimpleInventoryItemQuantityAdjustment_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSimpleInventoryItemQuantityAdjustment_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSimpleInventoryItemQuantityAdjustment";

    if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    if (!is_numeric(__inst__[$ "quantityDelta"])) throw $"{__where__} :: 'quantityDelta' expected Real";
}

/**
 * @func ElementsSmartContract_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSmartContract_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSmartContract_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSmartContract";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    ElementsSmartContractAddresses_validate(__inst__[$ "addresses"], $"{__where__} :: 'addresses'");
    ElementsVault_validate(__inst__[$ "vault"], $"{__where__} :: 'vault'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsSmartContractMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsSmartContractAddress_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSmartContractAddress_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSmartContractAddress_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSmartContractAddress";

    if (!is_undefined(__inst__[$ "address"]))
    {
        if (!is_string(__inst__[$ "address"])) throw $"{__where__} :: 'address' expected String";
    }
}

/**
 * @func ElementsSmartContractAddresses_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSmartContractAddresses_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSmartContractAddresses_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSmartContractAddresses";

}

/**
 * @func ElementsSmartContractMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSmartContractMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSmartContractMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSmartContractMetadata";

}

/**
 * @func ElementsSteamApplicationConfiguration_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSteamApplicationConfiguration_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSteamApplicationConfiguration_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSteamApplicationConfiguration";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "type"])) throw $"{__where__} :: 'type' expected String";
    ElementsApplication_validate(__inst__[$ "parent"], $"{__where__} :: 'parent'");
    if (!is_string(__inst__[$ "publisherKey"])) throw $"{__where__} :: 'publisherKey' expected String";
    if (!is_string(__inst__[$ "appId"])) throw $"{__where__} :: 'appId' expected String";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "productBundles"]))
    {
        if (!is_array(__inst__[$ "productBundles"])) throw $"{__where__} :: 'productBundles' expected Array<ElementsProductBundle>";
    }
}

/**
 * @func ElementsStep_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsStep_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsStep_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsStep";

    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    if (!is_numeric(__inst__[$ "count"])) throw $"{__where__} :: 'count' expected Real";
    if (!is_array(__inst__[$ "rewards"])) throw $"{__where__} :: 'rewards' expected Array<ElementsReward>";
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsStepMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsStepMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsStepMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsStepMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsStepMetadata";

}

/**
 * @func ElementsSubjectRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSubjectRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSubjectRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSubjectRequest";

    if (!is_array(__inst__[$ "userIds"])) throw $"{__where__} :: 'userIds' expected Array<String>";
    if (!is_array(__inst__[$ "profileIds"])) throw $"{__where__} :: 'profileIds' expected Array<String>";
    if (!is_undefined(__inst__[$ "wildcard"]))
    {
        if (!(is_bool(__inst__[$ "wildcard"]) || __inst__[$ "wildcard"] == 0 || __inst__[$ "wildcard"] == 1)) throw $"{__where__} :: 'wildcard' expected Bool";
    }
}

/**
 * @func ElementsSubjects_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSubjects_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSubjects_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSubjects";

    if (!is_array(__inst__[$ "users"])) throw $"{__where__} :: 'users' expected Array<ElementsUser>";
    if (!is_array(__inst__[$ "profiles"])) throw $"{__where__} :: 'profiles' expected Array<ElementsProfile>";
    if (!is_undefined(__inst__[$ "wildcard"]))
    {
        if (!(is_bool(__inst__[$ "wildcard"]) || __inst__[$ "wildcard"] == 0 || __inst__[$ "wildcard"] == 1)) throw $"{__where__} :: 'wildcard' expected Bool";
    }
    if (!is_undefined(__inst__[$ "minimumLevel"]))
    {
        ElementsSubjectsMinimumLevel_validate(__inst__[$ "minimumLevel"], $"{__where__} :: 'minimumLevel'");
    }
}

/**
 * @func ElementsSubjectsMinimumLevel_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSubjectsMinimumLevel_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSubjectsMinimumLevel_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'SubjectsMinimumLevel' expected String";
    switch (__inst__)
    {
        case "UNPRIVILEGED":
            break;
        case "USER":
            break;
        case "SUPERUSER":
            break;
        default:
            throw $"{__where__} :: 'SubjectsMinimumLevel' invalid SubjectsMinimumLevel '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsSystemVersion_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsSystemVersion_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsSystemVersion_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsSystemVersion";

    if (!is_undefined(__inst__[$ "version"]))
    {
        if (!is_string(__inst__[$ "version"])) throw $"{__where__} :: 'version' expected String";
    }
    if (!is_undefined(__inst__[$ "revision"]))
    {
        if (!is_string(__inst__[$ "revision"])) throw $"{__where__} :: 'revision' expected String";
    }
    if (!is_undefined(__inst__[$ "timestamp"]))
    {
        if (!is_string(__inst__[$ "timestamp"])) throw $"{__where__} :: 'timestamp' expected String";
    }
}

/**
 * @func ElementsTabulationProgressRow_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsTabulationProgressRow_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsTabulationProgressRow_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsTabulationProgressRow";

    if (!is_array(__inst__[$ "rows"])) throw $"{__where__} :: 'rows' expected Array<ElementsProgressRow>";
}

/**
 * @func ElementsTabulationRankRow_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsTabulationRankRow_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsTabulationRankRow_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsTabulationRankRow";

    if (!is_array(__inst__[$ "rows"])) throw $"{__where__} :: 'rows' expected Array<ElementsRankRow>";
}

/**
 * @func ElementsUniqueCode_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUniqueCode_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUniqueCode_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUniqueCode";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "linger"]))
    {
        if (!is_numeric(__inst__[$ "linger"])) throw $"{__where__} :: 'linger' expected Real";
    }
    if (!is_undefined(__inst__[$ "timeout"]))
    {
        if (!is_numeric(__inst__[$ "timeout"])) throw $"{__where__} :: 'timeout' expected Real";
    }
    if (!is_undefined(__inst__[$ "expiry"]))
    {
        if (!is_numeric(__inst__[$ "expiry"])) throw $"{__where__} :: 'expiry' expected Real";
    }
    if (!is_undefined(__inst__[$ "user"]))
    {
        ElementsUser_validate(__inst__[$ "user"], $"{__where__} :: 'user'");
    }
    if (!is_undefined(__inst__[$ "profile"]))
    {
        ElementsProfile_validate(__inst__[$ "profile"], $"{__where__} :: 'profile'");
    }
}

/**
 * @func ElementsUpdateApplicationRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateApplicationRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateApplicationRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateApplicationRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "attributes"]))
    {
        ElementsUpdateApplicationRequestAttributes_validate(__inst__[$ "attributes"], $"{__where__} :: 'attributes'");
    }
    if (!is_undefined(__inst__[$ "maxProfiles"]))
    {
        if (!is_numeric(__inst__[$ "maxProfiles"])) throw $"{__where__} :: 'maxProfiles' expected Real";
    }
    if (!is_undefined(__inst__[$ "autoCreateProfile"]))
    {
        if (!(is_bool(__inst__[$ "autoCreateProfile"]) || __inst__[$ "autoCreateProfile"] == 0 || __inst__[$ "autoCreateProfile"] == 1)) throw $"{__where__} :: 'autoCreateProfile' expected Bool";
    }
    if (!is_undefined(__inst__[$ "authoritativeProfilePicture"]))
    {
        if (!(is_bool(__inst__[$ "authoritativeProfilePicture"]) || __inst__[$ "authoritativeProfilePicture"] == 0 || __inst__[$ "authoritativeProfilePicture"] == 1)) throw $"{__where__} :: 'authoritativeProfilePicture' expected Bool";
    }
    if (!is_undefined(__inst__[$ "displayNameRegex"]))
    {
        if (!is_string(__inst__[$ "displayNameRegex"])) throw $"{__where__} :: 'displayNameRegex' expected String";
    }
}

/**
 * @func ElementsUpdateApplicationRequestAttributes_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateApplicationRequestAttributes_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateApplicationRequestAttributes_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateApplicationRequestAttributes";

}

/**
 * @func ElementsUpdateAuthSchemeRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateAuthSchemeRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateAuthSchemeRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateAuthSchemeRequest";

    if (!is_string(__inst__[$ "audience"])) throw $"{__where__} :: 'audience' expected String";
    ElementsUpdateAuthSchemeRequestAlgorithm_validate(__inst__[$ "algorithm"], $"{__where__} :: 'algorithm'");
    ElementsUpdateAuthSchemeRequestUserLevel_validate(__inst__[$ "userLevel"], $"{__where__} :: 'userLevel'");
    if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    if (!is_array(__inst__[$ "allowedIssuers"])) throw $"{__where__} :: 'allowedIssuers' expected Array<String>";
    if (!is_undefined(__inst__[$ "regenerate"]))
    {
        if (!(is_bool(__inst__[$ "regenerate"]) || __inst__[$ "regenerate"] == 0 || __inst__[$ "regenerate"] == 1)) throw $"{__where__} :: 'regenerate' expected Bool";
    }
    if (!is_undefined(__inst__[$ "publicKey"]))
    {
        if (!is_string(__inst__[$ "publicKey"])) throw $"{__where__} :: 'publicKey' expected String";
    }
}

/**
 * @func ElementsUpdateAuthSchemeRequestAlgorithm_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateAuthSchemeRequestAlgorithm_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateAuthSchemeRequestAlgorithm_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UpdateAuthSchemeRequestAlgorithm' expected String";
    switch (__inst__)
    {
        case "RSA_256":
            break;
        case "RSA_384":
            break;
        case "RSA_512":
            break;
        default:
            throw $"{__where__} :: 'UpdateAuthSchemeRequestAlgorithm' invalid UpdateAuthSchemeRequestAlgorithm '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUpdateAuthSchemeRequestUserLevel_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateAuthSchemeRequestUserLevel_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateAuthSchemeRequestUserLevel_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UpdateAuthSchemeRequestUserLevel' expected String";
    switch (__inst__)
    {
        case "UNPRIVILEGED":
            break;
        case "USER":
            break;
        case "SUPERUSER":
            break;
        default:
            throw $"{__where__} :: 'UpdateAuthSchemeRequestUserLevel' invalid UpdateAuthSchemeRequestUserLevel '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUpdateAuthSchemeResponse_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateAuthSchemeResponse_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateAuthSchemeResponse_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateAuthSchemeResponse";

    if (!is_string(__inst__[$ "publicKey"])) throw $"{__where__} :: 'publicKey' expected String";
    if (!is_undefined(__inst__[$ "scheme"]))
    {
        ElementsAuthScheme_validate(__inst__[$ "scheme"], $"{__where__} :: 'scheme'");
    }
    if (!is_undefined(__inst__[$ "privateKey"]))
    {
        if (!is_string(__inst__[$ "privateKey"])) throw $"{__where__} :: 'privateKey' expected String";
    }
}

/**
 * @func ElementsUpdateDeploymentRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateDeploymentRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateDeploymentRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateDeploymentRequest";

    if (!is_string(__inst__[$ "revision"])) throw $"{__where__} :: 'revision' expected String";
}

/**
 * @func ElementsUpdateDistinctInventoryItemRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateDistinctInventoryItemRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateDistinctInventoryItemRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateDistinctInventoryItemRequest";

    if (!is_undefined(__inst__[$ "userId"]))
    {
        if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(__inst__[$ "profileId"]))
    {
        if (!is_string(__inst__[$ "profileId"])) throw $"{__where__} :: 'profileId' expected String";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsUpdateDistinctInventoryItemRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsUpdateDistinctInventoryItemRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateDistinctInventoryItemRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateDistinctInventoryItemRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateDistinctInventoryItemRequestMetadata";

}

/**
 * @func ElementsUpdateElementDeploymentRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateElementDeploymentRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateElementDeploymentRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateElementDeploymentRequest";

    ElementsUpdateElementDeploymentRequestState_validate(__inst__[$ "state"], $"{__where__} :: 'state'");
    if (!is_undefined(__inst__[$ "elements"]))
    {
        if (!is_array(__inst__[$ "elements"])) throw $"{__where__} :: 'elements' expected Array<ElementsElementPathDefinition>";
    }
    if (!is_undefined(__inst__[$ "packages"]))
    {
        if (!is_array(__inst__[$ "packages"])) throw $"{__where__} :: 'packages' expected Array<ElementsElementPackageDefinition>";
    }
    if (!is_undefined(__inst__[$ "useDefaultRepositories"]))
    {
        if (!(is_bool(__inst__[$ "useDefaultRepositories"]) || __inst__[$ "useDefaultRepositories"] == 0 || __inst__[$ "useDefaultRepositories"] == 1)) throw $"{__where__} :: 'useDefaultRepositories' expected Bool";
    }
    if (!is_undefined(__inst__[$ "repositories"]))
    {
        if (!is_array(__inst__[$ "repositories"])) throw $"{__where__} :: 'repositories' expected Array<ElementsElementArtifactRepository>";
    }
    if (!is_undefined(__inst__[$ "pathAttributes"]))
    {
        ElementsUpdateElementDeploymentRequestPathAttributes_validate(__inst__[$ "pathAttributes"], $"{__where__} :: 'pathAttributes'");
    }
    if (!is_undefined(__inst__[$ "pathSpiBuiltins"]))
    {
        ElementsUpdateElementDeploymentRequestPathSpiBuiltins_validate(__inst__[$ "pathSpiBuiltins"], $"{__where__} :: 'pathSpiBuiltins'");
    }
    if (!is_undefined(__inst__[$ "pathSpiClassPaths"]))
    {
        ElementsUpdateElementDeploymentRequestPathSpiClassPaths_validate(__inst__[$ "pathSpiClassPaths"], $"{__where__} :: 'pathSpiClassPaths'");
    }
}

/**
 * @func ElementsUpdateElementDeploymentRequestPathAttributes_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateElementDeploymentRequestPathAttributes_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateElementDeploymentRequestPathAttributes_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateElementDeploymentRequestPathAttributes";

}

/**
 * @func ElementsUpdateElementDeploymentRequestPathAttributesAp_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateElementDeploymentRequestPathAttributesAp_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateElementDeploymentRequestPathAttributesAp_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateElementDeploymentRequestPathAttributesAp";

}

/**
 * @func ElementsUpdateElementDeploymentRequestPathSpiBuiltins_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateElementDeploymentRequestPathSpiBuiltins_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateElementDeploymentRequestPathSpiBuiltins_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateElementDeploymentRequestPathSpiBuiltins";

}

/**
 * @func ElementsUpdateElementDeploymentRequestPathSpiClassPaths_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateElementDeploymentRequestPathSpiClassPaths_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateElementDeploymentRequestPathSpiClassPaths_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateElementDeploymentRequestPathSpiClassPaths";

}

/**
 * @func ElementsUpdateElementDeploymentRequestState_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateElementDeploymentRequestState_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateElementDeploymentRequestState_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UpdateElementDeploymentRequestState' expected String";
    switch (__inst__)
    {
        case "UNLOADED":
            break;
        case "ENABLED":
            break;
        case "DISABLED":
            break;
        default:
            throw $"{__where__} :: 'UpdateElementDeploymentRequestState' invalid UpdateElementDeploymentRequestState '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUpdateInventoryItemRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateInventoryItemRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateInventoryItemRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateInventoryItemRequest";

    if (!is_undefined(__inst__[$ "quantity"]))
    {
        if (!is_numeric(__inst__[$ "quantity"])) throw $"{__where__} :: 'quantity' expected Real";
    }
}

/**
 * @func ElementsUpdateItemRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateItemRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateItemRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateItemRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    if (!is_undefined(__inst__[$ "tags"]))
    {
        if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "metadataSpec"]))
    {
        ElementsMetadataSpec_validate(__inst__[$ "metadataSpec"], $"{__where__} :: 'metadataSpec'");
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsUpdateItemRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
    if (!is_undefined(__inst__[$ "publicVisible"]))
    {
        if (!(is_bool(__inst__[$ "publicVisible"]) || __inst__[$ "publicVisible"] == 0 || __inst__[$ "publicVisible"] == 1)) throw $"{__where__} :: 'publicVisible' expected Bool";
    }
}

/**
 * @func ElementsUpdateItemRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateItemRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateItemRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateItemRequestMetadata";

}

/**
 * @func ElementsUpdateLargeObjectContentsBody_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateLargeObjectContentsBody_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateLargeObjectContentsBody_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateLargeObjectContentsBody";

    if (!is_undefined(__inst__[$ "file"]))
    {
        ElementsFormDataContentDisposition_validate(__inst__[$ "file"], $"{__where__} :: 'file'");
    }
}

/**
 * @func ElementsUpdateLargeObjectRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateLargeObjectRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateLargeObjectRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateLargeObjectRequest";

    if (!is_string(__inst__[$ "mimeType"])) throw $"{__where__} :: 'mimeType' expected String";
    ElementsSubjectRequest_validate(__inst__[$ "read"], $"{__where__} :: 'read'");
    ElementsSubjectRequest_validate(__inst__[$ "write"], $"{__where__} :: 'write'");
    ElementsSubjectRequest_validate(__inst__[$ "delete"], $"{__where__} :: 'delete'");
}

/**
 * @func ElementsUpdateLeaderboardRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateLeaderboardRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateLeaderboardRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateLeaderboardRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    ElementsUpdateLeaderboardRequestTimeStrategyType_validate(__inst__[$ "timeStrategyType"], $"{__where__} :: 'timeStrategyType'");
    ElementsUpdateLeaderboardRequestScoreStrategyType_validate(__inst__[$ "scoreStrategyType"], $"{__where__} :: 'scoreStrategyType'");
    if (!is_string(__inst__[$ "title"])) throw $"{__where__} :: 'title' expected String";
    if (!is_string(__inst__[$ "scoreUnits"])) throw $"{__where__} :: 'scoreUnits' expected String";
}

/**
 * @func ElementsUpdateLeaderboardRequestScoreStrategyType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateLeaderboardRequestScoreStrategyType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateLeaderboardRequestScoreStrategyType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UpdateLeaderboardRequestScoreStrategyType' expected String";
    switch (__inst__)
    {
        case "OVERWRITE_IF_GREATER":
            break;
        case "ACCUMULATE":
            break;
        default:
            throw $"{__where__} :: 'UpdateLeaderboardRequestScoreStrategyType' invalid UpdateLeaderboardRequestScoreStrategyType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUpdateLeaderboardRequestTimeStrategyType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateLeaderboardRequestTimeStrategyType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateLeaderboardRequestTimeStrategyType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UpdateLeaderboardRequestTimeStrategyType' expected String";
    switch (__inst__)
    {
        case "ALL_TIME":
            break;
        case "EPOCHAL":
            break;
        default:
            throw $"{__where__} :: 'UpdateLeaderboardRequestTimeStrategyType' invalid UpdateLeaderboardRequestTimeStrategyType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUpdateMetadataRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateMetadataRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateMetadataRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateMetadataRequest";

    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsUpdateMetadataRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
    if (!is_undefined(__inst__[$ "metadataSpec"]))
    {
        ElementsMetadataSpec_validate(__inst__[$ "metadataSpec"], $"{__where__} :: 'metadataSpec'");
    }
    if (!is_undefined(__inst__[$ "accessLevel"]))
    {
        ElementsUpdateMetadataRequestAccessLevel_validate(__inst__[$ "accessLevel"], $"{__where__} :: 'accessLevel'");
    }
}

/**
 * @func ElementsUpdateMetadataRequestAccessLevel_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateMetadataRequestAccessLevel_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateMetadataRequestAccessLevel_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UpdateMetadataRequestAccessLevel' expected String";
    switch (__inst__)
    {
        case "UNPRIVILEGED":
            break;
        case "USER":
            break;
        case "SUPERUSER":
            break;
        default:
            throw $"{__where__} :: 'UpdateMetadataRequestAccessLevel' invalid UpdateMetadataRequestAccessLevel '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUpdateMetadataRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateMetadataRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateMetadataRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateMetadataRequestMetadata";

}

/**
 * @func ElementsUpdateMetadataSpecRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateMetadataSpecRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateMetadataSpecRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateMetadataSpecRequest";

    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "type"]))
    {
        ElementsUpdateMetadataSpecRequestType_validate(__inst__[$ "type"], $"{__where__} :: 'type'");
    }
    if (!is_undefined(__inst__[$ "properties"]))
    {
        if (!is_array(__inst__[$ "properties"])) throw $"{__where__} :: 'properties' expected Array<ElementsMetadataSpecProperty>";
    }
}

/**
 * @func ElementsUpdateMetadataSpecRequestType_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateMetadataSpecRequestType_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateMetadataSpecRequestType_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UpdateMetadataSpecRequestType' expected String";
    switch (__inst__)
    {
        case "STRING":
            break;
        case "NUMBER":
            break;
        case "BOOLEAN":
            break;
        case "ARRAY":
            break;
        case "ENUM":
            break;
        case "OBJECT":
            break;
        case "TAGS":
            break;
        default:
            throw $"{__where__} :: 'UpdateMetadataSpecRequestType' invalid UpdateMetadataSpecRequestType '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUpdateMissionRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateMissionRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateMissionRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateMissionRequest";

    if (!is_undefined(__inst__[$ "displayName"]))
    {
        if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    }
    if (!is_undefined(__inst__[$ "description"]))
    {
        if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
    }
    if (!is_undefined(__inst__[$ "tags"]))
    {
        if (!is_array(__inst__[$ "tags"])) throw $"{__where__} :: 'tags' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "steps"]))
    {
        if (!is_array(__inst__[$ "steps"])) throw $"{__where__} :: 'steps' expected Array<ElementsStep>";
    }
    if (!is_undefined(__inst__[$ "finalRepeatStep"]))
    {
        ElementsStep_validate(__inst__[$ "finalRepeatStep"], $"{__where__} :: 'finalRepeatStep'");
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsUpdateMissionRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsUpdateMissionRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateMissionRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateMissionRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateMissionRequestMetadata";

}

/**
 * @func ElementsUpdateProfileImageRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateProfileImageRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateProfileImageRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateProfileImageRequest";

    if (!is_string(__inst__[$ "mimeType"])) throw $"{__where__} :: 'mimeType' expected String";
}

/**
 * @func ElementsUpdateProfileRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateProfileRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateProfileRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateProfileRequest";

    if (!is_undefined(__inst__[$ "imageUrl"]))
    {
        if (!is_string(__inst__[$ "imageUrl"])) throw $"{__where__} :: 'imageUrl' expected String";
    }
    if (!is_undefined(__inst__[$ "displayName"]))
    {
        if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    }
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsUpdateProfileRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsUpdateProfileRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateProfileRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateProfileRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateProfileRequestMetadata";

}

/**
 * @func ElementsUpdateProgressRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateProgressRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateProgressRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateProgressRequest";

    if (!is_undefined(__inst__[$ "currentStep"]))
    {
        ElementsStep_validate(__inst__[$ "currentStep"], $"{__where__} :: 'currentStep'");
    }
    if (!is_undefined(__inst__[$ "remaining"]))
    {
        if (!is_numeric(__inst__[$ "remaining"])) throw $"{__where__} :: 'remaining' expected Real";
    }
}

/**
 * @func ElementsUpdateSaveDataDocumentRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateSaveDataDocumentRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateSaveDataDocumentRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateSaveDataDocumentRequest";

    if (!is_string(__inst__[$ "contents"])) throw $"{__where__} :: 'contents' expected String";
    if (!is_undefined(__inst__[$ "force"]))
    {
        if (!(is_bool(__inst__[$ "force"]) || __inst__[$ "force"] == 0 || __inst__[$ "force"] == 1)) throw $"{__where__} :: 'force' expected Bool";
    }
    if (!is_undefined(__inst__[$ "version"]))
    {
        if (!is_string(__inst__[$ "version"])) throw $"{__where__} :: 'version' expected String";
    }
}

/**
 * @func ElementsUpdateScheduleEventRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateScheduleEventRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateScheduleEventRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateScheduleEventRequest";

    if (!is_array(__inst__[$ "missionNamesOrIds"])) throw $"{__where__} :: 'missionNamesOrIds' expected Array<String>";
    if (!is_undefined(__inst__[$ "begin"]))
    {
        if (!is_numeric(__inst__[$ "begin"])) throw $"{__where__} :: 'begin' expected Real";
    }
    if (!is_undefined(__inst__[$ "end"]))
    {
        if (!is_numeric(__inst__[$ "end"])) throw $"{__where__} :: 'end' expected Real";
    }
}

/**
 * @func ElementsUpdateScheduleRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateScheduleRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateScheduleRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateScheduleRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_string(__inst__[$ "description"])) throw $"{__where__} :: 'description' expected String";
}

/**
 * @func ElementsUpdateSmartContractRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateSmartContractRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateSmartContractRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateSmartContractRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    ElementsUpdateSmartContractRequestAddresses_validate(__inst__[$ "addresses"], $"{__where__} :: 'addresses'");
    if (!is_string(__inst__[$ "vaultId"])) throw $"{__where__} :: 'vaultId' expected String";
    if (!is_undefined(__inst__[$ "metadata"]))
    {
        ElementsUpdateSmartContractRequestMetadata_validate(__inst__[$ "metadata"], $"{__where__} :: 'metadata'");
    }
}

/**
 * @func ElementsUpdateSmartContractRequestAddresses_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateSmartContractRequestAddresses_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateSmartContractRequestAddresses_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateSmartContractRequestAddresses";

}

/**
 * @func ElementsUpdateSmartContractRequestMetadata_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateSmartContractRequestMetadata_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateSmartContractRequestMetadata_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateSmartContractRequestMetadata";

}

/**
 * @func ElementsUpdateVaultRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateVaultRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateVaultRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateVaultRequest";

    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    if (!is_undefined(__inst__[$ "passphrase"]))
    {
        if (!is_string(__inst__[$ "passphrase"])) throw $"{__where__} :: 'passphrase' expected String";
    }
    if (!is_undefined(__inst__[$ "newPassphrase"]))
    {
        if (!is_string(__inst__[$ "newPassphrase"])) throw $"{__where__} :: 'newPassphrase' expected String";
    }
}

/**
 * @func ElementsUpdateWalletRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateWalletRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateWalletRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUpdateWalletRequest";

    if (!is_array(__inst__[$ "networks"])) throw $"{__where__} :: 'networks' expected Array<ElementsUpdateWalletRequestNetworksItem>";
    if (!is_undefined(__inst__[$ "displayName"]))
    {
        if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    }
    if (!is_undefined(__inst__[$ "preferredAccount"]))
    {
        if (!is_numeric(__inst__[$ "preferredAccount"])) throw $"{__where__} :: 'preferredAccount' expected Real";
    }
}

/**
 * @func ElementsUpdateWalletRequestNetworksItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUpdateWalletRequestNetworksItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUpdateWalletRequestNetworksItem_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UpdateWalletRequestNetworksItem' expected String";
    switch (__inst__)
    {
        case "NEO":
            break;
        case "NEO_TEST":
            break;
        case "ETHEREUM":
            break;
        case "ETHEREUM_TEST":
            break;
        case "BSC":
            break;
        case "BSC_TEST":
            break;
        case "POLYGON":
            break;
        case "POLYGON_TEST":
            break;
        case "SOLANA":
            break;
        case "SOLANA_TEST":
            break;
        case "FLOW":
            break;
        case "FLOW_TEST":
            break;
        case "NEAR":
            break;
        case "NEAR_TEST":
            break;
        default:
            throw $"{__where__} :: 'UpdateWalletRequestNetworksItem' invalid UpdateWalletRequestNetworksItem '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUser_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUser_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUser_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUser";

    ElementsUserLevel_validate(__inst__[$ "level"], $"{__where__} :: 'level'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "firstName"]))
    {
        if (!is_string(__inst__[$ "firstName"])) throw $"{__where__} :: 'firstName' expected String";
    }
    if (!is_undefined(__inst__[$ "lastName"]))
    {
        if (!is_string(__inst__[$ "lastName"])) throw $"{__where__} :: 'lastName' expected String";
    }
    if (!is_undefined(__inst__[$ "email"]))
    {
        if (!is_string(__inst__[$ "email"])) throw $"{__where__} :: 'email' expected String";
    }
    if (!is_undefined(__inst__[$ "primaryPhoneNb"]))
    {
        if (!is_string(__inst__[$ "primaryPhoneNb"])) throw $"{__where__} :: 'primaryPhoneNb' expected String";
    }
    if (!is_undefined(__inst__[$ "linkedAccounts"]))
    {
        if (!is_array(__inst__[$ "linkedAccounts"])) throw $"{__where__} :: 'linkedAccounts' expected Array<String>";
    }
    if (!is_undefined(__inst__[$ "displayName"]))
    {
        if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    }
    if (!is_undefined(__inst__[$ "linkedAccountProfiles"]))
    {
        ElementsUserLinkedAccountProfiles_validate(__inst__[$ "linkedAccountProfiles"], $"{__where__} :: 'linkedAccountProfiles'");
    }
}

/**
 * @func ElementsUserCreateRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserCreateRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserCreateRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUserCreateRequest";

    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "email"]))
    {
        if (!is_string(__inst__[$ "email"])) throw $"{__where__} :: 'email' expected String";
    }
    if (!is_undefined(__inst__[$ "primaryPhoneNb"]))
    {
        if (!is_string(__inst__[$ "primaryPhoneNb"])) throw $"{__where__} :: 'primaryPhoneNb' expected String";
    }
    if (!is_undefined(__inst__[$ "firstName"]))
    {
        if (!is_string(__inst__[$ "firstName"])) throw $"{__where__} :: 'firstName' expected String";
    }
    if (!is_undefined(__inst__[$ "lastName"]))
    {
        if (!is_string(__inst__[$ "lastName"])) throw $"{__where__} :: 'lastName' expected String";
    }
    if (!is_undefined(__inst__[$ "password"]))
    {
        if (!is_string(__inst__[$ "password"])) throw $"{__where__} :: 'password' expected String";
    }
    if (!is_undefined(__inst__[$ "level"]))
    {
        ElementsUserCreateRequestLevel_validate(__inst__[$ "level"], $"{__where__} :: 'level'");
    }
    if (!is_undefined(__inst__[$ "profiles"]))
    {
        if (!is_array(__inst__[$ "profiles"])) throw $"{__where__} :: 'profiles' expected Array<ElementsCreateProfileSignupRequest>";
    }
    if (!is_undefined(__inst__[$ "autoCreateProfileApplicationNameOrId"]))
    {
        if (!is_string(__inst__[$ "autoCreateProfileApplicationNameOrId"])) throw $"{__where__} :: 'autoCreateProfileApplicationNameOrId' expected String";
    }
}

/**
 * @func ElementsUserCreateRequestLevel_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserCreateRequestLevel_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserCreateRequestLevel_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UserCreateRequestLevel' expected String";
    switch (__inst__)
    {
        case "UNPRIVILEGED":
            break;
        case "USER":
            break;
        case "SUPERUSER":
            break;
        default:
            throw $"{__where__} :: 'UserCreateRequestLevel' invalid UserCreateRequestLevel '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUserCreateResponse_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserCreateResponse_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserCreateResponse_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUserCreateResponse";

    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "name"]))
    {
        if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    }
    if (!is_undefined(__inst__[$ "email"]))
    {
        if (!is_string(__inst__[$ "email"])) throw $"{__where__} :: 'email' expected String";
    }
    if (!is_undefined(__inst__[$ "firstName"]))
    {
        if (!is_string(__inst__[$ "firstName"])) throw $"{__where__} :: 'firstName' expected String";
    }
    if (!is_undefined(__inst__[$ "lastName"]))
    {
        if (!is_string(__inst__[$ "lastName"])) throw $"{__where__} :: 'lastName' expected String";
    }
    if (!is_undefined(__inst__[$ "level"]))
    {
        ElementsUserCreateResponseLevel_validate(__inst__[$ "level"], $"{__where__} :: 'level'");
    }
    if (!is_undefined(__inst__[$ "active"]))
    {
        if (!(is_bool(__inst__[$ "active"]) || __inst__[$ "active"] == 0 || __inst__[$ "active"] == 1)) throw $"{__where__} :: 'active' expected Bool";
    }
    if (!is_undefined(__inst__[$ "facebookId"]))
    {
        if (!is_string(__inst__[$ "facebookId"])) throw $"{__where__} :: 'facebookId' expected String";
    }
    if (!is_undefined(__inst__[$ "firebaseId"]))
    {
        if (!is_string(__inst__[$ "firebaseId"])) throw $"{__where__} :: 'firebaseId' expected String";
    }
    if (!is_undefined(__inst__[$ "appleSignInId"]))
    {
        if (!is_string(__inst__[$ "appleSignInId"])) throw $"{__where__} :: 'appleSignInId' expected String";
    }
    if (!is_undefined(__inst__[$ "primaryPhoneNb"]))
    {
        if (!is_string(__inst__[$ "primaryPhoneNb"])) throw $"{__where__} :: 'primaryPhoneNb' expected String";
    }
    if (!is_undefined(__inst__[$ "profiles"]))
    {
        if (!is_array(__inst__[$ "profiles"])) throw $"{__where__} :: 'profiles' expected Array<ElementsProfile>";
    }
    if (!is_undefined(__inst__[$ "password"]))
    {
        if (!is_string(__inst__[$ "password"])) throw $"{__where__} :: 'password' expected String";
    }
    if (!is_undefined(__inst__[$ "linkedAccounts"]))
    {
        if (!is_array(__inst__[$ "linkedAccounts"])) throw $"{__where__} :: 'linkedAccounts' expected Array<String>";
    }
}

/**
 * @func ElementsUserCreateResponseLevel_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserCreateResponseLevel_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserCreateResponseLevel_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UserCreateResponseLevel' expected String";
    switch (__inst__)
    {
        case "UNPRIVILEGED":
            break;
        case "USER":
            break;
        case "SUPERUSER":
            break;
        default:
            throw $"{__where__} :: 'UserCreateResponseLevel' invalid UserCreateResponseLevel '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUserLevel_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserLevel_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserLevel_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UserLevel' expected String";
    switch (__inst__)
    {
        case "UNPRIVILEGED":
            break;
        case "USER":
            break;
        case "SUPERUSER":
            break;
        default:
            throw $"{__where__} :: 'UserLevel' invalid UserLevel '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUserLinkedAccountProfiles_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserLinkedAccountProfiles_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserLinkedAccountProfiles_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUserLinkedAccountProfiles";

}

/**
 * @func ElementsUserLinkedAccountProfilesAp_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserLinkedAccountProfilesAp_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserLinkedAccountProfilesAp_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUserLinkedAccountProfilesAp";

}

/**
 * @func ElementsUsernamePasswordSessionRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUsernamePasswordSessionRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUsernamePasswordSessionRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUsernamePasswordSessionRequest";

    if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    if (!is_string(__inst__[$ "password"])) throw $"{__where__} :: 'password' expected String";
    if (!is_undefined(__inst__[$ "profileId"]))
    {
        if (!is_string(__inst__[$ "profileId"])) throw $"{__where__} :: 'profileId' expected String";
    }
    if (!is_undefined(__inst__[$ "profileSelector"]))
    {
        if (!is_string(__inst__[$ "profileSelector"])) throw $"{__where__} :: 'profileSelector' expected String";
    }
    if (!is_undefined(__inst__[$ "applicationNameOrId"]))
    {
        if (!is_string(__inst__[$ "applicationNameOrId"])) throw $"{__where__} :: 'applicationNameOrId' expected String";
    }
}

/**
 * @func ElementsUserUid_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserUid_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserUid_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUserUid";

    if (!is_undefined(__inst__[$ "scheme"]))
    {
        if (!is_string(__inst__[$ "scheme"])) throw $"{__where__} :: 'scheme' expected String";
    }
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "userId"]))
    {
        if (!is_string(__inst__[$ "userId"])) throw $"{__where__} :: 'userId' expected String";
    }
    if (!is_undefined(__inst__[$ "verificationStatus"]))
    {
        ElementsUserUidVerificationStatus_validate(__inst__[$ "verificationStatus"], $"{__where__} :: 'verificationStatus'");
    }
}

/**
 * @func ElementsUserUidVerificationStatus_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserUidVerificationStatus_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserUidVerificationStatus_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UserUidVerificationStatus' expected String";
    switch (__inst__)
    {
        case "UNVERIFIED":
            break;
        case "PENDING":
            break;
        case "VERIFIED":
            break;
        default:
            throw $"{__where__} :: 'UserUidVerificationStatus' invalid UserUidVerificationStatus '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsUserUpdatePasswordRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserUpdatePasswordRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserUpdatePasswordRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUserUpdatePasswordRequest";

    if (!is_string(__inst__[$ "oldPassword"])) throw $"{__where__} :: 'oldPassword' expected String";
    if (!is_string(__inst__[$ "newPassword"])) throw $"{__where__} :: 'newPassword' expected String";
    if (!is_undefined(__inst__[$ "profileId"]))
    {
        if (!is_string(__inst__[$ "profileId"])) throw $"{__where__} :: 'profileId' expected String";
    }
}

/**
 * @func ElementsUserUpdateRequest_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserUpdateRequest_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserUpdateRequest_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsUserUpdateRequest";

    if (!is_string(__inst__[$ "name"])) throw $"{__where__} :: 'name' expected String";
    if (!is_string(__inst__[$ "email"])) throw $"{__where__} :: 'email' expected String";
    ElementsUserUpdateRequestLevel_validate(__inst__[$ "level"], $"{__where__} :: 'level'");
    if (!is_undefined(__inst__[$ "primaryPhoneNb"]))
    {
        if (!is_string(__inst__[$ "primaryPhoneNb"])) throw $"{__where__} :: 'primaryPhoneNb' expected String";
    }
    if (!is_undefined(__inst__[$ "firstName"]))
    {
        if (!is_string(__inst__[$ "firstName"])) throw $"{__where__} :: 'firstName' expected String";
    }
    if (!is_undefined(__inst__[$ "lastName"]))
    {
        if (!is_string(__inst__[$ "lastName"])) throw $"{__where__} :: 'lastName' expected String";
    }
    if (!is_undefined(__inst__[$ "password"]))
    {
        if (!is_string(__inst__[$ "password"])) throw $"{__where__} :: 'password' expected String";
    }
}

/**
 * @func ElementsUserUpdateRequestLevel_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsUserUpdateRequestLevel_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsUserUpdateRequestLevel_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'UserUpdateRequestLevel' expected String";
    switch (__inst__)
    {
        case "UNPRIVILEGED":
            break;
        case "USER":
            break;
        case "SUPERUSER":
            break;
        default:
            throw $"{__where__} :: 'UserUpdateRequestLevel' invalid UserUpdateRequestLevel '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsVault_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsVault_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsVault_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsVault";

    ElementsUser_validate(__inst__[$ "user"], $"{__where__} :: 'user'");
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    ElementsVaultKey_validate(__inst__[$ "key"], $"{__where__} :: 'key'");
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
}

/**
 * @func ElementsVaultKey_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsVaultKey_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsVaultKey_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsVaultKey";

    ElementsVaultKeyAlgorithm_validate(__inst__[$ "algorithm"], $"{__where__} :: 'algorithm'");
    if (!is_string(__inst__[$ "publicKey"])) throw $"{__where__} :: 'publicKey' expected String";
    if (!is_string(__inst__[$ "privateKey"])) throw $"{__where__} :: 'privateKey' expected String";
    if (!is_undefined(__inst__[$ "encrypted"]))
    {
        if (!(is_bool(__inst__[$ "encrypted"]) || __inst__[$ "encrypted"] == 0 || __inst__[$ "encrypted"] == 1)) throw $"{__where__} :: 'encrypted' expected Bool";
    }
    if (!is_undefined(__inst__[$ "encryption"]))
    {
        ElementsVaultKeyEncryption_validate(__inst__[$ "encryption"], $"{__where__} :: 'encryption'");
    }
}

/**
 * @func ElementsVaultKeyAlgorithm_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsVaultKeyAlgorithm_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsVaultKeyAlgorithm_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'VaultKeyAlgorithm' expected String";
    switch (__inst__)
    {
        case "RSA_256":
            break;
        case "RSA_384":
            break;
        case "RSA_512":
            break;
        default:
            throw $"{__where__} :: 'VaultKeyAlgorithm' invalid VaultKeyAlgorithm '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsVaultKeyEncryption_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsVaultKeyEncryption_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsVaultKeyEncryption_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsVaultKeyEncryption";

}

/**
 * @func ElementsVersion_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsVersion_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsVersion_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsVersion";

    if (!is_undefined(__inst__[$ "version"]))
    {
        if (!is_string(__inst__[$ "version"])) throw $"{__where__} :: 'version' expected String";
    }
    if (!is_undefined(__inst__[$ "revision"]))
    {
        if (!is_string(__inst__[$ "revision"])) throw $"{__where__} :: 'revision' expected String";
    }
    if (!is_undefined(__inst__[$ "timestamp"]))
    {
        if (!is_string(__inst__[$ "timestamp"])) throw $"{__where__} :: 'timestamp' expected String";
    }
}

/**
 * @func ElementsWallet_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsWallet_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsWallet_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsWallet";

    ElementsUser_validate(__inst__[$ "user"], $"{__where__} :: 'user'");
    ElementsVault_validate(__inst__[$ "vault"], $"{__where__} :: 'vault'");
    if (!is_string(__inst__[$ "displayName"])) throw $"{__where__} :: 'displayName' expected String";
    ElementsWalletApi_validate(__inst__[$ "api"], $"{__where__} :: 'api'");
    if (!is_array(__inst__[$ "networks"])) throw $"{__where__} :: 'networks' expected Array<ElementsWalletNetworksItem>";
    if (!is_array(__inst__[$ "accounts"])) throw $"{__where__} :: 'accounts' expected Array<ElementsWalletAccount>";
    if (!is_undefined(__inst__[$ "id"]))
    {
        if (!is_string(__inst__[$ "id"])) throw $"{__where__} :: 'id' expected String";
    }
    if (!is_undefined(__inst__[$ "preferredAccount"]))
    {
        if (!is_numeric(__inst__[$ "preferredAccount"])) throw $"{__where__} :: 'preferredAccount' expected Real";
    }
}

/**
 * @func ElementsWalletAccount_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsWalletAccount_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsWalletAccount_validate";

    if (!is_struct(__inst__)) throw $"{__where__} :: expected Struct.ElementsWalletAccount";

    if (!is_string(__inst__[$ "address"])) throw $"{__where__} :: 'address' expected String";
    if (!is_undefined(__inst__[$ "privateKey"]))
    {
        if (!is_string(__inst__[$ "privateKey"])) throw $"{__where__} :: 'privateKey' expected String";
    }
    if (!is_undefined(__inst__[$ "encrypted"]))
    {
        if (!(is_bool(__inst__[$ "encrypted"]) || __inst__[$ "encrypted"] == 0 || __inst__[$ "encrypted"] == 1)) throw $"{__where__} :: 'encrypted' expected Bool";
    }
}

/**
 * @func ElementsWalletApi_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsWalletApi_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsWalletApi_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'WalletApi' expected String";
    switch (__inst__)
    {
        case "NEO":
            break;
        case "ETHEREUM":
            break;
        case "SOLANA":
            break;
        case "FLOW":
            break;
        case "NEAR":
            break;
        default:
            throw $"{__where__} :: 'WalletApi' invalid WalletApi '{__inst__}'";
            break;
    }
}

/**
 * @func ElementsWalletNetworksItem_validate(__inst__, __where__)
 * @param {Any} __inst__ The value to be validated.
 * @param {String} [__where__] Caller location, used in error messages.
 * @ignore 
 */
function ElementsWalletNetworksItem_validate(__inst__, __where__ = _GMFUNCTION_)
{
    __where__ = $"{__where__} :: ElementsWalletNetworksItem_validate";

    if (!is_string(__inst__)) throw $"{__where__} :: 'WalletNetworksItem' expected String";
    switch (__inst__)
    {
        case "NEO":
            break;
        case "NEO_TEST":
            break;
        case "ETHEREUM":
            break;
        case "ETHEREUM_TEST":
            break;
        case "BSC":
            break;
        case "BSC_TEST":
            break;
        case "POLYGON":
            break;
        case "POLYGON_TEST":
            break;
        case "SOLANA":
            break;
        case "SOLANA_TEST":
            break;
        case "FLOW":
            break;
        case "FLOW_TEST":
            break;
        case "NEAR":
            break;
        case "NEAR_TEST":
            break;
        default:
            throw $"{__where__} :: 'WalletNetworksItem' invalid WalletNetworksItem '{__inst__}'";
            break;
    }
}

// #####################################################################
// # Exports
// #####################################################################

#export ElementsAccessPermissions, ElementsAdvancedInventoryItemQuantityAdjustment, ElementsApplication, ElementsApplicationAttributes, ElementsApplicationConfiguration, ElementsAuthScheme, ElementsBodyPart, ElementsBodyPartHeaders, ElementsBodyPartParameterizedHeaders, ElementsBuildIndexRequest, ElementsCallbackDefinition, ElementsCodegenRequest, ElementsCompletePasswordResetRequest, ElementsContentDisposition, ElementsContentDispositionParameters, ElementsCreateAdvancedInventoryItemRequest, ElementsCreateAppleIapReceipt, ElementsCreateApplicationRequest, ElementsCreateApplicationRequestAttributes, ElementsCreateAuthSchemeRequest, ElementsCreateAuthSchemeResponse, ElementsCreateDeploymentRequest, ElementsCreateDistinctInventoryItemRequest, ElementsCreateDistinctInventoryItemRequestMetadata, ElementsCreateElementDeploymentRequest, ElementsCreateElementDeploymentRequestPathAttributes, ElementsCreateElementDeploymentRequestPathAttributesAp, ElementsCreateElementDeploymentRequestPathSpiBuiltins, ElementsCreateElementDeploymentRequestPathSpiClassPaths, ElementsCreateFollowerRequest, ElementsCreateGooglePlayIapReceipt, ElementsCreateItemRequest, ElementsCreateItemRequestMetadata, ElementsCreateLargeObjectFromUrlRequest, ElementsCreateLargeObjectRequest, ElementsCreateLeaderboardRequest, ElementsCreateMetadataRequest, ElementsCreateMetadataRequestMetadata, ElementsCreateMetadataSpecRequest, ElementsCreateMissionRequest, ElementsCreateMissionRequestMetadata, ElementsCreateMultipartLargeObjectBody, ElementsCreateOrUpdateOAuth2AuthSchemeRequest, ElementsCreateOrUpdateOAuth2AuthSchemeResponse, ElementsCreateOrUpdateOidcAuthSchemeRequest, ElementsCreateOrUpdateOidcAuthSchemeResponse, ElementsCreateOrUpdateOidcProviderConfigurationRequest, ElementsCreateOrUpdateOidcProviderConfigurationRequestExtraAuthorizeParams, ElementsCreateOrUpdateOidcProviderConfigurationResponse, ElementsCreateProfileRequest, ElementsCreateProfileRequestMetadata, ElementsCreateProfileSignupRequest, ElementsCreateProgressRequest, ElementsCreateReceiptRequest, ElementsCreateSaveDataDocumentRequest, ElementsCreateScheduleEventRequest, ElementsCreateScheduleRequest, ElementsCreateSimpleInventoryItemRequest, ElementsCreateSmartContractRequest, ElementsCreateSmartContractRequestAddresses, ElementsCreateSmartContractRequestMetadata, ElementsCreateSteamIapReceipt, ElementsCreateVaultRequest, ElementsCreateWalletRequest, ElementsCreateWalletRequestAccount, ElementsDatabaseHealthStatus, ElementsDeployment, ElementsDiscoveryHealthStatus, ElementsDistinctInventoryItem, ElementsDistinctInventoryItemMetadata, ElementsEditorLayout, ElementsEditorSchema, ElementsElementArtifactRepository, ElementsElementContainerStatus, ElementsElementDefaultAttributeRecord, ElementsElementDefinitionMetadata, ElementsElementDependencyMetadata, ElementsElementDeployment, ElementsElementDeploymentPathAttributes, ElementsElementDeploymentPathAttributesAp, ElementsElementDeploymentPathSpiBuiltins, ElementsElementDeploymentPathSpiClassPaths, ElementsElementEventConsumerMetadata, ElementsElementEventProducerMetadata, ElementsElementFeature, ElementsElementManifestMetadata, ElementsElementManifestRecord, ElementsElementMetadata, ElementsElementMetadataAttributes, ElementsElementPackageDefinition, ElementsElementPackageDefinitionPathAttributes, ElementsElementPackageDefinitionPathAttributesAp, ElementsElementPackageDefinitionPathSpiBuiltins, ElementsElementPackageDefinitionPathSpiClassPaths, ElementsElementPackageRecord, ElementsElementPathDefinition, ElementsElementPathDefinitionAttributes, ElementsElementPathRecordMetadata, ElementsElementPathRecordMetadataAttributes, ElementsElementRequiredAttributeRecord, ElementsElementRuntimeStatus, ElementsElementRuntimeStatusElementManifests, ElementsElementServiceExportMetadata, ElementsElementServiceImplementationMetadata, ElementsElementServiceMetadata, ElementsElementServiceReference, ElementsElementSpi, ElementsEmailVerificationRequest, ElementsErrorResponse, ElementsFacebookApplicationConfiguration, ElementsFacebookIapReceipt, ElementsFCMRegistration, ElementsFirebaseApplicationConfiguration, ElementsFormDataBodyPart, ElementsFormDataBodyPartHeaders, ElementsFormDataBodyPartParameterizedHeaders, ElementsFormDataContentDisposition, ElementsFormDataContentDispositionParameters, ElementsFriend, ElementsGooglePlayApplicationConfiguration, ElementsGooglePlayApplicationConfigurationJsonKey, ElementsHealthStatus, ElementsIndexMetadataObject, ElementsIndexPlanObject, ElementsIndexPlanStepObject, ElementsInspectUploadedElmBody, ElementsInstanceHealthStatus, ElementsInventoryItem, ElementsInviteViaPhonesRequest, ElementsInviteViaPhonesResponse, ElementsInvokerHealthStatus, ElementsIosApplicationConfiguration, ElementsItem, ElementsItemLedgerEntry, ElementsItemLedgerEntryMetadataAfter, ElementsItemLedgerEntryMetadataBefore, ElementsItemMetadata, ElementsJsonSchema, ElementsJsonSchemaProperties, ElementsJsonSchemaProperty, ElementsJWK, ElementsLargeObject, ElementsLargeObjectReference, ElementsLeaderboard, ElementsLinkEmailPasswordRequest, ElementsLinkUsernamePasswordRequest, ElementsMatchmakingApplicationConfiguration, ElementsMatchmakingApplicationConfigurationMetadata, ElementsMediaType, ElementsMediaTypeParameters, ElementsMessageBodyWorkers, ElementsMetadata, ElementsMetadataMetadata, ElementsMetadataSpec, ElementsMetadataSpecProperty, ElementsMission, ElementsMissionMetadata, ElementsMockSessionCreation, ElementsMockSessionRequest, ElementsMultiMatch, ElementsMultiMatchMetadata, ElementsMultiPart, ElementsMultiPartHeaders, ElementsMultiPartParameterizedHeaders, ElementsMultivaluedMapStringParameterizedHeader, ElementsMultivaluedMapStringString, ElementsOAuth2AuthScheme, ElementsOAuth2RequestKeyValue, ElementsOAuth2SessionRequest, ElementsOauth2SessionRequestRequestHeaders, ElementsOauth2SessionRequestRequestParameters, ElementsOculusApplicationConfiguration, ElementsOculusIapConsumeResponse, ElementsOculusIapReceipt, ElementsOculusIapVerifyReceiptResponse, ElementsOidcAuthScheme, ElementsOidcLoginAttemptConfirmRequest, ElementsOidcLoginAttemptRequest, ElementsOidcLoginAttemptStatusResponse, ElementsOidcProviderConfiguration, ElementsOidcProviderConfigurationExtraAuthorizeParams, ElementsOidcSessionRequest, ElementsPaginationApplication, ElementsPaginationApplicationConfiguration, ElementsPaginationAuthScheme, ElementsPaginationDeployment, ElementsPaginationDistinctInventoryItem, ElementsPaginationElementDeployment, ElementsPaginationFacebookIapReceipt, ElementsPaginationFriend, ElementsPaginationIndexPlanObject, ElementsPaginationInventoryItem, ElementsPaginationItem, ElementsPaginationItemLedgerEntry, ElementsPaginationLargeObject, ElementsPaginationLeaderboard, ElementsPaginationMetadata, ElementsPaginationMetadataSpec, ElementsPaginationMission, ElementsPaginationMultiMatch, ElementsPaginationOAuth2AuthScheme, ElementsPaginationOculusIapReceipt, ElementsPaginationOidcAuthScheme, ElementsPaginationOidcProviderConfiguration, ElementsPaginationProductBundle, ElementsPaginationProductSkuSchema, ElementsPaginationProfile, ElementsPaginationProgress, ElementsPaginationRank, ElementsPaginationReceipt, ElementsPaginationRewardIssuance, ElementsPaginationSaveDataDocument, ElementsPaginationSchedule, ElementsPaginationScheduleEvent, ElementsPaginationSmartContract, ElementsPaginationUser, ElementsPaginationVault, ElementsPaginationWallet, ElementsParameterizedHeader, ElementsParameterizedHeaderParameters, ElementsPasswordResetRequest, ElementsPhoneMatchedInvitation, ElementsProductBundle, ElementsProductBundleMetadata, ElementsProductBundleReward, ElementsProductSkuSchema, ElementsProfile, ElementsProfileMetadata, ElementsProgress, ElementsProgressMissionInfo, ElementsProgressMissionInfoMetadata, ElementsProgressRow, ElementsProviders, ElementsPSNApplicationConfiguration, ElementsRank, ElementsRankRow, ElementsReceipt, ElementsReward, ElementsRewardIssuance, ElementsRewardIssuanceMetadata, ElementsRewardIssuanceRedemptionResult, ElementsRewardMetadata, ElementsRoutingHealthStatus, ElementsSaveDataDocument, ElementsSchedule, ElementsScheduleEvent, ElementsScore, ElementsSession, ElementsSessionCreation, ElementsSimpleInventoryItemQuantityAdjustment, ElementsSmartContract, ElementsSmartContractAddress, ElementsSmartContractAddresses, ElementsSmartContractMetadata, ElementsSteamApplicationConfiguration, ElementsStep, ElementsStepMetadata, ElementsSubjectRequest, ElementsSubjects, ElementsSystemVersion, ElementsTabulationProgressRow, ElementsTabulationRankRow, ElementsUniqueCode, ElementsUpdateApplicationRequest, ElementsUpdateApplicationRequestAttributes, ElementsUpdateAuthSchemeRequest, ElementsUpdateAuthSchemeResponse, ElementsUpdateDeploymentRequest, ElementsUpdateDistinctInventoryItemRequest, ElementsUpdateDistinctInventoryItemRequestMetadata, ElementsUpdateElementDeploymentRequest, ElementsUpdateElementDeploymentRequestPathAttributes, ElementsUpdateElementDeploymentRequestPathAttributesAp, ElementsUpdateElementDeploymentRequestPathSpiBuiltins, ElementsUpdateElementDeploymentRequestPathSpiClassPaths, ElementsUpdateInventoryItemRequest, ElementsUpdateItemRequest, ElementsUpdateItemRequestMetadata, ElementsUpdateLargeObjectContentsBody, ElementsUpdateLargeObjectRequest, ElementsUpdateLeaderboardRequest, ElementsUpdateMetadataRequest, ElementsUpdateMetadataRequestMetadata, ElementsUpdateMetadataSpecRequest, ElementsUpdateMissionRequest, ElementsUpdateMissionRequestMetadata, ElementsUpdateProfileImageRequest, ElementsUpdateProfileRequest, ElementsUpdateProfileRequestMetadata, ElementsUpdateProgressRequest, ElementsUpdateSaveDataDocumentRequest, ElementsUpdateScheduleEventRequest, ElementsUpdateScheduleRequest, ElementsUpdateSmartContractRequest, ElementsUpdateSmartContractRequestAddresses, ElementsUpdateSmartContractRequestMetadata, ElementsUpdateVaultRequest, ElementsUpdateWalletRequest, ElementsUser, ElementsUserCreateRequest, ElementsUserCreateResponse, ElementsUserLinkedAccountProfiles, ElementsUserLinkedAccountProfilesAp, ElementsUsernamePasswordSessionRequest, ElementsUserUid, ElementsUserUpdatePasswordRequest, ElementsUserUpdateRequest, ElementsVault, ElementsVaultKey, ElementsVaultKeyEncryption, ElementsVersion, ElementsWallet, ElementsWalletAccount
