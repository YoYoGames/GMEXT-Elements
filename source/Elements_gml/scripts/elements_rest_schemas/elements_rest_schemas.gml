// #####################################################################
// # Schema Definitions (auto-generated, DO NOT EDIT)
// #####################################################################

/**
 * @func ElementsMetadataSpecProperty()
 * @param {String} _name The unique name of the field
 * @param {String} _display_name The display name of the field
 * @param {String} _type The field type (one of: STRING | NUMBER | BOOLEAN | ARRAY | ENUM | OBJECT | TAGS)
 * @param {Real} _required True if the field is required.
 * @param {String} _placeholder The placeholder description when displaying in the editor.
 * @param {Struct} _default_value The default description, null if left unspecified.
 * @param {Array[Struct.ElementsMetadataSpecProperty]} _properties
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
	
	static __uid = 2406883295;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMetadataSpecProperty.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_undefined(required) && !is_real(required)) show_error($"{_where} :: required expected bool", true);
		if (!is_undefined(placeholder) && !is_string(placeholder)) show_error($"{_where} :: placeholder expected string", true);
		if (!is_undefined(defaultValue) && !is_struct(defaultValue)) show_error($"{_where} :: defaultValue expected any", true);
		if (!is_undefined(properties) && !is_array(properties)) show_error($"{_where} :: properties expected ElementsMetadataSpecProperty", true);
	};
}

/**
 * @func ElementsMetadataSpec()
 * @param {String} _id The unique ID of the schema itself.
 * @param {String} _name The Name of the schema.
 * @param {String} _type The type of the tab itself. (one of: STRING | NUMBER | BOOLEAN | ARRAY | ENUM | OBJECT | TAGS)
 * @param {Array[Struct.ElementsMetadataSpecProperty]} _properties The tabs of the metadata spec.
 */
function ElementsMetadataSpec(_id, _name, _type, _properties) constructor
{
	id = _id;
	name = _name;
	type = _type;
	properties = _properties;
	
	static __uid = 2450729354;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMetadataSpec.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_array(properties)) show_error($"{_where} :: properties expected ElementsMetadataSpecProperty", true);
	};
}

/**
 * @func ElementsItem()
 * @param {String} _name
 * @param {String} _display_name
 * @param {String} _description
 * @param {String} _category  (one of: FUNGIBLE | DISTINCT)
 * @param {String} _id
 * @param {Array[String]} _tags
 * @param {Struct.ElementsMetadataSpec} _metadata_spec Represents a spec for metadata.
 * @param {Struct} _metadata
 * @param {Real} _public_visible
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
	
	static __uid = 4093207011;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsItem.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_string(category)) show_error($"{_where} :: category expected string", true);
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(tags) && !is_array(tags)) show_error($"{_where} :: tags expected string", true);
		if (!is_undefined(metadataSpec))
		{
			if (!is_struct(metadataSpec) || metadataSpec[$ "__uid"] != 2450729354) show_error($"{_where} :: metadataSpec expected ElementsMetadataSpec", true);
			metadataSpec.validate(_where);
		}
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
		if (!is_undefined(publicVisible) && !is_real(publicVisible)) show_error($"{_where} :: publicVisible expected bool", true);
	};
}

/**
 * @func ElementsUser()
 * @param {String} _id The user's database assigned unique ID.
 * @param {String} _level The user's access level. (one of: UNPRIVILEGED | USER | SUPERUSER)
 * @param {String} _name A unique name for the user.
 * @param {String} _first_name The user's first name
 * @param {String} _last_name The user's last name
 * @param {String} _email The user's email.
 * @param {String} _primary_phone_nb The user's phone number.
 * @param {Array[String]} _linked_accounts List of linked account or auth scheme names.
 */
function ElementsUser(_id, _level, _name = undefined, _first_name = undefined, _last_name = undefined, _email = undefined, _primary_phone_nb = undefined, _linked_accounts = undefined) constructor
{
	id = _id;
	level = _level;
	name = _name;
	firstName = _first_name;
	lastName = _last_name;
	email = _email;
	primaryPhoneNb = _primary_phone_nb;
	linkedAccounts = _linked_accounts;
	
	static __uid = 3659328047;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUser.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(level)) show_error($"{_where} :: level expected string", true);
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(firstName) && !is_string(firstName)) show_error($"{_where} :: firstName expected string", true);
		if (!is_undefined(lastName) && !is_string(lastName)) show_error($"{_where} :: lastName expected string", true);
		if (!is_undefined(email) && !is_string(email)) show_error($"{_where} :: email expected string", true);
		if (!is_undefined(primaryPhoneNb) && !is_string(primaryPhoneNb)) show_error($"{_where} :: primaryPhoneNb expected string", true);
		if (!is_undefined(linkedAccounts) && !is_array(linkedAccounts)) show_error($"{_where} :: linkedAccounts expected string", true);
	};
}

/**
 * @func ElementsRewardIssuance()
 * @param {String} _id The unique ID of the issuance.
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {String} _state The state of the reward. On creation, this is automatically assigned to be ISSUED. If the current value of the state is REDEEMED, then the state is no longer allowed to be updated. This valuemay not be directly modified--the redeem DAO method should be used instead to perform the redemption process. (one of: ISSUED | REDEEMED)
 * @param {String} _context A generic String used to uniquely identify the RewardIssuance issuance. If the RewardIssuance is created by the client, this value must be specified to prevent erroneous duplicate issuances. E.g. if the client successfully submits an issuance but fails to receive the response, the client is expected to submit a new issuance with the same context string. Similarly, the client application should have safeguards in place in the event of a crash to prevent duplicate submissions: e.g. ensuring that the context string is unchanged when performing multiple issuances of the same RewardIssuance. If the RewardIssuance is generated by the server, this will be defined automatically. The context cannot be updated after creation. Note that an context defined via the API should not begin with 'server.' as that is a protected namespace.
 * @param {String} _type Defines whether multiple issuances for the given user+reward+context may occur. If the type is set to NON_PERSISTENT, at most one ISSUED RewardIssuance may exist in the server at a time for a given user and context. If the type is set to PERSISTENT, at most one ISSUED or REDEEMED RewardIssuance may exist in the server for a given user and context, i.e. once a PERSISTENT RewardIssuance has been submitted, a new one may never be submitted and will be rejected by the server. Note that this value cannot be updated. By default, this will be set to NON_PERSISTENT. (one of: PERSISTENT | NON_PERSISTENT)
 * @param {Struct.ElementsItem} _item The Item to be issued upon redemption.
 * @param {Real} _item_quantity The amount of Items to be set/added to the InventoryItem upon redemption.
 * @param {String} _source Identifies the source of the issuance, e.g. 'Client', 'IAP', 'Leaderboard'. This may be specified manually by the client if desired. Note that this value cannot be updated.
 * @param {Struct} _metadata Metadata for the issuance. May be optionally defined by the client on creation. If the source is a server-side value, then a predefined structure will always be followed that provides additional information as to the source of the issuance (e.g. mission progress/step information).
 * @param {Array[String]} _tags The tags used to categorize this Reward Issuance.
 * @param {Real} _expiration_timestamp Optionally define when the issuance should expire. This value may be updated to extend when the expiration occurs. When set, this value must be greater than the current time on the server.Note that the record may not actually be deleted for up to sixty seconds after the time noted in thetimestamp.
 * @param {String} _uuid Internal unique identifier generated and assigned on creation.
 */
function ElementsRewardIssuance(_id, _user, _state, _context, _type, _item = undefined, _item_quantity = undefined, _source = undefined, _metadata = undefined, _tags = undefined, _expiration_timestamp = undefined, _uuid = undefined) constructor
{
	id = _id;
	user = _user;
	state = _state;
	context = _context;
	type = _type;
	item = _item;
	itemQuantity = _item_quantity;
	source = _source;
	metadata = _metadata;
	tags = _tags;
	expirationTimestamp = _expiration_timestamp;
	uuid = _uuid;
	
	static __uid = 3284773420;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsRewardIssuance.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_struct(user) || user[$ "__uid"] != 3659328047) show_error($"{_where} :: user expected ElementsUser", true);
		user.validate(_where);
		if (!is_string(state)) show_error($"{_where} :: state expected string", true);
		if (!is_string(context)) show_error($"{_where} :: context expected string", true);
		if (!is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_undefined(item))
		{
			if (!is_struct(item) || item[$ "__uid"] != 4093207011) show_error($"{_where} :: item expected ElementsItem", true);
			item.validate(_where);
		}
		if (!is_undefined(itemQuantity) && !is_real(itemQuantity)) show_error($"{_where} :: itemQuantity expected int32", true);
		if (!is_undefined(source) && !is_string(source)) show_error($"{_where} :: source expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
		if (!is_undefined(tags) && !is_array(tags)) show_error($"{_where} :: tags expected string", true);
		if (!is_undefined(expirationTimestamp) && !is_real(expirationTimestamp)) show_error($"{_where} :: expirationTimestamp expected int64", true);
		if (!is_undefined(uuid) && !is_string(uuid)) show_error($"{_where} :: uuid expected string", true);
	};
}

/**
 * @func ElementsCreateAppleIapReceipt()
 * @param {String} _receipt_data The base64-encoded string of the raw IAP receipt.
 * @param {String} _create_apple_iap_receipt_environment  (one of: SANDBOX | PRODUCTION)
 */
function ElementsCreateAppleIapReceipt(_receipt_data, _create_apple_iap_receipt_environment = undefined) constructor
{
	receiptData = _receipt_data;
	createAppleIapReceiptEnvironment = _create_apple_iap_receipt_environment;
	
	static __uid = 1514807530;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateAppleIapReceipt.validate";
		
		if (!is_string(receiptData)) show_error($"{_where} :: receiptData expected string", true);
		if (!is_undefined(createAppleIapReceiptEnvironment) && !is_string(createAppleIapReceiptEnvironment)) show_error($"{_where} :: createAppleIapReceiptEnvironment expected string", true);
	};
}

/**
 * @func ElementsApplicationConfiguration()
 * @param {String} _id The database assigned ID for the application configuration.
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {String} _description
 * @param {Struct.ElementsApplication} _parent
 */
function ElementsApplicationConfiguration(_id, _name, _type, _description, _parent) constructor
{
	id = _id;
	name = _name;
	type = _type;
	description = _description;
	parent = _parent;
	
	static __uid = 3986946320;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsApplicationConfiguration.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_struct(parent) || parent[$ "__uid"] != 1239862290) show_error($"{_where} :: parent expected ElementsApplication", true);
		parent.validate(_where);
	};
}

/**
 * @func ElementsApplication()
 * @param {String} _name
 * @param {String} _id
 * @param {String} _description
 * @param {String} _git_branch
 * @param {String} _script_repo_url
 * @param {String} _http_documentation_url
 * @param {String} _http_documentation_ui_url
 * @param {String} _http_tunnel_endpoint_url
 * @param {Struct} _attributes
 * @param {Struct.ElementsApplicationConfiguration} _application_configuration
 */
function ElementsApplication(_name, _id = undefined, _description = undefined, _git_branch = undefined, _script_repo_url = undefined, _http_documentation_url = undefined, _http_documentation_ui_url = undefined, _http_tunnel_endpoint_url = undefined, _attributes = undefined, _application_configuration = undefined) constructor
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
	
	static __uid = 1239862290;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsApplication.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(description) && !is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_undefined(gitBranch) && !is_string(gitBranch)) show_error($"{_where} :: gitBranch expected string", true);
		if (!is_undefined(scriptRepoUrl) && !is_string(scriptRepoUrl)) show_error($"{_where} :: scriptRepoUrl expected string", true);
		if (!is_undefined(httpDocumentationUrl) && !is_string(httpDocumentationUrl)) show_error($"{_where} :: httpDocumentationUrl expected string", true);
		if (!is_undefined(httpDocumentationUiUrl) && !is_string(httpDocumentationUiUrl)) show_error($"{_where} :: httpDocumentationUiUrl expected string", true);
		if (!is_undefined(httpTunnelEndpointUrl) && !is_string(httpTunnelEndpointUrl)) show_error($"{_where} :: httpTunnelEndpointUrl expected string", true);
		if (!is_undefined(attributes) && !is_struct(attributes)) show_error($"{_where} :: attributes expected any", true);
		if (!is_undefined(applicationConfiguration))
		{
			if (!is_struct(applicationConfiguration) || applicationConfiguration[$ "__uid"] != 3986946320) show_error($"{_where} :: applicationConfiguration expected ElementsApplicationConfiguration", true);
			applicationConfiguration.validate(_where);
		}
	};
}

/**
 * @func ElementsPaginationApplicationConfiguration()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsApplicationConfiguration]} _objects
 */
function ElementsPaginationApplicationConfiguration(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 543650528;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationApplicationConfiguration.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsApplicationConfiguration", true);
	};
}

/**
 * @func ElementsCreateApplicationRequest()
 * @param {String} _name
 * @param {String} _description
 * @param {Struct} _attributes
 */
function ElementsCreateApplicationRequest(_name, _description = undefined, _attributes = undefined) constructor
{
	name = _name;
	description = _description;
	attributes = _attributes;
	
	static __uid = 1130871979;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateApplicationRequest.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(description) && !is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_undefined(attributes) && !is_struct(attributes)) show_error($"{_where} :: attributes expected any", true);
	};
}

/**
 * @func ElementsPaginationApplication()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsApplication]} _objects
 */
function ElementsPaginationApplication(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 3594980706;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationApplication.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsApplication", true);
	};
}

/**
 * @func ElementsUpdateApplicationRequest()
 * @param {String} _name
 * @param {String} _description
 * @param {Struct} _attributes
 */
function ElementsUpdateApplicationRequest(_name, _description = undefined, _attributes = undefined) constructor
{
	name = _name;
	description = _description;
	attributes = _attributes;
	
	static __uid = 1097006730;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateApplicationRequest.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(description) && !is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_undefined(attributes) && !is_struct(attributes)) show_error($"{_where} :: attributes expected any", true);
	};
}

/**
 * @func ElementsFacebookApplicationConfiguration()
 * @param {String} _id The database assigned ID for the application configuration.
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {String} _description
 * @param {Struct.ElementsApplication} _parent
 * @param {String} _application_id The AppID as it appears in the Facebook Developer Console
 * @param {String} _application_secret The App Secret as it appears in the Facebook Developer Console
 * @param {Array[String]} _builtin_application_permissions The set of built-in permissions connected clients will need to request.
 */
function ElementsFacebookApplicationConfiguration(_id, _name, _type, _description, _parent, _application_id, _application_secret, _builtin_application_permissions = undefined) constructor
{
	id = _id;
	name = _name;
	type = _type;
	description = _description;
	parent = _parent;
	applicationId = _application_id;
	applicationSecret = _application_secret;
	builtinApplicationPermissions = _builtin_application_permissions;
	
	static __uid = 634460580;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsFacebookApplicationConfiguration.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_struct(parent) || parent[$ "__uid"] != 1239862290) show_error($"{_where} :: parent expected ElementsApplication", true);
		parent.validate(_where);
		if (!is_string(applicationId)) show_error($"{_where} :: applicationId expected string", true);
		if (!is_string(applicationSecret)) show_error($"{_where} :: applicationSecret expected string", true);
		if (!is_undefined(builtinApplicationPermissions) && !is_array(builtinApplicationPermissions)) show_error($"{_where} :: builtinApplicationPermissions expected string", true);
	};
}

/**
 * @func ElementsFirebaseApplicationConfiguration()
 * @param {String} _id The database assigned ID for the application configuration.
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {String} _description
 * @param {Struct.ElementsApplication} _parent
 * @param {String} _project_id The contents of the serviceAccountCredentials.json file.
 * @param {String} _service_account_credentials The contents of the serviceAccountCredentials.json file.
 */
function ElementsFirebaseApplicationConfiguration(_id, _name, _type, _description, _parent, _project_id, _service_account_credentials) constructor
{
	id = _id;
	name = _name;
	type = _type;
	description = _description;
	parent = _parent;
	projectId = _project_id;
	serviceAccountCredentials = _service_account_credentials;
	
	static __uid = 1131823289;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsFirebaseApplicationConfiguration.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_struct(parent) || parent[$ "__uid"] != 1239862290) show_error($"{_where} :: parent expected ElementsApplication", true);
		parent.validate(_where);
		if (!is_string(projectId)) show_error($"{_where} :: projectId expected string", true);
		if (!is_string(serviceAccountCredentials)) show_error($"{_where} :: serviceAccountCredentials expected string", true);
	};
}

/**
 * @func ElementsProductBundleReward()
 * @param {String} _item_id The id of the item to be rewarded.
 * @param {Real} _quantity The quantity of the item to be rewarded.
 */
function ElementsProductBundleReward(_item_id, _quantity) constructor
{
	itemId = _item_id;
	quantity = _quantity;
	
	static __uid = 35224884;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsProductBundleReward.validate";
		
		if (!is_string(itemId)) show_error($"{_where} :: itemId expected string", true);
		if (!is_real(quantity)) show_error($"{_where} :: quantity expected int32", true);
	};
}

/**
 * @func ElementsProductBundle()
 * @param {String} _product_id The platform-specific unique SKU/product identifier that, when purchased, will result in the items in this product bundle to be issued to the user.
 * @param {Array[Struct.ElementsProductBundleReward]} _product_bundle_rewards The list of product bundle rewards that will be issued to the user upon purchase.
 * @param {Real} _display Whether or not the frontend should display this product bundle to end users.
 * @param {String} _display_name The title of the product bundle to display to end users.
 * @param {String} _description The description of the product bundle to display to end users.
 * @param {Struct} _metadata Application-specific metadata.
 */
function ElementsProductBundle(_product_id, _product_bundle_rewards, _display, _display_name = undefined, _description = undefined, _metadata = undefined) constructor
{
	productId = _product_id;
	productBundleRewards = _product_bundle_rewards;
	display = _display;
	displayName = _display_name;
	description = _description;
	metadata = _metadata;
	
	static __uid = 798936131;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsProductBundle.validate";
		
		if (!is_string(productId)) show_error($"{_where} :: productId expected string", true);
		if (!is_array(productBundleRewards)) show_error($"{_where} :: productBundleRewards expected ElementsProductBundleReward", true);
		if (!is_real(display)) show_error($"{_where} :: display expected bool", true);
		if (!is_undefined(displayName) && !is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_undefined(description) && !is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsGooglePlayApplicationConfiguration()
 * @param {String} _id The database assigned ID for the application configuration.
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {String} _description
 * @param {Struct.ElementsApplication} _parent
 * @param {String} _application_id
 * @param {Struct} _json_key
 * @param {Array[Struct.ElementsProductBundle]} _product_bundles The list of product bundles that may be rewarded upon successful IAP transactions.
 */
function ElementsGooglePlayApplicationConfiguration(_id, _name, _type, _description, _parent, _application_id = undefined, _json_key = undefined, _product_bundles = undefined) constructor
{
	id = _id;
	name = _name;
	type = _type;
	description = _description;
	parent = _parent;
	applicationId = _application_id;
	jsonKey = _json_key;
	productBundles = _product_bundles;
	
	static __uid = 193983205;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsGooglePlayApplicationConfiguration.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_struct(parent) || parent[$ "__uid"] != 1239862290) show_error($"{_where} :: parent expected ElementsApplication", true);
		parent.validate(_where);
		if (!is_undefined(applicationId) && !is_string(applicationId)) show_error($"{_where} :: applicationId expected string", true);
		if (!is_undefined(jsonKey) && !is_struct(jsonKey)) show_error($"{_where} :: jsonKey expected any", true);
		if (!is_undefined(productBundles) && !is_array(productBundles)) show_error($"{_where} :: productBundles expected ElementsProductBundle", true);
	};
}

/**
 * @func ElementsIosApplicationConfiguration()
 * @param {String} _id The database assigned ID for the application configuration.
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {String} _description
 * @param {Struct.ElementsApplication} _parent
 * @param {String} _application_id
 * @param {Array[Struct.ElementsProductBundle]} _product_bundles The list of product bundles that may be rewarded upon successful IAP transactions.
 */
function ElementsIosApplicationConfiguration(_id, _name, _type, _description, _parent, _application_id, _product_bundles = undefined) constructor
{
	id = _id;
	name = _name;
	type = _type;
	description = _description;
	parent = _parent;
	applicationId = _application_id;
	productBundles = _product_bundles;
	
	static __uid = 2241575037;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsIosApplicationConfiguration.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_struct(parent) || parent[$ "__uid"] != 1239862290) show_error($"{_where} :: parent expected ElementsApplication", true);
		parent.validate(_where);
		if (!is_string(applicationId)) show_error($"{_where} :: applicationId expected string", true);
		if (!is_undefined(productBundles) && !is_array(productBundles)) show_error($"{_where} :: productBundles expected ElementsProductBundle", true);
	};
}

/**
 * @func ElementsElementServiceReference()
 * @param {String} _element_name The name of the Element to reference.
 * @param {String} _service_type Specifies the type of the service within the Element. May be null.
 * @param {String} _service_name Specifies the name of the service within the Element. May be null.
 */
function ElementsElementServiceReference(_element_name, _service_type = undefined, _service_name = undefined) constructor
{
	elementName = _element_name;
	serviceType = _service_type;
	serviceName = _service_name;
	
	static __uid = 3543018996;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsElementServiceReference.validate";
		
		if (!is_string(elementName)) show_error($"{_where} :: elementName expected string", true);
		if (!is_undefined(serviceType) && !is_string(serviceType)) show_error($"{_where} :: serviceType expected string", true);
		if (!is_undefined(serviceName) && !is_string(serviceName)) show_error($"{_where} :: serviceName expected string", true);
	};
}

/**
 * @func ElementsCallbackDefinition()
 * @param {String} _method Specifies the method to invoke.
 * @param {Struct.ElementsElementServiceReference} _service Describes the matchmaker (dev.getelements.elements.sdk.dao.Matchmaker) to use for this configuration.
 */
function ElementsCallbackDefinition(_method, _service) constructor
{
	self[$ "method"] = _method;
	service = _service;
	
	static __uid = 4216241210;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCallbackDefinition.validate";
		
		if (!is_string(self[$ "method"])) show_error($"{_where} :: self[$ 'method'] expected string", true);
		if (!is_struct(service) || service[$ "__uid"] != 3543018996) show_error($"{_where} :: service expected ElementsElementServiceReference", true);
		service.validate(_where);
	};
}

/**
 * @func ElementsMatchmakingApplicationConfiguration()
 * @param {String} _id The database assigned ID for the application configuration.
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {String} _description
 * @param {Struct.ElementsApplication} _parent
 * @param {Struct.ElementsCallbackDefinition} _success Defines a script method and a module to invoke.
 * @param {Struct.ElementsElementServiceReference} _matchmaker Describes the matchmaker (dev.getelements.elements.sdk.dao.Matchmaker) to use for this configuration.
 * @param {Real} _max_profiles The maximum number of profiles that can be matched in a single match.
 * @param {Struct} _metadata The metadata for this matchmaking configuration. This will be copied to the match when it is created.
 * @param {Struct.ElementsMetadataSpec} _metadata_spec Represents a spec for metadata.
 */
function ElementsMatchmakingApplicationConfiguration(_id, _name, _type, _description, _parent, _success = undefined, _matchmaker = undefined, _max_profiles = undefined, _metadata = undefined, _metadata_spec = undefined) constructor
{
	id = _id;
	name = _name;
	type = _type;
	description = _description;
	parent = _parent;
	success = _success;
	matchmaker = _matchmaker;
	maxProfiles = _max_profiles;
	metadata = _metadata;
	metadataSpec = _metadata_spec;
	
	static __uid = 82183132;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMatchmakingApplicationConfiguration.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_struct(parent) || parent[$ "__uid"] != 1239862290) show_error($"{_where} :: parent expected ElementsApplication", true);
		parent.validate(_where);
		if (!is_undefined(success))
		{
			if (!is_struct(success) || success[$ "__uid"] != 4216241210) show_error($"{_where} :: success expected ElementsCallbackDefinition", true);
			success.validate(_where);
		}
		if (!is_undefined(matchmaker))
		{
			if (!is_struct(matchmaker) || matchmaker[$ "__uid"] != 3543018996) show_error($"{_where} :: matchmaker expected ElementsElementServiceReference", true);
			matchmaker.validate(_where);
		}
		if (!is_undefined(maxProfiles) && !is_real(maxProfiles)) show_error($"{_where} :: maxProfiles expected int32", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
		if (!is_undefined(metadataSpec))
		{
			if (!is_struct(metadataSpec) || metadataSpec[$ "__uid"] != 2450729354) show_error($"{_where} :: metadataSpec expected ElementsMetadataSpec", true);
			metadataSpec.validate(_where);
		}
	};
}

/**
 * @func ElementsPSNApplicationConfiguration()
 * @param {String} _id The database assigned ID for the application configuration.
 * @param {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @param {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @param {String} _description
 * @param {Struct.ElementsApplication} _parent
 * @param {String} _np_identifier
 * @param {String} _client_secret
 */
function ElementsPSNApplicationConfiguration(_id, _name, _type, _description, _parent, _np_identifier, _client_secret) constructor
{
	id = _id;
	name = _name;
	type = _type;
	description = _description;
	parent = _parent;
	npIdentifier = _np_identifier;
	clientSecret = _client_secret;
	
	static __uid = 1535140709;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPSNApplicationConfiguration.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_struct(parent) || parent[$ "__uid"] != 1239862290) show_error($"{_where} :: parent expected ElementsApplication", true);
		parent.validate(_where);
		if (!is_string(npIdentifier)) show_error($"{_where} :: npIdentifier expected string", true);
		if (!is_string(clientSecret)) show_error($"{_where} :: clientSecret expected string", true);
	};
}

/**
 * @func ElementsAuthScheme()
 * @param {String} _id The unique ID of the auth scheme.
 * @param {String} _audience A unique name used to identify the scheme within the instance of Elements.
 * @param {String} _public_key A base-64 encoded string representing an x509 encoded public key.
 * @param {String} _algorithm The digital signature matching the public key format. (one of: RSA_256 | RSA_384 | RSA_512)
 * @param {String} _user_level The highest permitted user level this particular scheme will authorize. (one of: UNPRIVILEGED | USER | SUPERUSER)
 * @param {Array[String]} _tags The tags used to tag this auth scheme.
 * @param {Array[String]} _allowed_issuers A list of issuers allowed to use this scheme.
 */
function ElementsAuthScheme(_id, _audience, _public_key, _algorithm, _user_level, _tags, _allowed_issuers) constructor
{
	id = _id;
	audience = _audience;
	publicKey = _public_key;
	algorithm = _algorithm;
	userLevel = _user_level;
	tags = _tags;
	allowedIssuers = _allowed_issuers;
	
	static __uid = 4189832153;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsAuthScheme.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(audience)) show_error($"{_where} :: audience expected string", true);
		if (!is_string(publicKey)) show_error($"{_where} :: publicKey expected string", true);
		if (!is_string(algorithm)) show_error($"{_where} :: algorithm expected string", true);
		if (!is_string(userLevel)) show_error($"{_where} :: userLevel expected string", true);
		if (!is_array(tags)) show_error($"{_where} :: tags expected string", true);
		if (!is_array(allowedIssuers)) show_error($"{_where} :: allowedIssuers expected string", true);
	};
}

/**
 * @func ElementsCreateAuthSchemeResponse()
 * @param {Struct.ElementsAuthScheme} _scheme The full JSON response as described in AuthScheme
 * @param {String} _public_key The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @param {String} _private_key The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/PKCS8EncodedKeySpec.html for details on the specifics of the format.
 */
function ElementsCreateAuthSchemeResponse(_scheme, _public_key, _private_key = undefined) constructor
{
	scheme = _scheme;
	publicKey = _public_key;
	privateKey = _private_key;
	
	static __uid = 3050382998;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateAuthSchemeResponse.validate";
		
		if (!is_struct(scheme) || scheme[$ "__uid"] != 4189832153) show_error($"{_where} :: scheme expected ElementsAuthScheme", true);
		scheme.validate(_where);
		if (!is_string(publicKey)) show_error($"{_where} :: publicKey expected string", true);
		if (!is_undefined(privateKey) && !is_string(privateKey)) show_error($"{_where} :: privateKey expected string", true);
	};
}

/**
 * @func ElementsCreateAuthSchemeRequest()
 * @param {String} _audience The JWT audience for the scheme. Must be unique.
 * @param {String} _algorithm  (one of: RSA_256 | RSA_384 | RSA_512)
 * @param {String} _user_level The highest permitted user level this particular scheme will authorize. (one of: UNPRIVILEGED | USER | SUPERUSER)
 * @param {Array[String]} _tags A list of tags used to index the auth scheme.
 * @param {Array[String]} _allowed_issuers The list of issuers allowed to use this scheme.
 * @param {String} _public_key The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 */
function ElementsCreateAuthSchemeRequest(_audience, _algorithm, _user_level, _tags, _allowed_issuers, _public_key = undefined) constructor
{
	audience = _audience;
	algorithm = _algorithm;
	userLevel = _user_level;
	tags = _tags;
	allowedIssuers = _allowed_issuers;
	publicKey = _public_key;
	
	static __uid = 166078714;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateAuthSchemeRequest.validate";
		
		if (!is_string(audience)) show_error($"{_where} :: audience expected string", true);
		if (!is_string(algorithm)) show_error($"{_where} :: algorithm expected string", true);
		if (!is_string(userLevel)) show_error($"{_where} :: userLevel expected string", true);
		if (!is_array(tags)) show_error($"{_where} :: tags expected string", true);
		if (!is_array(allowedIssuers)) show_error($"{_where} :: allowedIssuers expected string", true);
		if (!is_undefined(publicKey) && !is_string(publicKey)) show_error($"{_where} :: publicKey expected string", true);
	};
}

/**
 * @func ElementsPaginationAuthScheme()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsAuthScheme]} _objects
 */
function ElementsPaginationAuthScheme(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 3952659785;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationAuthScheme.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsAuthScheme", true);
	};
}

/**
 * @func ElementsUpdateAuthSchemeResponse()
 * @param {String} _public_key The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @param {Struct.ElementsAuthScheme} _scheme The full JSON response as described in AuthScheme
 * @param {String} _private_key The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/PKCS8EncodedKeySpec.html for details on the specifics of the format.
 */
function ElementsUpdateAuthSchemeResponse(_public_key, _scheme = undefined, _private_key = undefined) constructor
{
	publicKey = _public_key;
	scheme = _scheme;
	privateKey = _private_key;
	
	static __uid = 3417798483;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateAuthSchemeResponse.validate";
		
		if (!is_string(publicKey)) show_error($"{_where} :: publicKey expected string", true);
		if (!is_undefined(scheme))
		{
			if (!is_struct(scheme) || scheme[$ "__uid"] != 4189832153) show_error($"{_where} :: scheme expected ElementsAuthScheme", true);
			scheme.validate(_where);
		}
		if (!is_undefined(privateKey) && !is_string(privateKey)) show_error($"{_where} :: privateKey expected string", true);
	};
}

/**
 * @func ElementsUpdateAuthSchemeRequest()
 * @param {String} _audience The JWT audience for the scheme. Must be unique.
 * @param {String} _algorithm The algorithm that Elements will use with the supplied key. (one of: RSA_256 | RSA_384 | RSA_512)
 * @param {String} _user_level The highest permitted user level this particular scheme will authorize. (one of: UNPRIVILEGED | USER | SUPERUSER)
 * @param {Array[String]} _tags The list of tags for tagging the auth scheme.
 * @param {Array[String]} _allowed_issuers The list of issuers allowed to use this scheme.
 * @param {Real} _regenerate If set to true, Elements will regenerate the key and pubKey must be null or omitted
 * @param {String} _public_key The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
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
	
	static __uid = 1359283309;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateAuthSchemeRequest.validate";
		
		if (!is_string(audience)) show_error($"{_where} :: audience expected string", true);
		if (!is_string(algorithm)) show_error($"{_where} :: algorithm expected string", true);
		if (!is_string(userLevel)) show_error($"{_where} :: userLevel expected string", true);
		if (!is_array(tags)) show_error($"{_where} :: tags expected string", true);
		if (!is_array(allowedIssuers)) show_error($"{_where} :: allowedIssuers expected string", true);
		if (!is_undefined(regenerate) && !is_real(regenerate)) show_error($"{_where} :: regenerate expected bool", true);
		if (!is_undefined(publicKey) && !is_string(publicKey)) show_error($"{_where} :: publicKey expected string", true);
	};
}

/**
 * @func ElementsLargeObjectReference()
 * @param {String} _id The unique ID of the LargeObject.
 * @param {String} _url The URL where the binary contents of the LargeObject may be read.
 * @param {String} _mime_type The MIME type of the LargeObject.
 * @param {String} _state Current state of the LargeObject. (one of: EMPTY | UPLOADED)
 * @param {String} _last_modified Date of last modification
 */
function ElementsLargeObjectReference(_id = undefined, _url = undefined, _mime_type = undefined, _state = undefined, _last_modified = undefined) constructor
{
	id = _id;
	url = _url;
	mimeType = _mime_type;
	state = _state;
	lastModified = _last_modified;
	
	static __uid = 2283563853;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsLargeObjectReference.validate";
		
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(url) && !is_string(url)) show_error($"{_where} :: url expected string", true);
		if (!is_undefined(mimeType) && !is_string(mimeType)) show_error($"{_where} :: mimeType expected string", true);
		if (!is_undefined(state) && !is_string(state)) show_error($"{_where} :: state expected string", true);
		if (!is_undefined(lastModified) && !is_string(lastModified)) show_error($"{_where} :: lastModified expected string", true);
	};
}

/**
 * @func ElementsProfile()
 * @param {String} _id The unique ID of the profile itself.
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {Struct.ElementsApplication} _application
 * @param {String} _display_name A non-unique display name for this profile.
 * @param {String} _image_url A URL to the image of the profile.  (ie the User's Avatar).
 * @param {Struct.ElementsLargeObjectReference} _image_object Image object stored in EL large objects storage.
 * @param {Struct} _metadata An object containing arbitrary player metadata as key-value pairs.
 * @param {Real} _last_login The last time this profile has been logged in by the user.
 */
function ElementsProfile(_id, _user, _application, _display_name, _image_url = undefined, _image_object = undefined, _metadata = undefined, _last_login = undefined) constructor
{
	id = _id;
	user = _user;
	application = _application;
	displayName = _display_name;
	imageUrl = _image_url;
	imageObject = _image_object;
	metadata = _metadata;
	lastLogin = _last_login;
	
	static __uid = 2781117785;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsProfile.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_struct(user) || user[$ "__uid"] != 3659328047) show_error($"{_where} :: user expected ElementsUser", true);
		user.validate(_where);
		if (!is_struct(application) || application[$ "__uid"] != 1239862290) show_error($"{_where} :: application expected ElementsApplication", true);
		application.validate(_where);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_undefined(imageUrl) && !is_string(imageUrl)) show_error($"{_where} :: imageUrl expected string", true);
		if (!is_undefined(imageObject))
		{
			if (!is_struct(imageObject) || imageObject[$ "__uid"] != 2283563853) show_error($"{_where} :: imageObject expected ElementsLargeObjectReference", true);
			imageObject.validate(_where);
		}
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
		if (!is_undefined(lastLogin) && !is_real(lastLogin)) show_error($"{_where} :: lastLogin expected int64", true);
	};
}

/**
 * @func ElementsSession()
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {Struct.ElementsProfile} _profile
 * @param {Struct.ElementsApplication} _application
 * @param {Real} _expiry
 */
function ElementsSession(_user, _profile = undefined, _application = undefined, _expiry = undefined) constructor
{
	user = _user;
	profile = _profile;
	application = _application;
	expiry = _expiry;
	
	static __uid = 3048891336;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsSession.validate";
		
		if (!is_struct(user) || user[$ "__uid"] != 3659328047) show_error($"{_where} :: user expected ElementsUser", true);
		user.validate(_where);
		if (!is_undefined(profile))
		{
			if (!is_struct(profile) || profile[$ "__uid"] != 2781117785) show_error($"{_where} :: profile expected ElementsProfile", true);
			profile.validate(_where);
		}
		if (!is_undefined(application))
		{
			if (!is_struct(application) || application[$ "__uid"] != 1239862290) show_error($"{_where} :: application expected ElementsApplication", true);
			application.validate(_where);
		}
		if (!is_undefined(expiry) && !is_real(expiry)) show_error($"{_where} :: expiry expected int64", true);
	};
}

/**
 * @func ElementsSessionCreation()
 * @param {String} _session_secret The Session Secret to pass to subsequent requests through headers.
 * @param {Struct.ElementsSession} _session The Session object generated by the request.
 */
function ElementsSessionCreation(_session_secret = undefined, _session = undefined) constructor
{
	sessionSecret = _session_secret;
	session = _session;
	
	static __uid = 4150057953;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsSessionCreation.validate";
		
		if (!is_undefined(sessionSecret) && !is_string(sessionSecret)) show_error($"{_where} :: sessionSecret expected string", true);
		if (!is_undefined(session))
		{
			if (!is_struct(session) || session[$ "__uid"] != 3048891336) show_error($"{_where} :: session expected ElementsSession", true);
			session.validate(_where);
		}
	};
}

/**
 * @func ElementsOAuth2SessionRequest()
 * @param {String} _scheme_id The OAuth2 scheme ID to use.
 * @param {Struct} _request_parameters The request parameters to be used in the token validation request. This should adhere to any params marked as fromClient in the auth scheme.
 * @param {Struct} _request_headers The request headers to be used in the token validation request. This should adhere to any headers marked as fromClient in the auth scheme.
 * @param {String} _profile_id The profile ID to assign to the session.
 * @param {String} _profile_selector A query string to select the profile to use. NOTE: This will not be run if a profileId is specified.
 */
function ElementsOAuth2SessionRequest(_scheme_id, _request_parameters = undefined, _request_headers = undefined, _profile_id = undefined, _profile_selector = undefined) constructor
{
	schemeId = _scheme_id;
	requestParameters = _request_parameters;
	requestHeaders = _request_headers;
	profileId = _profile_id;
	profileSelector = _profile_selector;
	
	static __uid = 3056783034;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsOAuth2SessionRequest.validate";
		
		if (!is_string(schemeId)) show_error($"{_where} :: schemeId expected string", true);
		if (!is_undefined(requestParameters) && !is_struct(requestParameters)) show_error($"{_where} :: requestParameters expected any", true);
		if (!is_undefined(requestHeaders) && !is_struct(requestHeaders)) show_error($"{_where} :: requestHeaders expected any", true);
		if (!is_undefined(profileId) && !is_string(profileId)) show_error($"{_where} :: profileId expected string", true);
		if (!is_undefined(profileSelector) && !is_string(profileSelector)) show_error($"{_where} :: profileSelector expected string", true);
	};
}

/**
 * @func ElementsOAuth2RequestKeyValue()
 * @param {String} _key The key.
 * @param {String} _value The value.
 * @param {Real} _from_client If this value should be received from the client, or predefined and stored in the DB.
 */
function ElementsOAuth2RequestKeyValue(_key = undefined, _value = undefined, _from_client = undefined) constructor
{
	key = _key;
	value = _value;
	fromClient = _from_client;
	
	static __uid = 487146424;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsOAuth2RequestKeyValue.validate";
		
		if (!is_undefined(key) && !is_string(key)) show_error($"{_where} :: key expected string", true);
		if (!is_undefined(value) && !is_string(value)) show_error($"{_where} :: value expected string", true);
		if (!is_undefined(fromClient) && !is_real(fromClient)) show_error($"{_where} :: fromClient expected bool", true);
	};
}

/**
 * @func ElementsOAuth2AuthScheme()
 * @param {String} _id The unique ID of the auth scheme.
 * @param {String} _name A unique name used to identify the scheme within the instance of Elements. If using the same OAuth2 provider (e.g. Steam), it is recommended to suffix the name for each application when using multitenancy, e.g. steam_game1, steam_game2, etc.
 * @param {String} _validation_url The URL to send the user token validation request to.
 * @param {Array[Struct.ElementsOAuth2RequestKeyValue]} _headers The headers required for the validation request.
 * @param {Array[Struct.ElementsOAuth2RequestKeyValue]} _params The query parameters required for the validation request.
 * @param {String} _response_id_mapping Determines how to map the user id in the response. For example "response.params.steamid"
 */
function ElementsOAuth2AuthScheme(_id, _name, _validation_url, _headers = undefined, _params = undefined, _response_id_mapping = undefined) constructor
{
	id = _id;
	name = _name;
	validationUrl = _validation_url;
	headers = _headers;
	params = _params;
	responseIdMapping = _response_id_mapping;
	
	static __uid = 784160074;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsOAuth2AuthScheme.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(validationUrl)) show_error($"{_where} :: validationUrl expected string", true);
		if (!is_undefined(headers) && !is_array(headers)) show_error($"{_where} :: headers expected ElementsOAuth2RequestKeyValue", true);
		if (!is_undefined(params) && !is_array(params)) show_error($"{_where} :: params expected ElementsOAuth2RequestKeyValue", true);
		if (!is_undefined(responseIdMapping) && !is_string(responseIdMapping)) show_error($"{_where} :: responseIdMapping expected string", true);
	};
}

/**
 * @func ElementsCreateOrUpdateOAuth2AuthSchemeResponse()
 * @param {Struct.ElementsOAuth2AuthScheme} _scheme The full JSON response as described in AuthScheme
 */
function ElementsCreateOrUpdateOAuth2AuthSchemeResponse(_scheme = undefined) constructor
{
	scheme = _scheme;
	
	static __uid = 1583436917;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateOrUpdateOAuth2AuthSchemeResponse.validate";
		
		if (!is_undefined(scheme))
		{
			if (!is_struct(scheme) || scheme[$ "__uid"] != 784160074) show_error($"{_where} :: scheme expected ElementsOAuth2AuthScheme", true);
			scheme.validate(_where);
		}
	};
}

/**
 * @func ElementsCreateOrUpdateOAuth2AuthSchemeRequest()
 * @param {String} _id The unique ID of the auth scheme.
 * @param {String} _name A unique name used to identify the scheme within the instance of Elements. If using the same OAuth2 provider (e.g. Steam), it is recommended to suffix the name for each application when using multitenancy, e.g. steam_game1, steam_game2, etc.
 * @param {String} _validation_url The URL to send the user token validation request to.
 * @param {Array[Struct.ElementsOAuth2RequestKeyValue]} _headers The headers required for the validation request.
 * @param {Array[Struct.ElementsOAuth2RequestKeyValue]} _params The query parameters required for the validation request.
 * @param {String} _response_id_mapping Determines how to map the user id in the response. For example "response.params.steamid"
 */
function ElementsCreateOrUpdateOAuth2AuthSchemeRequest(_id, _name, _validation_url, _headers = undefined, _params = undefined, _response_id_mapping = undefined) constructor
{
	id = _id;
	name = _name;
	validationUrl = _validation_url;
	headers = _headers;
	params = _params;
	responseIdMapping = _response_id_mapping;
	
	static __uid = 4181820335;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateOrUpdateOAuth2AuthSchemeRequest.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(validationUrl)) show_error($"{_where} :: validationUrl expected string", true);
		if (!is_undefined(headers) && !is_array(headers)) show_error($"{_where} :: headers expected ElementsOAuth2RequestKeyValue", true);
		if (!is_undefined(params) && !is_array(params)) show_error($"{_where} :: params expected ElementsOAuth2RequestKeyValue", true);
		if (!is_undefined(responseIdMapping) && !is_string(responseIdMapping)) show_error($"{_where} :: responseIdMapping expected string", true);
	};
}

/**
 * @func ElementsPaginationOAuth2AuthScheme()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsOAuth2AuthScheme]} _objects
 */
function ElementsPaginationOAuth2AuthScheme(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 3695575514;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationOAuth2AuthScheme.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsOAuth2AuthScheme", true);
	};
}

/**
 * @func ElementsOidcSessionRequest()
 * @param {String} _jwt The JWT to parse
 * @param {String} _profile_id The profile ID to assign to the session.
 * @param {String} _profile_selector A query string to select the profile to use. NOTE: This will not be run if a profileId is specified.
 */
function ElementsOidcSessionRequest(_jwt, _profile_id = undefined, _profile_selector = undefined) constructor
{
	jwt = _jwt;
	profileId = _profile_id;
	profileSelector = _profile_selector;
	
	static __uid = 4082929088;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsOidcSessionRequest.validate";
		
		if (!is_string(jwt)) show_error($"{_where} :: jwt expected string", true);
		if (!is_undefined(profileId) && !is_string(profileId)) show_error($"{_where} :: profileId expected string", true);
		if (!is_undefined(profileSelector) && !is_string(profileSelector)) show_error($"{_where} :: profileSelector expected string", true);
	};
}

/**
 * @func ElementsJWK()
 * @param {String} _alg Algorithm (e.g. RS256)
 * @param {String} _kid Key id (unique to issuer)
 * @param {String} _kty Key type (e.g. RSA)
 * @param {String} _use The intended use (e.g. sig)
 * @param {String} _e Base64url encoded exponent
 * @param {String} _n Pub key modulus
 */
function ElementsJWK(_alg = undefined, _kid = undefined, _kty = undefined, _use = undefined, _e = undefined, _n = undefined) constructor
{
	alg = _alg;
	kid = _kid;
	kty = _kty;
	use = _use;
	e = _e;
	n = _n;
	
	static __uid = 4116423420;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsJWK.validate";
		
		if (!is_undefined(alg) && !is_string(alg)) show_error($"{_where} :: alg expected string", true);
		if (!is_undefined(kid) && !is_string(kid)) show_error($"{_where} :: kid expected string", true);
		if (!is_undefined(kty) && !is_string(kty)) show_error($"{_where} :: kty expected string", true);
		if (!is_undefined(use) && !is_string(use)) show_error($"{_where} :: use expected string", true);
		if (!is_undefined(e) && !is_string(e)) show_error($"{_where} :: e expected string", true);
		if (!is_undefined(n) && !is_string(n)) show_error($"{_where} :: n expected string", true);
	};
}

/**
 * @func ElementsOidcAuthScheme()
 * @param {String} _id The unique ID of the auth scheme.
 * @param {String} _issuer A unique name used to identify the scheme within the instance of Elements. When validating from an external source (e.g. Google or Apple SSO), must match the 'iss' property of the decoded JWT.
 * @param {Array[Struct.ElementsJWK]} _keys A set of JWKs containing the keys required to validate JWT signatures.
 * @param {String} _name The unique name of the auth scheme.
 * @param {String} _keys_url The URL for the JWK data. Will attempt to refresh keys if the kid cannot be found in the collection.
 * @param {String} _media_type The JWK format. Defaults to application/json
 */
function ElementsOidcAuthScheme(_id, _issuer, _keys, _name = undefined, _keys_url = undefined, _media_type = undefined) constructor
{
	id = _id;
	issuer = _issuer;
	keys = _keys;
	name = _name;
	keysUrl = _keys_url;
	mediaType = _media_type;
	
	static __uid = 2553531508;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsOidcAuthScheme.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(issuer)) show_error($"{_where} :: issuer expected string", true);
		if (!is_array(keys)) show_error($"{_where} :: keys expected ElementsJWK", true);
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(keysUrl) && !is_string(keysUrl)) show_error($"{_where} :: keysUrl expected string", true);
		if (!is_undefined(mediaType) && !is_string(mediaType)) show_error($"{_where} :: mediaType expected string", true);
	};
}

/**
 * @func ElementsCreateOrUpdateOidcAuthSchemeResponse()
 * @param {Struct.ElementsOidcAuthScheme} _scheme The full JSON response as described in AuthScheme
 */
function ElementsCreateOrUpdateOidcAuthSchemeResponse(_scheme = undefined) constructor
{
	scheme = _scheme;
	
	static __uid = 1780564715;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateOrUpdateOidcAuthSchemeResponse.validate";
		
		if (!is_undefined(scheme))
		{
			if (!is_struct(scheme) || scheme[$ "__uid"] != 2553531508) show_error($"{_where} :: scheme expected ElementsOidcAuthScheme", true);
			scheme.validate(_where);
		}
	};
}

/**
 * @func ElementsCreateOrUpdateOidcAuthSchemeRequest()
 * @param {String} _id The unique ID of the auth scheme.
 * @param {String} _issuer A unique name used to identify the scheme within the instance of Elements. When validating from an external source (e.g. Google or Apple SSO), must match the 'iss' property of the decoded JWT.
 * @param {Array[Struct.ElementsJWK]} _keys A set of JWKs containing the keys required to validate JWT signatures.
 * @param {String} _keys_url The URL for the JWK data. Will attempt to refresh keys if the kid cannot be found in the collection.
 * @param {String} _media_type The JWK format. Defaults to application/json
 */
function ElementsCreateOrUpdateOidcAuthSchemeRequest(_id, _issuer, _keys, _keys_url = undefined, _media_type = undefined) constructor
{
	id = _id;
	issuer = _issuer;
	keys = _keys;
	keysUrl = _keys_url;
	mediaType = _media_type;
	
	static __uid = 3649915157;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateOrUpdateOidcAuthSchemeRequest.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(issuer)) show_error($"{_where} :: issuer expected string", true);
		if (!is_array(keys)) show_error($"{_where} :: keys expected ElementsJWK", true);
		if (!is_undefined(keysUrl) && !is_string(keysUrl)) show_error($"{_where} :: keysUrl expected string", true);
		if (!is_undefined(mediaType) && !is_string(mediaType)) show_error($"{_where} :: mediaType expected string", true);
	};
}

/**
 * @func ElementsPaginationOidcAuthScheme()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsOidcAuthScheme]} _objects
 */
function ElementsPaginationOidcAuthScheme(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 2770677284;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationOidcAuthScheme.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsOidcAuthScheme", true);
	};
}

/**
 * @func ElementsVaultKey()
 * @param {String} _algorithm Specifies the private key encryption algorithm used to secure the vault. (one of: RSA_256 | RSA_384 | RSA_512)
 * @param {String} _public_key The public key portion of the vault key.
 * @param {String} _private_key The private key portion of the vault key.
 * @param {Real} _encrypted The flag to indicate if the key is encrypted or not.
 * @param {Struct} _encryption The Vault's encryption metadata. This is specific to the encryption type used.
 */
function ElementsVaultKey(_algorithm, _public_key, _private_key, _encrypted = undefined, _encryption = undefined) constructor
{
	algorithm = _algorithm;
	publicKey = _public_key;
	privateKey = _private_key;
	encrypted = _encrypted;
	encryption = _encryption;
	
	static __uid = 2996726087;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsVaultKey.validate";
		
		if (!is_string(algorithm)) show_error($"{_where} :: algorithm expected string", true);
		if (!is_string(publicKey)) show_error($"{_where} :: publicKey expected string", true);
		if (!is_string(privateKey)) show_error($"{_where} :: privateKey expected string", true);
		if (!is_undefined(encrypted) && !is_real(encrypted)) show_error($"{_where} :: encrypted expected bool", true);
		if (!is_undefined(encryption) && !is_struct(encryption)) show_error($"{_where} :: encryption expected any", true);
	};
}

/**
 * @func ElementsVault()
 * @param {String} _id The system assigned unique id of the vault.
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {String} _display_name The display name given to this vault.
 * @param {Struct.ElementsVaultKey} _key The Vault's key. The vault secures each vault with this key.
 */
function ElementsVault(_id, _user, _display_name, _key) constructor
{
	id = _id;
	user = _user;
	displayName = _display_name;
	key = _key;
	
	static __uid = 2353654968;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsVault.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_struct(user) || user[$ "__uid"] != 3659328047) show_error($"{_where} :: user expected ElementsUser", true);
		user.validate(_where);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_struct(key) || key[$ "__uid"] != 2996726087) show_error($"{_where} :: key expected ElementsVaultKey", true);
		key.validate(_where);
	};
}

/**
 * @func ElementsSmartContract()
 * @param {String} _id The Elements database id of the contract.
 * @param {String} _name The unique symbolic name of the smart contract.
 * @param {String} _display_name The name given to this contract for display purposes.
 * @param {Struct} _addresses The addresses of the contract from the blockchain. Depending on the network or protocol this may have several meanings. For example, this may be the script has for the Ethereum network.
 * @param {Struct.ElementsVault} _vault
 * @param {Struct} _metadata Any metadata for this contract.
 */
function ElementsSmartContract(_id, _name, _display_name, _addresses, _vault, _metadata = undefined) constructor
{
	id = _id;
	name = _name;
	displayName = _display_name;
	addresses = _addresses;
	vault = _vault;
	metadata = _metadata;
	
	static __uid = 2601021251;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsSmartContract.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_struct(addresses)) show_error($"{_where} :: addresses expected any", true);
		if (!is_struct(vault) || vault[$ "__uid"] != 2353654968) show_error($"{_where} :: vault expected ElementsVault", true);
		vault.validate(_where);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsSmartContractAddress()
 * @param {String} _address
 */
function ElementsSmartContractAddress(_address = undefined) constructor
{
	address = _address;
	
	static __uid = 1454848529;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsSmartContractAddress.validate";
		
		if (!is_undefined(address) && !is_string(address)) show_error($"{_where} :: address expected string", true);
	};
}

/**
 * @func ElementsCreateSmartContractRequest()
 * @param {String} _name The unique symbolic name of the smart contract.
 * @param {String} _display_name The name given to this contract for display purposes.
 * @param {Struct} _addresses The address of the contract from the blockchain. Depending on the network or protocol this may have several meanings and vary depending on the specific API or network.
 * @param {String} _vault_id The Elements database id of the wallet containing the default account to be used for contract related requests.
 * @param {Struct} _metadata Any metadata for this contract.
 */
function ElementsCreateSmartContractRequest(_name, _display_name, _addresses, _vault_id, _metadata = undefined) constructor
{
	name = _name;
	displayName = _display_name;
	addresses = _addresses;
	vaultId = _vault_id;
	metadata = _metadata;
	
	static __uid = 147112120;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateSmartContractRequest.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_struct(addresses)) show_error($"{_where} :: addresses expected any", true);
		if (!is_string(vaultId)) show_error($"{_where} :: vaultId expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsPaginationSmartContract()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsSmartContract]} _objects
 */
function ElementsPaginationSmartContract(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 415107507;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationSmartContract.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsSmartContract", true);
	};
}

/**
 * @func ElementsUpdateSmartContractRequest()
 * @param {String} _name The unique symbolic name of the smart contract.
 * @param {String} _display_name The name given to this contract for display purposes.
 * @param {Struct} _addresses The address of the contract from the blockchain. Depending on the network or protocol this may have several meanings and vary depending on the specific API or network.
 * @param {String} _vault_id The Elements database id of the wallet containing the default account to be used for contract related requests.
 * @param {Struct} _metadata Any metadata for this contract.
 */
function ElementsUpdateSmartContractRequest(_name, _display_name, _addresses, _vault_id, _metadata = undefined) constructor
{
	name = _name;
	displayName = _display_name;
	addresses = _addresses;
	vaultId = _vault_id;
	metadata = _metadata;
	
	static __uid = 2326764889;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateSmartContractRequest.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_struct(addresses)) show_error($"{_where} :: addresses expected any", true);
		if (!is_string(vaultId)) show_error($"{_where} :: vaultId expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsCreateVaultRequest()
 * @param {String} _user_id The elements-defined user ID to own the vault.
 * @param {String} _display_name A user-defined name for the vault. This is used simply for the user's reference and has no bearing  onthe vault's functionality.
 * @param {String} _passphrase The passphrase used to to encrypt the vault. If empty, then the vault will not be encrypted. Some configurations may opt to disallow encryption entirely.
 * @param {String} _algorithm The encryption algorithm used to secure the vault. Once crated, a vault will contains a private/public key pair which will be used to encrypt the wallets within the vault. (one of: RSA_256 | RSA_384 | RSA_512)
 */
function ElementsCreateVaultRequest(_user_id, _display_name, _passphrase = undefined, _algorithm = undefined) constructor
{
	userId = _user_id;
	displayName = _display_name;
	passphrase = _passphrase;
	algorithm = _algorithm;
	
	static __uid = 3788719493;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateVaultRequest.validate";
		
		if (!is_string(userId)) show_error($"{_where} :: userId expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_undefined(passphrase) && !is_string(passphrase)) show_error($"{_where} :: passphrase expected string", true);
		if (!is_undefined(algorithm) && !is_string(algorithm)) show_error($"{_where} :: algorithm expected string", true);
	};
}

/**
 * @func ElementsPaginationVault()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsVault]} _objects
 */
function ElementsPaginationVault(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 3079140168;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationVault.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsVault", true);
	};
}

/**
 * @func ElementsUpdateVaultRequest()
 * @param {String} _display_name A user-defined name for the vault. This is used simply for the user's reference and has no bearing  onthe vault's functionality.
 * @param {String} _user_id The elements-defined user ID to own the vault.
 * @param {String} _passphrase The current passphrase for the vault. If left null, no updates to the passphrase will be made. If not-null, then the new password must also not be null.
 * @param {String} _new_passphrase The updated passphrase for the vault. If left null, no updates to the passphrase will be made. If not-null, then the password must also not be null.
 */
function ElementsUpdateVaultRequest(_display_name, _user_id, _passphrase = undefined, _new_passphrase = undefined) constructor
{
	displayName = _display_name;
	userId = _user_id;
	passphrase = _passphrase;
	newPassphrase = _new_passphrase;
	
	static __uid = 1895978920;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateVaultRequest.validate";
		
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(userId)) show_error($"{_where} :: userId expected string", true);
		if (!is_undefined(passphrase) && !is_string(passphrase)) show_error($"{_where} :: passphrase expected string", true);
		if (!is_undefined(newPassphrase) && !is_string(newPassphrase)) show_error($"{_where} :: newPassphrase expected string", true);
	};
}

/**
 * @func ElementsWalletAccount()
 * @param {String} _address The Wallet Address - id public identity. Required.
 * @param {String} _private_key The Wallet Account - id private identity. May be null if the wallet is for receive only.
 * @param {Real} _encrypted Indicates if this identity is encrypted.
 */
function ElementsWalletAccount(_address, _private_key = undefined, _encrypted = undefined) constructor
{
	address = _address;
	privateKey = _private_key;
	encrypted = _encrypted;
	
	static __uid = 2943132664;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsWalletAccount.validate";
		
		if (!is_string(address)) show_error($"{_where} :: address expected string", true);
		if (!is_undefined(privateKey) && !is_string(privateKey)) show_error($"{_where} :: privateKey expected string", true);
		if (!is_undefined(encrypted) && !is_real(encrypted)) show_error($"{_where} :: encrypted expected bool", true);
	};
}

/**
 * @func ElementsWallet()
 * @param {String} _id The system assigned unique id of the wallet.
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {Struct.ElementsVault} _vault
 * @param {String} _display_name The name given to this wallet.
 * @param {String} _api The protocol used wiht this wallet. (one of: NEO | ETHEREUM | SOLANA | FLOW | NEAR)
 * @param {Array[String]} _networks The networks associated with this wallet. (one of: NEO | NEO_TEST | ETHEREUM | ETHEREUM_TEST | BSC | BSC_TEST | POLYGON | POLYGON_TEST | SOLANA | SOLANA_TEST | FLOW | FLOW_TEST | NEAR | NEAR_TEST)
 * @param {Array[Struct.ElementsWalletAccount]} _accounts The list of account pairs included in this wallet.
 * @param {Real} _preferred_account The default account. Must not be larger than the count of identities.
 */
function ElementsWallet(_id, _user, _vault, _display_name, _api, _networks, _accounts, _preferred_account = undefined) constructor
{
	id = _id;
	user = _user;
	vault = _vault;
	displayName = _display_name;
	api = _api;
	networks = _networks;
	accounts = _accounts;
	preferredAccount = _preferred_account;
	
	static __uid = 2773285737;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsWallet.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_struct(user) || user[$ "__uid"] != 3659328047) show_error($"{_where} :: user expected ElementsUser", true);
		user.validate(_where);
		if (!is_struct(vault) || vault[$ "__uid"] != 2353654968) show_error($"{_where} :: vault expected ElementsVault", true);
		vault.validate(_where);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(api)) show_error($"{_where} :: api expected string", true);
		if (!is_array(networks)) show_error($"{_where} :: networks expected string", true);
		if (!is_array(accounts)) show_error($"{_where} :: accounts expected ElementsWalletAccount", true);
		if (!is_undefined(preferredAccount) && !is_real(preferredAccount)) show_error($"{_where} :: preferredAccount expected int32", true);
	};
}

/**
 * @func ElementsCreateWalletRequestAccount()
 * @param {String} _address The Wallet Address - id public identity. Must be null for generated wallets.
 * @param {Real} _generate Flag which indicates if the account should be generated or imported.
 * @param {String} _private_key The Wallet Account - id private identity. May be null if the wallet is for receive only.
 */
function ElementsCreateWalletRequestAccount(_address, _generate = undefined, _private_key = undefined) constructor
{
	address = _address;
	generate = _generate;
	privateKey = _private_key;
	
	static __uid = 2097567685;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateWalletRequestAccount.validate";
		
		if (!is_string(address)) show_error($"{_where} :: address expected string", true);
		if (!is_undefined(generate) && !is_real(generate)) show_error($"{_where} :: generate expected bool", true);
		if (!is_undefined(privateKey) && !is_string(privateKey)) show_error($"{_where} :: privateKey expected string", true);
	};
}

/**
 * @func ElementsCreateWalletRequest()
 * @param {String} _display_name A user-defined name for the wallet. This is used simply for the user's reference and has no bearing  onthe wallet's functionality.
 * @param {String} _api The protocol of this wallet. Once set, this cannot be unset. (one of: NEO | ETHEREUM | SOLANA | FLOW | NEAR)
 * @param {Array[String]} _networks The networks associated with this wallet. All must support the Wallet's protocol. (one of: NEO | NEO_TEST | ETHEREUM | ETHEREUM_TEST | BSC | BSC_TEST | POLYGON | POLYGON_TEST | SOLANA | SOLANA_TEST | FLOW | FLOW_TEST | NEAR | NEAR_TEST)
 * @param {Array[Struct.ElementsCreateWalletRequestAccount]} _accounts
 * @param {Real} _preferred_account The default identity. Must not be larger than the count of identities.
 */
function ElementsCreateWalletRequest(_display_name, _api, _networks, _accounts, _preferred_account = undefined) constructor
{
	displayName = _display_name;
	api = _api;
	networks = _networks;
	accounts = _accounts;
	preferredAccount = _preferred_account;
	
	static __uid = 2593876170;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateWalletRequest.validate";
		
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(api)) show_error($"{_where} :: api expected string", true);
		if (!is_array(networks)) show_error($"{_where} :: networks expected string", true);
		if (!is_array(accounts)) show_error($"{_where} :: accounts expected ElementsCreateWalletRequestAccount", true);
		if (!is_undefined(preferredAccount) && !is_real(preferredAccount)) show_error($"{_where} :: preferredAccount expected int32", true);
	};
}

/**
 * @func ElementsPaginationWallet()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsWallet]} _objects
 */
function ElementsPaginationWallet(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 3480065145;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationWallet.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsWallet", true);
	};
}

/**
 * @func ElementsUpdateWalletRequest()
 * @param {Array[String]} _networks The networks associated with this wallet. All must support the Wallet's protocol. (one of: NEO | NEO_TEST | ETHEREUM | ETHEREUM_TEST | BSC | BSC_TEST | POLYGON | POLYGON_TEST | SOLANA | SOLANA_TEST | FLOW | FLOW_TEST | NEAR | NEAR_TEST)
 * @param {String} _display_name The new display name of the wallet.
 * @param {Real} _preferred_account The default identity. Must not be larger than the count of identities.
 */
function ElementsUpdateWalletRequest(_networks, _display_name = undefined, _preferred_account = undefined) constructor
{
	networks = _networks;
	displayName = _display_name;
	preferredAccount = _preferred_account;
	
	static __uid = 3954591533;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateWalletRequest.validate";
		
		if (!is_array(networks)) show_error($"{_where} :: networks expected string", true);
		if (!is_undefined(displayName) && !is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_undefined(preferredAccount) && !is_real(preferredAccount)) show_error($"{_where} :: preferredAccount expected int32", true);
	};
}

/**
 * @func ElementsDeployment()
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
	
	static __uid = 171929091;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsDeployment.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(version)) show_error($"{_where} :: version expected string", true);
		if (!is_string(revision)) show_error($"{_where} :: revision expected string", true);
		if (!is_struct(application) || application[$ "__uid"] != 1239862290) show_error($"{_where} :: application expected ElementsApplication", true);
		application.validate(_where);
	};
}

/**
 * @func ElementsCreateDeploymentRequest()
 * @param {String} _version
 * @param {String} _revision
 */
function ElementsCreateDeploymentRequest(_version, _revision) constructor
{
	version = _version;
	revision = _revision;
	
	static __uid = 4233991120;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateDeploymentRequest.validate";
		
		if (!is_string(version)) show_error($"{_where} :: version expected string", true);
		if (!is_string(revision)) show_error($"{_where} :: revision expected string", true);
	};
}

/**
 * @func ElementsPaginationDeployment()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsDeployment]} _objects
 */
function ElementsPaginationDeployment(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 3048218675;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationDeployment.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsDeployment", true);
	};
}

/**
 * @func ElementsUpdateDeploymentRequest()
 * @param {String} _revision
 */
function ElementsUpdateDeploymentRequest(_revision) constructor
{
	revision = _revision;
	
	static __uid = 549743099;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateDeploymentRequest.validate";
		
		if (!is_string(revision)) show_error($"{_where} :: revision expected string", true);
	};
}

/**
 * @func ElementsCodegenRequest()
 * @param {String} _element_spec_url The URL for the Element OpenApi spec. Usually /app/rest/elementName/openapi.json
 * @param {String} _language The target language that you want to generate the code to.
 * @param {String} _package_name The package name to set the generated code to. E.g. com.mycompany.mygame.Elements
 * @param {String} _options Any additional options that you want to pass to the generator
 */
function ElementsCodegenRequest(_element_spec_url = undefined, _language = undefined, _package_name = undefined, _options = undefined) constructor
{
	elementSpecUrl = _element_spec_url;
	language = _language;
	packageName = _package_name;
	options = _options;
	
	static __uid = 2864578542;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCodegenRequest.validate";
		
		if (!is_undefined(elementSpecUrl) && !is_string(elementSpecUrl)) show_error($"{_where} :: elementSpecUrl expected string", true);
		if (!is_undefined(language) && !is_string(language)) show_error($"{_where} :: language expected string", true);
		if (!is_undefined(packageName) && !is_string(packageName)) show_error($"{_where} :: packageName expected string", true);
		if (!is_undefined(options) && !is_string(options)) show_error($"{_where} :: options expected string", true);
	};
}

/**
 * @func ElementsFilterRegistration()
 * @param {Array[String]} _servlet_name_mappings
 * @param {Array[String]} _url_pattern_mappings
 * @param {String} _name
 * @param {String} _class_name
 * @param {Struct} _init_parameters
 */
function ElementsFilterRegistration(_servlet_name_mappings = undefined, _url_pattern_mappings = undefined, _name = undefined, _class_name = undefined, _init_parameters = undefined) constructor
{
	servletNameMappings = _servlet_name_mappings;
	urlPatternMappings = _url_pattern_mappings;
	name = _name;
	className = _class_name;
	initParameters = _init_parameters;
	
	static __uid = 2450995831;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsFilterRegistration.validate";
		
		if (!is_undefined(servletNameMappings) && !is_array(servletNameMappings)) show_error($"{_where} :: servletNameMappings expected string", true);
		if (!is_undefined(urlPatternMappings) && !is_array(urlPatternMappings)) show_error($"{_where} :: urlPatternMappings expected string", true);
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(className) && !is_string(className)) show_error($"{_where} :: className expected string", true);
		if (!is_undefined(initParameters) && !is_struct(initParameters)) show_error($"{_where} :: initParameters expected any", true);
	};
}

/**
 * @func ElementsTaglibDescriptor()
 * @param {String} _taglib_uri
 * @param {String} _taglib_location
 */
function ElementsTaglibDescriptor(_taglib_uri = undefined, _taglib_location = undefined) constructor
{
	taglibURI = _taglib_uri;
	taglibLocation = _taglib_location;
	
	static __uid = 2850202834;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsTaglibDescriptor.validate";
		
		if (!is_undefined(taglibURI) && !is_string(taglibURI)) show_error($"{_where} :: taglibURI expected string", true);
		if (!is_undefined(taglibLocation) && !is_string(taglibLocation)) show_error($"{_where} :: taglibLocation expected string", true);
	};
}

/**
 * @func ElementsJspPropertyGroupDescriptor()
 * @param {String} _buffer
 * @param {Array[String]} _url_patterns
 * @param {String} _el_ignored
 * @param {String} _is_xml
 * @param {String} _error_on_elnot_found
 * @param {String} _page_encoding
 * @param {String} _scripting_invalid
 * @param {Array[String]} _include_preludes
 * @param {Array[String]} _include_codas
 * @param {String} _default_content_type
 * @param {String} _trim_directive_whitespaces
 * @param {String} _error_on_undeclared_namespace
 * @param {String} _deferred_syntax_allowed_as_literal
 */
function ElementsJspPropertyGroupDescriptor(_buffer = undefined, _url_patterns = undefined, _el_ignored = undefined, _is_xml = undefined, _error_on_elnot_found = undefined, _page_encoding = undefined, _scripting_invalid = undefined, _include_preludes = undefined, _include_codas = undefined, _default_content_type = undefined, _trim_directive_whitespaces = undefined, _error_on_undeclared_namespace = undefined, _deferred_syntax_allowed_as_literal = undefined) constructor
{
	buffer = _buffer;
	urlPatterns = _url_patterns;
	elIgnored = _el_ignored;
	isXml = _is_xml;
	errorOnELNotFound = _error_on_elnot_found;
	pageEncoding = _page_encoding;
	scriptingInvalid = _scripting_invalid;
	includePreludes = _include_preludes;
	includeCodas = _include_codas;
	defaultContentType = _default_content_type;
	trimDirectiveWhitespaces = _trim_directive_whitespaces;
	errorOnUndeclaredNamespace = _error_on_undeclared_namespace;
	deferredSyntaxAllowedAsLiteral = _deferred_syntax_allowed_as_literal;
	
	static __uid = 1517789430;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsJspPropertyGroupDescriptor.validate";
		
		if (!is_undefined(buffer) && !is_string(buffer)) show_error($"{_where} :: buffer expected string", true);
		if (!is_undefined(urlPatterns) && !is_array(urlPatterns)) show_error($"{_where} :: urlPatterns expected string", true);
		if (!is_undefined(elIgnored) && !is_string(elIgnored)) show_error($"{_where} :: elIgnored expected string", true);
		if (!is_undefined(isXml) && !is_string(isXml)) show_error($"{_where} :: isXml expected string", true);
		if (!is_undefined(errorOnELNotFound) && !is_string(errorOnELNotFound)) show_error($"{_where} :: errorOnELNotFound expected string", true);
		if (!is_undefined(pageEncoding) && !is_string(pageEncoding)) show_error($"{_where} :: pageEncoding expected string", true);
		if (!is_undefined(scriptingInvalid) && !is_string(scriptingInvalid)) show_error($"{_where} :: scriptingInvalid expected string", true);
		if (!is_undefined(includePreludes) && !is_array(includePreludes)) show_error($"{_where} :: includePreludes expected string", true);
		if (!is_undefined(includeCodas) && !is_array(includeCodas)) show_error($"{_where} :: includeCodas expected string", true);
		if (!is_undefined(defaultContentType) && !is_string(defaultContentType)) show_error($"{_where} :: defaultContentType expected string", true);
		if (!is_undefined(trimDirectiveWhitespaces) && !is_string(trimDirectiveWhitespaces)) show_error($"{_where} :: trimDirectiveWhitespaces expected string", true);
		if (!is_undefined(errorOnUndeclaredNamespace) && !is_string(errorOnUndeclaredNamespace)) show_error($"{_where} :: errorOnUndeclaredNamespace expected string", true);
		if (!is_undefined(deferredSyntaxAllowedAsLiteral) && !is_string(deferredSyntaxAllowedAsLiteral)) show_error($"{_where} :: deferredSyntaxAllowedAsLiteral expected string", true);
	};
}

/**
 * @func ElementsJspConfigDescriptor()
 * @param {Array[Struct.ElementsTaglibDescriptor]} _taglibs
 * @param {Array[Struct.ElementsJspPropertyGroupDescriptor]} _jsp_property_groups
 */
function ElementsJspConfigDescriptor(_taglibs = undefined, _jsp_property_groups = undefined) constructor
{
	taglibs = _taglibs;
	jspPropertyGroups = _jsp_property_groups;
	
	static __uid = 2786006730;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsJspConfigDescriptor.validate";
		
		if (!is_undefined(taglibs) && !is_array(taglibs)) show_error($"{_where} :: taglibs expected ElementsTaglibDescriptor", true);
		if (!is_undefined(jspPropertyGroups) && !is_array(jspPropertyGroups)) show_error($"{_where} :: jspPropertyGroups expected ElementsJspPropertyGroupDescriptor", true);
	};
}

/**
 * @func ElementsSessionCookieConfig()
 * @param {String} _path
 * @param {String} _domain
 * @param {String} _name
 * @param {Struct} _attributes
 * @param {String} _comment
 * @param {Real} _http_only
 * @param {Real} _secure
 * @param {Real} _max_age
 */
function ElementsSessionCookieConfig(_path = undefined, _domain = undefined, _name = undefined, _attributes = undefined, _comment = undefined, _http_only = undefined, _secure = undefined, _max_age = undefined) constructor
{
	path = _path;
	domain = _domain;
	name = _name;
	attributes = _attributes;
	comment = _comment;
	httpOnly = _http_only;
	secure = _secure;
	maxAge = _max_age;
	
	static __uid = 3917227000;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsSessionCookieConfig.validate";
		
		if (!is_undefined(path) && !is_string(path)) show_error($"{_where} :: path expected string", true);
		if (!is_undefined(domain) && !is_string(domain)) show_error($"{_where} :: domain expected string", true);
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(attributes) && !is_struct(attributes)) show_error($"{_where} :: attributes expected any", true);
		if (!is_undefined(comment) && !is_string(comment)) show_error($"{_where} :: comment expected string", true);
		if (!is_undefined(httpOnly) && !is_real(httpOnly)) show_error($"{_where} :: httpOnly expected bool", true);
		if (!is_undefined(secure) && !is_real(secure)) show_error($"{_where} :: secure expected bool", true);
		if (!is_undefined(maxAge) && !is_real(maxAge)) show_error($"{_where} :: maxAge expected int32", true);
	};
}

/**
 * @func ElementsServletContext()
 * @param {Struct} _class_loader
 * @param {Real} _major_version
 * @param {Real} _minor_version
 * @param {String} _context_path
 * @param {String} _server_info
 * @param {Struct} _attribute_names
 * @param {String} _servlet_context_name
 * @param {Struct} _filter_registrations
 * @param {Struct.ElementsSessionCookieConfig} _session_cookie_config
 * @param {Struct.ElementsJspConfigDescriptor} _jsp_config_descriptor
 * @param {String} _virtual_server_name
 * @param {Real} _session_timeout
 * @param {Struct} _init_parameter_names
 * @param {Real} _effective_major_version
 * @param {Real} _effective_minor_version
 * @param {Struct} _servlet_registrations
 * @param {Array[String]} _session_tracking_modes  (one of: COOKIE | URL | SSL)
 * @param {Array[String]} _default_session_tracking_modes  (one of: COOKIE | URL | SSL)
 * @param {String} _request_character_encoding
 * @param {String} _response_character_encoding
 * @param {Array[String]} _effective_session_tracking_modes  (one of: COOKIE | URL | SSL)
 */
function ElementsServletContext(_class_loader = undefined, _major_version = undefined, _minor_version = undefined, _context_path = undefined, _server_info = undefined, _attribute_names = undefined, _servlet_context_name = undefined, _filter_registrations = undefined, _session_cookie_config = undefined, _jsp_config_descriptor = undefined, _virtual_server_name = undefined, _session_timeout = undefined, _init_parameter_names = undefined, _effective_major_version = undefined, _effective_minor_version = undefined, _servlet_registrations = undefined, _session_tracking_modes = undefined, _default_session_tracking_modes = undefined, _request_character_encoding = undefined, _response_character_encoding = undefined, _effective_session_tracking_modes = undefined) constructor
{
	classLoader = _class_loader;
	majorVersion = _major_version;
	minorVersion = _minor_version;
	contextPath = _context_path;
	serverInfo = _server_info;
	attributeNames = _attribute_names;
	servletContextName = _servlet_context_name;
	filterRegistrations = _filter_registrations;
	sessionCookieConfig = _session_cookie_config;
	jspConfigDescriptor = _jsp_config_descriptor;
	virtualServerName = _virtual_server_name;
	sessionTimeout = _session_timeout;
	initParameterNames = _init_parameter_names;
	effectiveMajorVersion = _effective_major_version;
	effectiveMinorVersion = _effective_minor_version;
	servletRegistrations = _servlet_registrations;
	sessionTrackingModes = _session_tracking_modes;
	defaultSessionTrackingModes = _default_session_tracking_modes;
	requestCharacterEncoding = _request_character_encoding;
	responseCharacterEncoding = _response_character_encoding;
	effectiveSessionTrackingModes = _effective_session_tracking_modes;
	
	static __uid = 1237754708;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsServletContext.validate";
		
		if (!is_undefined(classLoader) && !is_struct(classLoader)) show_error($"{_where} :: classLoader expected any", true);
		if (!is_undefined(majorVersion) && !is_real(majorVersion)) show_error($"{_where} :: majorVersion expected int32", true);
		if (!is_undefined(minorVersion) && !is_real(minorVersion)) show_error($"{_where} :: minorVersion expected int32", true);
		if (!is_undefined(contextPath) && !is_string(contextPath)) show_error($"{_where} :: contextPath expected string", true);
		if (!is_undefined(serverInfo) && !is_string(serverInfo)) show_error($"{_where} :: serverInfo expected string", true);
		if (!is_undefined(attributeNames) && !is_struct(attributeNames)) show_error($"{_where} :: attributeNames expected any", true);
		if (!is_undefined(servletContextName) && !is_string(servletContextName)) show_error($"{_where} :: servletContextName expected string", true);
		if (!is_undefined(filterRegistrations) && !is_struct(filterRegistrations)) show_error($"{_where} :: filterRegistrations expected any", true);
		if (!is_undefined(sessionCookieConfig))
		{
			if (!is_struct(sessionCookieConfig) || sessionCookieConfig[$ "__uid"] != 3917227000) show_error($"{_where} :: sessionCookieConfig expected ElementsSessionCookieConfig", true);
			sessionCookieConfig.validate(_where);
		}
		if (!is_undefined(jspConfigDescriptor))
		{
			if (!is_struct(jspConfigDescriptor) || jspConfigDescriptor[$ "__uid"] != 2786006730) show_error($"{_where} :: jspConfigDescriptor expected ElementsJspConfigDescriptor", true);
			jspConfigDescriptor.validate(_where);
		}
		if (!is_undefined(virtualServerName) && !is_string(virtualServerName)) show_error($"{_where} :: virtualServerName expected string", true);
		if (!is_undefined(sessionTimeout) && !is_real(sessionTimeout)) show_error($"{_where} :: sessionTimeout expected int32", true);
		if (!is_undefined(initParameterNames) && !is_struct(initParameterNames)) show_error($"{_where} :: initParameterNames expected any", true);
		if (!is_undefined(effectiveMajorVersion) && !is_real(effectiveMajorVersion)) show_error($"{_where} :: effectiveMajorVersion expected int32", true);
		if (!is_undefined(effectiveMinorVersion) && !is_real(effectiveMinorVersion)) show_error($"{_where} :: effectiveMinorVersion expected int32", true);
		if (!is_undefined(servletRegistrations) && !is_struct(servletRegistrations)) show_error($"{_where} :: servletRegistrations expected any", true);
		if (!is_undefined(sessionTrackingModes) && !is_array(sessionTrackingModes)) show_error($"{_where} :: sessionTrackingModes expected string", true);
		if (!is_undefined(defaultSessionTrackingModes) && !is_array(defaultSessionTrackingModes)) show_error($"{_where} :: defaultSessionTrackingModes expected string", true);
		if (!is_undefined(requestCharacterEncoding) && !is_string(requestCharacterEncoding)) show_error($"{_where} :: requestCharacterEncoding expected string", true);
		if (!is_undefined(responseCharacterEncoding) && !is_string(responseCharacterEncoding)) show_error($"{_where} :: responseCharacterEncoding expected string", true);
		if (!is_undefined(effectiveSessionTrackingModes) && !is_array(effectiveSessionTrackingModes)) show_error($"{_where} :: effectiveSessionTrackingModes expected string", true);
	};
}

/**
 * @func ElementsServletConfig()
 * @param {String} _servlet_name
 * @param {Struct.ElementsServletContext} _servlet_context
 * @param {Struct} _init_parameter_names
 */
function ElementsServletConfig(_servlet_name = undefined, _servlet_context = undefined, _init_parameter_names = undefined) constructor
{
	servletName = _servlet_name;
	servletContext = _servlet_context;
	initParameterNames = _init_parameter_names;
	
	static __uid = 1567316943;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsServletConfig.validate";
		
		if (!is_undefined(servletName) && !is_string(servletName)) show_error($"{_where} :: servletName expected string", true);
		if (!is_undefined(servletContext))
		{
			if (!is_struct(servletContext) || servletContext[$ "__uid"] != 1237754708) show_error($"{_where} :: servletContext expected ElementsServletContext", true);
			servletContext.validate(_where);
		}
		if (!is_undefined(initParameterNames) && !is_struct(initParameterNames)) show_error($"{_where} :: initParameterNames expected any", true);
	};
}

/**
 * @func ElementsServletRegistration()
 * @param {Array[String]} _mappings
 * @param {String} _run_as_role
 * @param {String} _name
 * @param {String} _class_name
 * @param {Struct} _init_parameters
 */
function ElementsServletRegistration(_mappings = undefined, _run_as_role = undefined, _name = undefined, _class_name = undefined, _init_parameters = undefined) constructor
{
	mappings = _mappings;
	runAsRole = _run_as_role;
	name = _name;
	className = _class_name;
	initParameters = _init_parameters;
	
	static __uid = 2131251856;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsServletRegistration.validate";
		
		if (!is_undefined(mappings) && !is_array(mappings)) show_error($"{_where} :: mappings expected string", true);
		if (!is_undefined(runAsRole) && !is_string(runAsRole)) show_error($"{_where} :: runAsRole expected string", true);
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(className) && !is_string(className)) show_error($"{_where} :: className expected string", true);
		if (!is_undefined(initParameters) && !is_struct(initParameters)) show_error($"{_where} :: initParameters expected any", true);
	};
}

/**
 * @func ElementsPaginationProfile()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsProfile]} _objects
 */
function ElementsPaginationProfile(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 2837551305;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationProfile.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsProfile", true);
	};
}

/**
 * @func ElementsCreateFollowerRequest()
 * @param {String} _followed_id The profile id which to follow.
 */
function ElementsCreateFollowerRequest(_followed_id) constructor
{
	followedId = _followed_id;
	
	static __uid = 3688830827;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateFollowerRequest.validate";
		
		if (!is_string(followedId)) show_error($"{_where} :: followedId expected string", true);
	};
}

/**
 * @func ElementsFriend()
 * @param {String} _id The unique ID of the friendship.
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {String} _friendship The friendship type. (one of: NONE | OUTGOING | INCOMING | MUTUAL)
 * @param {Array[Struct.ElementsProfile]} _profiles The profiles which are associated with the friend user.
 */
function ElementsFriend(_id = undefined, _user = undefined, _friendship = undefined, _profiles = undefined) constructor
{
	id = _id;
	user = _user;
	friendship = _friendship;
	profiles = _profiles;
	
	static __uid = 3456908228;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsFriend.validate";
		
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(user))
		{
			if (!is_struct(user) || user[$ "__uid"] != 3659328047) show_error($"{_where} :: user expected ElementsUser", true);
			user.validate(_where);
		}
		if (!is_undefined(friendship) && !is_string(friendship)) show_error($"{_where} :: friendship expected string", true);
		if (!is_undefined(profiles) && !is_array(profiles)) show_error($"{_where} :: profiles expected ElementsProfile", true);
	};
}

/**
 * @func ElementsPaginationFriend()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsFriend]} _objects
 */
function ElementsPaginationFriend(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 1063556852;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationFriend.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsFriend", true);
	};
}

/**
 * @func ElementsCreateItemRequest()
 * @param {String} _name
 * @param {String} _display_name
 * @param {String} _description
 * @param {String} _category  (one of: FUNGIBLE | DISTINCT)
 * @param {Array[String]} _tags
 * @param {String} _metadata_spec_id
 * @param {Struct} _metadata
 * @param {Real} _public_visible
 * @param {String} _metadata_spec
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
	
	static __uid = 237024536;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateItemRequest.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_string(category)) show_error($"{_where} :: category expected string", true);
		if (!is_undefined(tags) && !is_array(tags)) show_error($"{_where} :: tags expected string", true);
		if (!is_undefined(metadataSpecId) && !is_string(metadataSpecId)) show_error($"{_where} :: metadataSpecId expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
		if (!is_undefined(publicVisible) && !is_real(publicVisible)) show_error($"{_where} :: publicVisible expected bool", true);
		if (!is_undefined(metadataSpec) && !is_string(metadataSpec)) show_error($"{_where} :: metadataSpec expected string", true);
	};
}

/**
 * @func ElementsPaginationItem()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsItem]} _objects
 */
function ElementsPaginationItem(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 1268370515;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationItem.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsItem", true);
	};
}

/**
 * @func ElementsUpdateItemRequest()
 * @param {String} _name
 * @param {String} _display_name
 * @param {String} _description
 * @param {Array[String]} _tags
 * @param {Struct.ElementsMetadataSpec} _metadata_spec Represents a spec for metadata.
 * @param {Struct} _metadata
 * @param {Real} _public_visible
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
	
	static __uid = 1869501411;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateItemRequest.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_undefined(tags) && !is_array(tags)) show_error($"{_where} :: tags expected string", true);
		if (!is_undefined(metadataSpec))
		{
			if (!is_struct(metadataSpec) || metadataSpec[$ "__uid"] != 2450729354) show_error($"{_where} :: metadataSpec expected ElementsMetadataSpec", true);
			metadataSpec.validate(_where);
		}
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
		if (!is_undefined(publicVisible) && !is_real(publicVisible)) show_error($"{_where} :: publicVisible expected bool", true);
	};
}

/**
 * @func ElementsCreateGooglePlayIapReceipt()
 * @param {String} _package_name The package name of the app. Note that this may be different from the applicationId/uniqueIdentifier which is why it should be provided with the request.
 * @param {String} _product_id The product id purchased by the user, e.g. `com.namazustudios.example_app.pack_10_coins`.
 * @param {String} _purchase_token The token issued to the user upon successful Google Play purchase transaction.
 */
function ElementsCreateGooglePlayIapReceipt(_package_name, _product_id, _purchase_token) constructor
{
	packageName = _package_name;
	productId = _product_id;
	purchaseToken = _purchase_token;
	
	static __uid = 3895146603;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateGooglePlayIapReceipt.validate";
		
		if (!is_string(packageName)) show_error($"{_where} :: packageName expected string", true);
		if (!is_string(productId)) show_error($"{_where} :: productId expected string", true);
		if (!is_string(purchaseToken)) show_error($"{_where} :: purchaseToken expected string", true);
	};
}

/**
 * @func ElementsBuildIndexRequest()
 * @param {Real} _plan Set to true to plan the index building.
 * @param {Array[String]} _to_index Set to true to perform the index building. (one of: DISTINCT_INVENTORY_ITEM | METADATA)
 */
function ElementsBuildIndexRequest(_plan = undefined, _to_index = undefined) constructor
{
	plan = _plan;
	toIndex = _to_index;
	
	static __uid = 3607862009;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsBuildIndexRequest.validate";
		
		if (!is_undefined(plan) && !is_real(plan)) show_error($"{_where} :: plan expected bool", true);
		if (!is_undefined(toIndex) && !is_array(toIndex)) show_error($"{_where} :: toIndex expected string", true);
	};
}

/**
 * @func ElementsIndexMetadataObject()
 * @param {Struct} _identifier
 */
function ElementsIndexMetadataObject(_identifier = undefined) constructor
{
	identifier = _identifier;
	
	static __uid = 1917740402;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsIndexMetadataObject.validate";
		
		if (!is_undefined(identifier) && !is_struct(identifier)) show_error($"{_where} :: identifier expected any", true);
	};
}

/**
 * @func ElementsIndexPlanStepObject()
 * @param {String} _description
 * @param {String} _operation  (one of: CREATE | LEAVE_AS_IS | REPLACE | DELETE)
 * @param {Struct.ElementsIndexMetadataObject} _index_metadata
 */
function ElementsIndexPlanStepObject(_description = undefined, _operation = undefined, _index_metadata = undefined) constructor
{
	description = _description;
	operation = _operation;
	indexMetadata = _index_metadata;
	
	static __uid = 1790446614;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsIndexPlanStepObject.validate";
		
		if (!is_undefined(description) && !is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_undefined(operation) && !is_string(operation)) show_error($"{_where} :: operation expected string", true);
		if (!is_undefined(indexMetadata))
		{
			if (!is_struct(indexMetadata) || indexMetadata[$ "__uid"] != 1917740402) show_error($"{_where} :: indexMetadata expected ElementsIndexMetadataObject", true);
			indexMetadata.validate(_where);
		}
	};
}

/**
 * @func ElementsIndexPlanObject()
 * @param {String} _id
 * @param {String} _state  (one of: READY | PROCESSING | APPLIED)
 * @param {Struct.ElementsIndexPlanStepObject} _steps
 */
function ElementsIndexPlanObject(_id = undefined, _state = undefined, _steps = undefined) constructor
{
	id = _id;
	state = _state;
	steps = _steps;
	
	static __uid = 3114788464;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsIndexPlanObject.validate";
		
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(state) && !is_string(state)) show_error($"{_where} :: state expected string", true);
		if (!is_undefined(steps))
		{
			if (!is_struct(steps) || steps[$ "__uid"] != 1790446614) show_error($"{_where} :: steps expected ElementsIndexPlanStepObject", true);
			steps.validate(_where);
		}
	};
}

/**
 * @func ElementsPaginationIndexPlanObject()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsIndexPlanObject]} _objects
 */
function ElementsPaginationIndexPlanObject(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 979694720;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationIndexPlanObject.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsIndexPlanObject", true);
	};
}

/**
 * @func ElementsInventoryItem()
 * @param {String} _id The unique ID of the inventory item itself.
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {Struct.ElementsItem} _item The Item to be issued upon redemption.
 * @param {Real} _quantity The quantity of the Item in inventory
 * @param {Real} _priority The priority of this Item grouping in inventory (for stacked/packaged inventory support)
 */
function ElementsInventoryItem(_id, _user, _item, _quantity, _priority) constructor
{
	id = _id;
	user = _user;
	item = _item;
	quantity = _quantity;
	priority = _priority;
	
	static __uid = 3734850823;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsInventoryItem.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_struct(user) || user[$ "__uid"] != 3659328047) show_error($"{_where} :: user expected ElementsUser", true);
		user.validate(_where);
		if (!is_struct(item) || item[$ "__uid"] != 4093207011) show_error($"{_where} :: item expected ElementsItem", true);
		item.validate(_where);
		if (!is_real(quantity)) show_error($"{_where} :: quantity expected int32", true);
		if (!is_real(priority)) show_error($"{_where} :: priority expected int32", true);
	};
}

/**
 * @func ElementsAdvancedInventoryItemQuantityAdjustment()
 * @param {String} _user_id The User whose inventory to modify.ß
 * @param {Real} _quantity_delta The delta to be applied to the inventory item quantity (positive or negative)
 * @param {Real} _priority The priority slot for the item.
 */
function ElementsAdvancedInventoryItemQuantityAdjustment(_user_id, _quantity_delta, _priority = undefined) constructor
{
	userId = _user_id;
	quantityDelta = _quantity_delta;
	priority = _priority;
	
	static __uid = 1883903687;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsAdvancedInventoryItemQuantityAdjustment.validate";
		
		if (!is_string(userId)) show_error($"{_where} :: userId expected string", true);
		if (!is_real(quantityDelta)) show_error($"{_where} :: quantityDelta expected int32", true);
		if (!is_undefined(priority) && !is_real(priority)) show_error($"{_where} :: priority expected int32", true);
	};
}

/**
 * @func ElementsCreateAdvancedInventoryItemRequest()
 * @param {String} _user_id The User ID
 * @param {String} _item_id The item to reference.
 * @param {Real} _quantity The quantity of the Item in inventory
 * @param {Real} _priority The priority slot for the item.
 */
function ElementsCreateAdvancedInventoryItemRequest(_user_id, _item_id, _quantity = undefined, _priority = undefined) constructor
{
	userId = _user_id;
	itemId = _item_id;
	quantity = _quantity;
	priority = _priority;
	
	static __uid = 47663290;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateAdvancedInventoryItemRequest.validate";
		
		if (!is_string(userId)) show_error($"{_where} :: userId expected string", true);
		if (!is_string(itemId)) show_error($"{_where} :: itemId expected string", true);
		if (!is_undefined(quantity) && !is_real(quantity)) show_error($"{_where} :: quantity expected int32", true);
		if (!is_undefined(priority) && !is_real(priority)) show_error($"{_where} :: priority expected int32", true);
	};
}

/**
 * @func ElementsPaginationInventoryItem()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsInventoryItem]} _objects
 */
function ElementsPaginationInventoryItem(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 2229832663;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationInventoryItem.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsInventoryItem", true);
	};
}

/**
 * @func ElementsUpdateInventoryItemRequest()
 * @param {Real} _quantity The quantity of the Item in inventory
 */
function ElementsUpdateInventoryItemRequest(_quantity = undefined) constructor
{
	quantity = _quantity;
	
	static __uid = 3290562721;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateInventoryItemRequest.validate";
		
		if (!is_undefined(quantity) && !is_real(quantity)) show_error($"{_where} :: quantity expected int32", true);
	};
}

/**
 * @func ElementsDistinctInventoryItem()
 * @param {String} _id The unique ID of the inventory item itself.
 * @param {Struct.ElementsItem} _item The Item to be issued upon redemption.
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {Struct.ElementsProfile} _profile
 * @param {Struct} _metadata
 */
function ElementsDistinctInventoryItem(_id, _item, _user, _profile = undefined, _metadata = undefined) constructor
{
	id = _id;
	item = _item;
	user = _user;
	profile = _profile;
	metadata = _metadata;
	
	static __uid = 1569052279;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsDistinctInventoryItem.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_struct(item) || item[$ "__uid"] != 4093207011) show_error($"{_where} :: item expected ElementsItem", true);
		item.validate(_where);
		if (!is_struct(user) || user[$ "__uid"] != 3659328047) show_error($"{_where} :: user expected ElementsUser", true);
		user.validate(_where);
		if (!is_undefined(profile))
		{
			if (!is_struct(profile) || profile[$ "__uid"] != 2781117785) show_error($"{_where} :: profile expected ElementsProfile", true);
			profile.validate(_where);
		}
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsCreateDistinctInventoryItemRequest()
 * @param {String} _item_id The digital goods item id.
 * @param {String} _user_id The id of the User owning this inventory item id.
 * @param {String} _profile_id The the profileid of hte Profile owning this inventory item.
 * @param {Struct} _metadata
 */
function ElementsCreateDistinctInventoryItemRequest(_item_id, _user_id = undefined, _profile_id = undefined, _metadata = undefined) constructor
{
	itemId = _item_id;
	userId = _user_id;
	profileId = _profile_id;
	metadata = _metadata;
	
	static __uid = 3579304364;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateDistinctInventoryItemRequest.validate";
		
		if (!is_string(itemId)) show_error($"{_where} :: itemId expected string", true);
		if (!is_undefined(userId) && !is_string(userId)) show_error($"{_where} :: userId expected string", true);
		if (!is_undefined(profileId) && !is_string(profileId)) show_error($"{_where} :: profileId expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsPaginationDistinctInventoryItem()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsDistinctInventoryItem]} _objects
 */
function ElementsPaginationDistinctInventoryItem(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 4046435111;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationDistinctInventoryItem.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsDistinctInventoryItem", true);
	};
}

/**
 * @func ElementsUpdateDistinctInventoryItemRequest()
 * @param {String} _user_id The id of the User owning this inventory item id.
 * @param {String} _profile_id The the profile id of hte Profile owning this inventory item.
 * @param {Struct} _metadata
 */
function ElementsUpdateDistinctInventoryItemRequest(_user_id = undefined, _profile_id = undefined, _metadata = undefined) constructor
{
	userId = _user_id;
	profileId = _profile_id;
	metadata = _metadata;
	
	static __uid = 3687348073;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateDistinctInventoryItemRequest.validate";
		
		if (!is_undefined(userId) && !is_string(userId)) show_error($"{_where} :: userId expected string", true);
		if (!is_undefined(profileId) && !is_string(profileId)) show_error($"{_where} :: profileId expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsSimpleInventoryItemQuantityAdjustment()
 * @param {String} _user_id The User whose inventory to modify.ß
 * @param {Real} _quantity_delta The delta to be applied to the inventory item quantity (positive or negative)
 */
function ElementsSimpleInventoryItemQuantityAdjustment(_user_id, _quantity_delta) constructor
{
	userId = _user_id;
	quantityDelta = _quantity_delta;
	
	static __uid = 2663745631;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsSimpleInventoryItemQuantityAdjustment.validate";
		
		if (!is_string(userId)) show_error($"{_where} :: userId expected string", true);
		if (!is_real(quantityDelta)) show_error($"{_where} :: quantityDelta expected int32", true);
	};
}

/**
 * @func ElementsCreateSimpleInventoryItemRequest()
 * @param {String} _user_id The User ID
 * @param {String} _item_id The item to reference.
 * @param {Real} _quantity The quantity of the Item in inventory
 */
function ElementsCreateSimpleInventoryItemRequest(_user_id, _item_id, _quantity = undefined) constructor
{
	userId = _user_id;
	itemId = _item_id;
	quantity = _quantity;
	
	static __uid = 2410874866;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateSimpleInventoryItemRequest.validate";
		
		if (!is_string(userId)) show_error($"{_where} :: userId expected string", true);
		if (!is_string(itemId)) show_error($"{_where} :: itemId expected string", true);
		if (!is_undefined(quantity) && !is_real(quantity)) show_error($"{_where} :: quantity expected int32", true);
	};
}

/**
 * @func ElementsPhoneMatchedInvitation()
 * @param {String} _phone_number Phone number
 * @param {Array[String]} _profile_ids The list of profile Ids that phone was matched
 */
function ElementsPhoneMatchedInvitation(_phone_number = undefined, _profile_ids = undefined) constructor
{
	phoneNumber = _phone_number;
	profileIds = _profile_ids;
	
	static __uid = 2134716855;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPhoneMatchedInvitation.validate";
		
		if (!is_undefined(phoneNumber) && !is_string(phoneNumber)) show_error($"{_where} :: phoneNumber expected string", true);
		if (!is_undefined(profileIds) && !is_array(profileIds)) show_error($"{_where} :: profileIds expected string", true);
	};
}

/**
 * @func ElementsInviteViaPhonesResponse()
 * @param {Array[Struct.ElementsPhoneMatchedInvitation]} _matched The list of objects representing matched phone numbers
 */
function ElementsInviteViaPhonesResponse(_matched = undefined) constructor
{
	matched = _matched;
	
	static __uid = 327620137;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsInviteViaPhonesResponse.validate";
		
		if (!is_undefined(matched) && !is_array(matched)) show_error($"{_where} :: matched expected ElementsPhoneMatchedInvitation", true);
	};
}

/**
 * @func ElementsInviteViaPhonesRequest()
 * @param {Array[String]} _phone_numbers The list of phone numbers
 */
function ElementsInviteViaPhonesRequest(_phone_numbers = undefined) constructor
{
	phoneNumbers = _phone_numbers;
	
	static __uid = 1104981419;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsInviteViaPhonesRequest.validate";
		
		if (!is_undefined(phoneNumbers) && !is_array(phoneNumbers)) show_error($"{_where} :: phoneNumbers expected string", true);
	};
}

/**
 * @func ElementsSubjects()
 * @param {Array[Struct.ElementsUser]} _users Users which may perform the operations.
 * @param {Array[Struct.ElementsProfile]} _profiles Profiles, which owners may perform the operations.
 * @param {Real} _wildcard Flag to check who may perform the operations. True if all users may access the object.
 */
function ElementsSubjects(_users, _profiles, _wildcard = undefined) constructor
{
	users = _users;
	profiles = _profiles;
	wildcard = _wildcard;
	
	static __uid = 2496068805;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsSubjects.validate";
		
		if (!is_array(users)) show_error($"{_where} :: users expected ElementsUser", true);
		if (!is_array(profiles)) show_error($"{_where} :: profiles expected ElementsProfile", true);
		if (!is_undefined(wildcard) && !is_real(wildcard)) show_error($"{_where} :: wildcard expected bool", true);
	};
}

/**
 * @func ElementsAccessPermissions()
 * @param {Struct.ElementsSubjects} _read Subjects allowed to delete
 * @param {Struct.ElementsSubjects} _write Subjects allowed to delete
 * @param {Struct.ElementsSubjects} _delete Subjects allowed to delete
 */
function ElementsAccessPermissions(_read, _write, _delete) constructor
{
	read = _read;
	write = _write;
	self[$ "delete"] = _delete;
	
	static __uid = 2973285710;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsAccessPermissions.validate";
		
		if (!is_struct(read) || read[$ "__uid"] != 2496068805) show_error($"{_where} :: read expected ElementsSubjects", true);
		read.validate(_where);
		if (!is_struct(write) || write[$ "__uid"] != 2496068805) show_error($"{_where} :: write expected ElementsSubjects", true);
		write.validate(_where);
		if (!is_struct(self[$ "delete"]) || self[$ "delete"][$ "__uid"] != 2496068805) show_error($"{_where} :: self[$ 'delete'] expected ElementsSubjects", true);
		self[$ "delete"].validate(_where);
	};
}

/**
 * @func ElementsLargeObject()
 * @param {String} _id The unique ID of the LargeObject.
 * @param {String} _path The path to the file in the underlying bucket.
 * @param {Struct.ElementsAccessPermissions} _access_permissions Permission associated with LargeObject.
 * @param {String} _url The URL where the binary contents of the LargeObject may be read. May be null, since Path param or Id is pointer for object.
 * @param {String} _mime_type The MIME type of the LargeObject.
 * @param {String} _state Current state of large object (one of: EMPTY | UPLOADED)
 * @param {String} _last_modified Date of last modification
 */
function ElementsLargeObject(_id, _path, _access_permissions, _url = undefined, _mime_type = undefined, _state = undefined, _last_modified = undefined) constructor
{
	id = _id;
	path = _path;
	accessPermissions = _access_permissions;
	url = _url;
	mimeType = _mime_type;
	state = _state;
	lastModified = _last_modified;
	
	static __uid = 1507148560;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsLargeObject.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(path)) show_error($"{_where} :: path expected string", true);
		if (!is_struct(accessPermissions) || accessPermissions[$ "__uid"] != 2973285710) show_error($"{_where} :: accessPermissions expected ElementsAccessPermissions", true);
		accessPermissions.validate(_where);
		if (!is_undefined(url) && !is_string(url)) show_error($"{_where} :: url expected string", true);
		if (!is_undefined(mimeType) && !is_string(mimeType)) show_error($"{_where} :: mimeType expected string", true);
		if (!is_undefined(state) && !is_string(state)) show_error($"{_where} :: state expected string", true);
		if (!is_undefined(lastModified) && !is_string(lastModified)) show_error($"{_where} :: lastModified expected string", true);
	};
}

/**
 * @func ElementsContentDisposition()
 * @param {String} _type
 * @param {Struct} _parameters
 * @param {String} _file_name
 * @param {String} _creation_date
 * @param {String} _modification_date
 * @param {String} _read_date
 * @param {Real} _size
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
	
	static __uid = 3348494808;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsContentDisposition.validate";
		
		if (!is_undefined(type) && !is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_undefined(parameters) && !is_struct(parameters)) show_error($"{_where} :: parameters expected any", true);
		if (!is_undefined(fileName) && !is_string(fileName)) show_error($"{_where} :: fileName expected string", true);
		if (!is_undefined(creationDate) && !is_string(creationDate)) show_error($"{_where} :: creationDate expected string", true);
		if (!is_undefined(modificationDate) && !is_string(modificationDate)) show_error($"{_where} :: modificationDate expected string", true);
		if (!is_undefined(readDate) && !is_string(readDate)) show_error($"{_where} :: readDate expected string", true);
		if (!is_undefined(size) && !is_real(size)) show_error($"{_where} :: size expected int64", true);
	};
}

/**
 * @func ElementsMediaType()
 * @param {String} _type
 * @param {String} _subtype
 * @param {Struct} _parameters
 * @param {Real} _wildcard_type
 * @param {Real} _wildcard_subtype
 */
function ElementsMediaType(_type = undefined, _subtype = undefined, _parameters = undefined, _wildcard_type = undefined, _wildcard_subtype = undefined) constructor
{
	type = _type;
	subtype = _subtype;
	parameters = _parameters;
	wildcardType = _wildcard_type;
	wildcardSubtype = _wildcard_subtype;
	
	static __uid = 2965425192;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMediaType.validate";
		
		if (!is_undefined(type) && !is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_undefined(subtype) && !is_string(subtype)) show_error($"{_where} :: subtype expected string", true);
		if (!is_undefined(parameters) && !is_struct(parameters)) show_error($"{_where} :: parameters expected any", true);
		if (!is_undefined(wildcardType) && !is_real(wildcardType)) show_error($"{_where} :: wildcardType expected bool", true);
		if (!is_undefined(wildcardSubtype) && !is_real(wildcardSubtype)) show_error($"{_where} :: wildcardSubtype expected bool", true);
	};
}

/**
 * @func ElementsMultiPart()
 * @param {Struct.ElementsContentDisposition} _content_disposition
 * @param {Struct} _entity
 * @param {Struct} _headers
 * @param {Struct.ElementsMediaType} _media_type
 * @param {Struct} _message_body_workers
 * @param {Struct.ElementsMultiPart} _parent
 * @param {Struct} _providers
 * @param {Array[Struct.ElementsBodyPart]} _body_parts
 * @param {Struct} _parameterized_headers
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
	
	static __uid = 2058815728;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMultiPart.validate";
		
		if (!is_undefined(contentDisposition))
		{
			if (!is_struct(contentDisposition) || contentDisposition[$ "__uid"] != 3348494808) show_error($"{_where} :: contentDisposition expected ElementsContentDisposition", true);
			contentDisposition.validate(_where);
		}
		if (!is_undefined(entity) && !is_struct(entity)) show_error($"{_where} :: entity expected any", true);
		if (!is_undefined(headers) && !is_struct(headers)) show_error($"{_where} :: headers expected any", true);
		if (!is_undefined(mediaType))
		{
			if (!is_struct(mediaType) || mediaType[$ "__uid"] != 2965425192) show_error($"{_where} :: mediaType expected ElementsMediaType", true);
			mediaType.validate(_where);
		}
		if (!is_undefined(messageBodyWorkers) && !is_struct(messageBodyWorkers)) show_error($"{_where} :: messageBodyWorkers expected any", true);
		if (!is_undefined(parent))
		{
			if (!is_struct(parent) || parent[$ "__uid"] != 2058815728) show_error($"{_where} :: parent expected ElementsMultiPart", true);
			parent.validate(_where);
		}
		if (!is_undefined(providers) && !is_struct(providers)) show_error($"{_where} :: providers expected any", true);
		if (!is_undefined(bodyParts) && !is_array(bodyParts)) show_error($"{_where} :: bodyParts expected ElementsBodyPart", true);
		if (!is_undefined(parameterizedHeaders) && !is_struct(parameterizedHeaders)) show_error($"{_where} :: parameterizedHeaders expected any", true);
	};
}

/**
 * @func ElementsBodyPart()
 * @param {Struct.ElementsContentDisposition} _content_disposition
 * @param {Struct} _entity
 * @param {Struct} _headers
 * @param {Struct.ElementsMediaType} _media_type
 * @param {Struct} _message_body_workers
 * @param {Struct.ElementsMultiPart} _parent
 * @param {Struct} _providers
 * @param {Struct} _parameterized_headers
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
	
	static __uid = 447283613;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsBodyPart.validate";
		
		if (!is_undefined(contentDisposition))
		{
			if (!is_struct(contentDisposition) || contentDisposition[$ "__uid"] != 3348494808) show_error($"{_where} :: contentDisposition expected ElementsContentDisposition", true);
			contentDisposition.validate(_where);
		}
		if (!is_undefined(entity) && !is_struct(entity)) show_error($"{_where} :: entity expected any", true);
		if (!is_undefined(headers) && !is_struct(headers)) show_error($"{_where} :: headers expected any", true);
		if (!is_undefined(mediaType))
		{
			if (!is_struct(mediaType) || mediaType[$ "__uid"] != 2965425192) show_error($"{_where} :: mediaType expected ElementsMediaType", true);
			mediaType.validate(_where);
		}
		if (!is_undefined(messageBodyWorkers) && !is_struct(messageBodyWorkers)) show_error($"{_where} :: messageBodyWorkers expected any", true);
		if (!is_undefined(parent))
		{
			if (!is_struct(parent) || parent[$ "__uid"] != 2058815728) show_error($"{_where} :: parent expected ElementsMultiPart", true);
			parent.validate(_where);
		}
		if (!is_undefined(providers) && !is_struct(providers)) show_error($"{_where} :: providers expected any", true);
		if (!is_undefined(parameterizedHeaders) && !is_struct(parameterizedHeaders)) show_error($"{_where} :: parameterizedHeaders expected any", true);
	};
}

/**
 * @func ElementsFormDataContentDisposition()
 * @param {String} _type
 * @param {Struct} _parameters
 * @param {String} _file_name
 * @param {String} _creation_date
 * @param {String} _modification_date
 * @param {String} _read_date
 * @param {Real} _size
 * @param {String} _name
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
	
	static __uid = 3002688906;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsFormDataContentDisposition.validate";
		
		if (!is_undefined(type) && !is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_undefined(parameters) && !is_struct(parameters)) show_error($"{_where} :: parameters expected any", true);
		if (!is_undefined(fileName) && !is_string(fileName)) show_error($"{_where} :: fileName expected string", true);
		if (!is_undefined(creationDate) && !is_string(creationDate)) show_error($"{_where} :: creationDate expected string", true);
		if (!is_undefined(modificationDate) && !is_string(modificationDate)) show_error($"{_where} :: modificationDate expected string", true);
		if (!is_undefined(readDate) && !is_string(readDate)) show_error($"{_where} :: readDate expected string", true);
		if (!is_undefined(size) && !is_real(size)) show_error($"{_where} :: size expected int64", true);
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
	};
}

/**
 * @func ElementsFormDataBodyPart()
 * @param {Struct.ElementsContentDisposition} _content_disposition
 * @param {Struct} _entity
 * @param {Struct} _headers
 * @param {Struct.ElementsMediaType} _media_type
 * @param {Struct} _message_body_workers
 * @param {Struct.ElementsMultiPart} _parent
 * @param {Struct} _providers
 * @param {String} _name
 * @param {String} _value
 * @param {Struct} _content
 * @param {String} _file_name
 * @param {Real} _simple
 * @param {Struct.ElementsFormDataContentDisposition} _form_data_content_disposition
 * @param {Struct} _parameterized_headers
 */
function ElementsFormDataBodyPart(_content_disposition = undefined, _entity = undefined, _headers = undefined, _media_type = undefined, _message_body_workers = undefined, _parent = undefined, _providers = undefined, _name = undefined, _value = undefined, _content = undefined, _file_name = undefined, _simple = undefined, _form_data_content_disposition = undefined, _parameterized_headers = undefined) constructor
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
	simple = _simple;
	formDataContentDisposition = _form_data_content_disposition;
	parameterizedHeaders = _parameterized_headers;
	
	static __uid = 3006869975;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsFormDataBodyPart.validate";
		
		if (!is_undefined(contentDisposition))
		{
			if (!is_struct(contentDisposition) || contentDisposition[$ "__uid"] != 3348494808) show_error($"{_where} :: contentDisposition expected ElementsContentDisposition", true);
			contentDisposition.validate(_where);
		}
		if (!is_undefined(entity) && !is_struct(entity)) show_error($"{_where} :: entity expected any", true);
		if (!is_undefined(headers) && !is_struct(headers)) show_error($"{_where} :: headers expected any", true);
		if (!is_undefined(mediaType))
		{
			if (!is_struct(mediaType) || mediaType[$ "__uid"] != 2965425192) show_error($"{_where} :: mediaType expected ElementsMediaType", true);
			mediaType.validate(_where);
		}
		if (!is_undefined(messageBodyWorkers) && !is_struct(messageBodyWorkers)) show_error($"{_where} :: messageBodyWorkers expected any", true);
		if (!is_undefined(parent))
		{
			if (!is_struct(parent) || parent[$ "__uid"] != 2058815728) show_error($"{_where} :: parent expected ElementsMultiPart", true);
			parent.validate(_where);
		}
		if (!is_undefined(providers) && !is_struct(providers)) show_error($"{_where} :: providers expected any", true);
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(value) && !is_string(value)) show_error($"{_where} :: value expected string", true);
		if (!is_undefined(content) && !is_struct(content)) show_error($"{_where} :: content expected any", true);
		if (!is_undefined(fileName) && !is_string(fileName)) show_error($"{_where} :: fileName expected string", true);
		if (!is_undefined(simple) && !is_real(simple)) show_error($"{_where} :: simple expected bool", true);
		if (!is_undefined(formDataContentDisposition))
		{
			if (!is_struct(formDataContentDisposition) || formDataContentDisposition[$ "__uid"] != 3002688906) show_error($"{_where} :: formDataContentDisposition expected ElementsFormDataContentDisposition", true);
			formDataContentDisposition.validate(_where);
		}
		if (!is_undefined(parameterizedHeaders) && !is_struct(parameterizedHeaders)) show_error($"{_where} :: parameterizedHeaders expected any", true);
	};
}

/**
 * @func ElementsMultivaluedMapStringParameterizedHeader()
 * @param {Real} _empty
 */
function ElementsMultivaluedMapStringParameterizedHeader(_empty = undefined) constructor
{
	empty = _empty;
	
	static __uid = 152531087;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMultivaluedMapStringParameterizedHeader.validate";
		
		if (!is_undefined(empty) && !is_real(empty)) show_error($"{_where} :: empty expected bool", true);
	};
}

/**
 * @func ElementsMultivaluedMapStringString()
 * @param {Real} _empty
 */
function ElementsMultivaluedMapStringString(_empty = undefined) constructor
{
	empty = _empty;
	
	static __uid = 688317732;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMultivaluedMapStringString.validate";
		
		if (!is_undefined(empty) && !is_real(empty)) show_error($"{_where} :: empty expected bool", true);
	};
}

/**
 * @func ElementsParameterizedHeader()
 * @param {String} _value
 * @param {Struct} _parameters
 */
function ElementsParameterizedHeader(_value = undefined, _parameters = undefined) constructor
{
	value = _value;
	parameters = _parameters;
	
	static __uid = 323724984;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsParameterizedHeader.validate";
		
		if (!is_undefined(value) && !is_string(value)) show_error($"{_where} :: value expected string", true);
		if (!is_undefined(parameters) && !is_struct(parameters)) show_error($"{_where} :: parameters expected any", true);
	};
}

/**
 * @func ElementsSubjectRequest()
 * @param {Array[String]} _user_ids A List of all UserIds which can operate against the LargeObject.
 * @param {Array[String]} _profile_ids A List of all ProfileIds which can operate against the LargeObject.
 * @param {Real} _wildcard Flag to check who may perform the operation. If true, all anonymous users may perform the operation.
 */
function ElementsSubjectRequest(_user_ids, _profile_ids, _wildcard = undefined) constructor
{
	userIds = _user_ids;
	profileIds = _profile_ids;
	wildcard = _wildcard;
	
	static __uid = 2207841901;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsSubjectRequest.validate";
		
		if (!is_array(userIds)) show_error($"{_where} :: userIds expected string", true);
		if (!is_array(profileIds)) show_error($"{_where} :: profileIds expected string", true);
		if (!is_undefined(wildcard) && !is_real(wildcard)) show_error($"{_where} :: wildcard expected bool", true);
	};
}

/**
 * @func ElementsCreateLargeObjectRequest()
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
	
	static __uid = 1592293949;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateLargeObjectRequest.validate";
		
		if (!is_string(mimeType)) show_error($"{_where} :: mimeType expected string", true);
		if (!is_struct(read) || read[$ "__uid"] != 2207841901) show_error($"{_where} :: read expected ElementsSubjectRequest", true);
		read.validate(_where);
		if (!is_struct(write) || write[$ "__uid"] != 2207841901) show_error($"{_where} :: write expected ElementsSubjectRequest", true);
		write.validate(_where);
		if (!is_struct(self[$ "delete"]) || self[$ "delete"][$ "__uid"] != 2207841901) show_error($"{_where} :: self[$ 'delete'] expected ElementsSubjectRequest", true);
		self[$ "delete"].validate(_where);
	};
}

/**
 * @func ElementsCreateLargeObjectFromUrlRequest()
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
	
	static __uid = 117731378;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateLargeObjectFromUrlRequest.validate";
		
		if (!is_string(mimeType)) show_error($"{_where} :: mimeType expected string", true);
		if (!is_struct(read) || read[$ "__uid"] != 2207841901) show_error($"{_where} :: read expected ElementsSubjectRequest", true);
		read.validate(_where);
		if (!is_struct(write) || write[$ "__uid"] != 2207841901) show_error($"{_where} :: write expected ElementsSubjectRequest", true);
		write.validate(_where);
		if (!is_struct(self[$ "delete"]) || self[$ "delete"][$ "__uid"] != 2207841901) show_error($"{_where} :: self[$ 'delete'] expected ElementsSubjectRequest", true);
		self[$ "delete"].validate(_where);
		if (!is_string(fileUrl)) show_error($"{_where} :: fileUrl expected string", true);
	};
}

/**
 * @func ElementsUpdateLargeObjectRequest()
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
	
	static __uid = 1646762996;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateLargeObjectRequest.validate";
		
		if (!is_string(mimeType)) show_error($"{_where} :: mimeType expected string", true);
		if (!is_struct(read) || read[$ "__uid"] != 2207841901) show_error($"{_where} :: read expected ElementsSubjectRequest", true);
		read.validate(_where);
		if (!is_struct(write) || write[$ "__uid"] != 2207841901) show_error($"{_where} :: write expected ElementsSubjectRequest", true);
		write.validate(_where);
		if (!is_struct(self[$ "delete"]) || self[$ "delete"][$ "__uid"] != 2207841901) show_error($"{_where} :: self[$ 'delete'] expected ElementsSubjectRequest", true);
		self[$ "delete"].validate(_where);
	};
}

/**
 * @func ElementsLeaderboard()
 * @param {String} _name The name of the leaderboard.  This must be unique across all leaderboards.
 * @param {String} _time_strategy_type The time strategy for the leaderboard. Current options are ALL_TIME and EPOCHAL. (one of: ALL_TIME | EPOCHAL)
 * @param {String} _score_strategy_type The score strategy for the leaderboard. Current options are OVERWRITE_IF_GREATER and ACCUMULATE. (one of: OVERWRITE_IF_GREATER | ACCUMULATE)
 * @param {String} _title The user-presentable name or title for for the leaderboard.
 * @param {String} _score_units The units-of measure for the score type of the leaderboard.
 * @param {String} _id
 * @param {Real} _first_epoch_timestamp The time at which the leaderboard epoch intervals should begin (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then epochInterval must also be provided.
 * @param {Real} _epoch_interval The duration for a leaderboard epoch interval (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then firstEpochTimestamp must also be provided.
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
	
	static __uid = 2694437395;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsLeaderboard.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(timeStrategyType)) show_error($"{_where} :: timeStrategyType expected string", true);
		if (!is_string(scoreStrategyType)) show_error($"{_where} :: scoreStrategyType expected string", true);
		if (!is_string(title)) show_error($"{_where} :: title expected string", true);
		if (!is_string(scoreUnits)) show_error($"{_where} :: scoreUnits expected string", true);
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(firstEpochTimestamp) && !is_real(firstEpochTimestamp)) show_error($"{_where} :: firstEpochTimestamp expected int64", true);
		if (!is_undefined(epochInterval) && !is_real(epochInterval)) show_error($"{_where} :: epochInterval expected int64", true);
	};
}

/**
 * @func ElementsPaginationLeaderboard()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsLeaderboard]} _objects
 */
function ElementsPaginationLeaderboard(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 2975129155;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationLeaderboard.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsLeaderboard", true);
	};
}

/**
 * @func ElementsScore()
 * @param {String} _id The ID of the Score
 * @param {Struct.ElementsProfile} _profile
 * @param {Real} _creation_timestamp The time at which the score was created on the server.
 * @param {Real} _leaderboard_epoch The epoch to which the score belongs for the associated leaderboard. By convention, if the leaderboard is all-time, this value will be set to zero.
 * @param {Real} _point_value The point value of the score.
 * @param {String} _score_units The the units of measure for the points.  For example, if the points in the game were called "coins" instead of "points" this would be used to designate as such in the UI.
 */
function ElementsScore(_id, _profile, _creation_timestamp, _leaderboard_epoch, _point_value = undefined, _score_units = undefined) constructor
{
	id = _id;
	profile = _profile;
	creationTimestamp = _creation_timestamp;
	leaderboardEpoch = _leaderboard_epoch;
	pointValue = _point_value;
	scoreUnits = _score_units;
	
	static __uid = 3673458198;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsScore.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_struct(profile) || profile[$ "__uid"] != 2781117785) show_error($"{_where} :: profile expected ElementsProfile", true);
		profile.validate(_where);
		if (!is_real(creationTimestamp)) show_error($"{_where} :: creationTimestamp expected int64", true);
		if (!is_real(leaderboardEpoch)) show_error($"{_where} :: leaderboardEpoch expected int64", true);
		if (!is_undefined(pointValue) && !is_real(pointValue)) show_error($"{_where} :: pointValue expected double", true);
		if (!is_undefined(scoreUnits) && !is_string(scoreUnits)) show_error($"{_where} :: scoreUnits expected string", true);
	};
}

/**
 * @func ElementsRank()
 * @param {Struct.ElementsScore} _score
 * @param {Real} _position The position of the associated score in the result set.
 */
function ElementsRank(_score, _position = undefined) constructor
{
	score = _score;
	position = _position;
	
	static __uid = 1348532098;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsRank.validate";
		
		if (!is_struct(score) || score[$ "__uid"] != 3673458198) show_error($"{_where} :: score expected ElementsScore", true);
		score.validate(_where);
		if (!is_undefined(position) && !is_real(position)) show_error($"{_where} :: position expected int64", true);
	};
}

/**
 * @func ElementsPaginationRank()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsRank]} _objects
 */
function ElementsPaginationRank(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 2379354738;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationRank.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsRank", true);
	};
}

/**
 * @func ElementsRankRow()
 * @param {String} _profile_id The profile ID of the user who holds this rank.
 * @param {String} _profile_display_name The profile display name of the user who holds this rank.
 * @param {String} _profile_image_url The profile image url of the user who holds this rank.
 * @param {Real} _last_login The last login.
 * @param {String} _id The ID of the Score
 * @param {Real} _position The position of the associated score in the result set.
 * @param {Real} _point_value The point value of the score.
 * @param {String} _score_units The the units of measure for the points.  For example, if the points in the game were called "coins" instead of "points" this would be used to designate as such in the UI.
 * @param {Real} _creation_timestamp The time at which the score was created on the server.
 * @param {Real} _leaderboard_epoch The epoch to which the score belongs for the associated leaderboard. By convention, if the leaderboard is all-time, this value will be set to zero.
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
	
	static __uid = 1153839310;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsRankRow.validate";
		
		if (!is_string(profileId)) show_error($"{_where} :: profileId expected string", true);
		if (!is_string(profileDisplayName)) show_error($"{_where} :: profileDisplayName expected string", true);
		if (!is_string(profileImageUrl)) show_error($"{_where} :: profileImageUrl expected string", true);
		if (!is_real(lastLogin)) show_error($"{_where} :: lastLogin expected int64", true);
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(position) && !is_real(position)) show_error($"{_where} :: position expected int64", true);
		if (!is_undefined(pointValue) && !is_real(pointValue)) show_error($"{_where} :: pointValue expected double", true);
		if (!is_undefined(scoreUnits) && !is_string(scoreUnits)) show_error($"{_where} :: scoreUnits expected string", true);
		if (!is_undefined(creationTimestamp) && !is_real(creationTimestamp)) show_error($"{_where} :: creationTimestamp expected int64", true);
		if (!is_undefined(leaderboardEpoch) && !is_real(leaderboardEpoch)) show_error($"{_where} :: leaderboardEpoch expected int64", true);
	};
}

/**
 * @func ElementsTabulationRankRow()
 * @param {Array[Struct.ElementsRankRow]} _rows
 */
function ElementsTabulationRankRow(_rows) constructor
{
	rows = _rows;
	
	static __uid = 987292919;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsTabulationRankRow.validate";
		
		if (!is_array(rows)) show_error($"{_where} :: rows expected ElementsRankRow", true);
	};
}

/**
 * @func ElementsMatch()
 * @param {String} _scheme The scheme to use when matching with other players.
 * @param {Struct.ElementsProfile} _player
 * @param {String} _id The unique ID of the match.
 * @param {String} _scope An optional scope for the match.  For example, if the match were part of a tournament, it could be scoped to the unique ID of the tournament.
 * @param {Struct.ElementsProfile} _opponent
 * @param {Real} _last_updated_timestamp The time of the last modification of the match.
 * @param {String} _game_id The system-assigned game ID of the match.  Null until the match is successfully made.
 * @param {Struct} _metadata Additional arbitrary metadata that is attached to the match.
 */
function ElementsMatch(_scheme, _player, _id = undefined, _scope = undefined, _opponent = undefined, _last_updated_timestamp = undefined, _game_id = undefined, _metadata = undefined) constructor
{
	scheme = _scheme;
	player = _player;
	id = _id;
	scope = _scope;
	opponent = _opponent;
	lastUpdatedTimestamp = _last_updated_timestamp;
	gameId = _game_id;
	metadata = _metadata;
	
	static __uid = 2972025397;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMatch.validate";
		
		if (!is_string(scheme)) show_error($"{_where} :: scheme expected string", true);
		if (!is_struct(player) || player[$ "__uid"] != 2781117785) show_error($"{_where} :: player expected ElementsProfile", true);
		player.validate(_where);
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(scope) && !is_string(scope)) show_error($"{_where} :: scope expected string", true);
		if (!is_undefined(opponent))
		{
			if (!is_struct(opponent) || opponent[$ "__uid"] != 2781117785) show_error($"{_where} :: opponent expected ElementsProfile", true);
			opponent.validate(_where);
		}
		if (!is_undefined(lastUpdatedTimestamp) && !is_real(lastUpdatedTimestamp)) show_error($"{_where} :: lastUpdatedTimestamp expected int64", true);
		if (!is_undefined(gameId) && !is_string(gameId)) show_error($"{_where} :: gameId expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsPaginationMatch()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsMatch]} _objects
 */
function ElementsPaginationMatch(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 396456901;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationMatch.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsMatch", true);
	};
}

/**
 * @func ElementsMetadata()
 * @param {String} _id The metadata object's database assigned unique ID.
 * @param {String} _name A unique name for the metadata object.
 * @param {Struct} _metadata An object containing the metadata payload as key-value pairs.
 * @param {String} _access_level The minimum level of access required to view this metadata. (one of: UNPRIVILEGED | USER | SUPERUSER)
 * @param {Struct.ElementsMetadataSpec} _metadata_spec Represents a spec for metadata.
 */
function ElementsMetadata(_id, _name, _metadata, _access_level, _metadata_spec = undefined) constructor
{
	id = _id;
	name = _name;
	metadata = _metadata;
	accessLevel = _access_level;
	metadataSpec = _metadata_spec;
	
	static __uid = 1887270633;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMetadata.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
		if (!is_string(accessLevel)) show_error($"{_where} :: accessLevel expected string", true);
		if (!is_undefined(metadataSpec))
		{
			if (!is_struct(metadataSpec) || metadataSpec[$ "__uid"] != 2450729354) show_error($"{_where} :: metadataSpec expected ElementsMetadataSpec", true);
			metadataSpec.validate(_where);
		}
	};
}

/**
 * @func ElementsCreateMetadataRequest()
 * @param {String} _name A unique name for the metadata object.
 * @param {Struct} _metadata An object containing the metadata payload as key-value pairs.
 * @param {Struct.ElementsMetadataSpec} _metadata_spec Represents a spec for metadata.
 * @param {String} _access_level The minimum level of access required to view this metadata. (one of: UNPRIVILEGED | USER | SUPERUSER)
 */
function ElementsCreateMetadataRequest(_name, _metadata = undefined, _metadata_spec = undefined, _access_level = undefined) constructor
{
	name = _name;
	metadata = _metadata;
	metadataSpec = _metadata_spec;
	accessLevel = _access_level;
	
	static __uid = 2487058506;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateMetadataRequest.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
		if (!is_undefined(metadataSpec))
		{
			if (!is_struct(metadataSpec) || metadataSpec[$ "__uid"] != 2450729354) show_error($"{_where} :: metadataSpec expected ElementsMetadataSpec", true);
			metadataSpec.validate(_where);
		}
		if (!is_undefined(accessLevel) && !is_string(accessLevel)) show_error($"{_where} :: accessLevel expected string", true);
	};
}

/**
 * @func ElementsPaginationMetadata()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsMetadata]} _objects
 */
function ElementsPaginationMetadata(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 1198154681;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationMetadata.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsMetadata", true);
	};
}

/**
 * @func ElementsUpdateMetadataRequest()
 * @param {Struct} _metadata An object containing the metadata payload as key-value pairs.
 * @param {Struct.ElementsMetadataSpec} _metadata_spec Represents a spec for metadata.
 * @param {String} _access_level The minimum level of access required to view this metadata. (one of: UNPRIVILEGED | USER | SUPERUSER)
 */
function ElementsUpdateMetadataRequest(_metadata = undefined, _metadata_spec = undefined, _access_level = undefined) constructor
{
	metadata = _metadata;
	metadataSpec = _metadata_spec;
	accessLevel = _access_level;
	
	static __uid = 2761795881;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateMetadataRequest.validate";
		
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
		if (!is_undefined(metadataSpec))
		{
			if (!is_struct(metadataSpec) || metadataSpec[$ "__uid"] != 2450729354) show_error($"{_where} :: metadataSpec expected ElementsMetadataSpec", true);
			metadataSpec.validate(_where);
		}
		if (!is_undefined(accessLevel) && !is_string(accessLevel)) show_error($"{_where} :: accessLevel expected string", true);
	};
}

/**
 * @func ElementsReward()
 * @param {Struct.ElementsItem} _item The Item to be issued upon redemption.
 * @param {Real} _quantity The quantity of the Item that is rewarded
 * @param {Struct} _metadata
 */
function ElementsReward(_item, _quantity, _metadata = undefined) constructor
{
	item = _item;
	quantity = _quantity;
	metadata = _metadata;
	
	static __uid = 2741172507;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsReward.validate";
		
		if (!is_struct(item) || item[$ "__uid"] != 4093207011) show_error($"{_where} :: item expected ElementsItem", true);
		item.validate(_where);
		if (!is_real(quantity)) show_error($"{_where} :: quantity expected int32", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsStep()
 * @param {String} _display_name The display name for the step
 * @param {String} _description The description of the step
 * @param {Real} _count The number of times the step must be completed to receive the reward(s)
 * @param {Array[Struct.ElementsReward]} _rewards The reward(s) that will be granted upon completion
 * @param {Struct} _metadata The metadata for this step
 */
function ElementsStep(_display_name, _description, _count, _rewards, _metadata = undefined) constructor
{
	displayName = _display_name;
	description = _description;
	count = _count;
	rewards = _rewards;
	metadata = _metadata;
	
	static __uid = 1884119454;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsStep.validate";
		
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_real(count)) show_error($"{_where} :: count expected int32", true);
		if (!is_array(rewards)) show_error($"{_where} :: rewards expected ElementsReward", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsMission()
 * @param {String} _id The unique ID of the mission
 * @param {String} _name The name of the mission
 * @param {String} _display_name The display name for the mission
 * @param {String} _description The description of the mission
 * @param {Array[String]} _tags The tags used to categorize this mission
 * @param {Array[Struct.ElementsStep]} _steps The steps that constitute the mission (may be null if finalRepeatStep is specified)
 * @param {Struct.ElementsStep} _final_repeat_step The final repeating step (may be null if step(s) are specified)
 * @param {Struct} _metadata The metadata for this mission
 */
function ElementsMission(_id, _name, _display_name, _description, _tags = undefined, _steps = undefined, _final_repeat_step = undefined, _metadata = undefined) constructor
{
	id = _id;
	name = _name;
	displayName = _display_name;
	description = _description;
	tags = _tags;
	steps = _steps;
	finalRepeatStep = _final_repeat_step;
	metadata = _metadata;
	
	static __uid = 163403146;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMission.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_undefined(tags) && !is_array(tags)) show_error($"{_where} :: tags expected string", true);
		if (!is_undefined(steps) && !is_array(steps)) show_error($"{_where} :: steps expected ElementsStep", true);
		if (!is_undefined(finalRepeatStep))
		{
			if (!is_struct(finalRepeatStep) || finalRepeatStep[$ "__uid"] != 1884119454) show_error($"{_where} :: finalRepeatStep expected ElementsStep", true);
			finalRepeatStep.validate(_where);
		}
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsPaginationMission()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsMission]} _objects
 */
function ElementsPaginationMission(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 2801763322;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationMission.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsMission", true);
	};
}

/**
 * @func ElementsProgressMissionInfo()
 * @param {String} _id The id of the mission
 * @param {String} _name The name of the mission
 * @param {String} _display_name The display name for the mission
 * @param {String} _description The description of the mission
 * @param {Array[Struct.ElementsStep]} _steps The steps that constitute the mission (may be null if finalRepeatStep is specified)
 * @param {Struct.ElementsStep} _final_repeat_step The final repeating step (may be null if step(s) are specified)
 * @param {Array[String]} _tags The tags used to categorize this mission
 * @param {Struct} _metadata The metadata for this mission
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
	
	static __uid = 4042939011;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsProgressMissionInfo.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_undefined(steps) && !is_array(steps)) show_error($"{_where} :: steps expected ElementsStep", true);
		if (!is_undefined(finalRepeatStep))
		{
			if (!is_struct(finalRepeatStep) || finalRepeatStep[$ "__uid"] != 1884119454) show_error($"{_where} :: finalRepeatStep expected ElementsStep", true);
			finalRepeatStep.validate(_where);
		}
		if (!is_undefined(tags) && !is_array(tags)) show_error($"{_where} :: tags expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsSchedule()
 * @param {String} _id The unique ID of the schedule.
 * @param {String} _name The unique name of the schedule.
 * @param {String} _display_name
 * @param {String} _description The description for this schedule.
 */
function ElementsSchedule(_id, _name, _display_name, _description) constructor
{
	id = _id;
	name = _name;
	displayName = _display_name;
	description = _description;
	
	static __uid = 3368858065;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsSchedule.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
	};
}

/**
 * @func ElementsScheduleEvent()
 * @param {String} _id
 * @param {Struct.ElementsSchedule} _schedule
 * @param {Array[Struct.ElementsMission]} _missions
 * @param {Real} _begin
 * @param {Real} _end
 */
function ElementsScheduleEvent(_id, _schedule, _missions, _begin = undefined, _end = undefined) constructor
{
	id = _id;
	schedule = _schedule;
	missions = _missions;
	self[$ "begin"] = _begin;
	self[$ "end"] = _end;
	
	static __uid = 1425553323;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsScheduleEvent.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_struct(schedule) || schedule[$ "__uid"] != 3368858065) show_error($"{_where} :: schedule expected ElementsSchedule", true);
		schedule.validate(_where);
		if (!is_array(missions)) show_error($"{_where} :: missions expected ElementsMission", true);
		if (!is_undefined(self[$ "begin"]) && !is_real(self[$ "begin"])) show_error($"{_where} :: self[$ 'begin'] expected int64", true);
		if (!is_undefined(self[$ "end"]) && !is_real(self[$ "end"])) show_error($"{_where} :: self[$ 'end'] expected int64", true);
	};
}

/**
 * @func ElementsProgress()
 * @param {String} _id The unique ID of the progress instance
 * @param {Struct.ElementsProfile} _profile
 * @param {Struct.ElementsProgressMissionInfo} _mission The mission
 * @param {Struct.ElementsStep} _current_step The final repeating step (may be null if step(s) are specified)
 * @param {Real} _remaining The remaining actions
 * @param {Array[Struct.ElementsRewardIssuance]} _reward_issuances List of all reward issuances that are issued but not expired, or redeemed but persistent.
 * @param {Real} _sequence The current number of completed steps. Note that this may exceed the total number of steps, i.e. the final step may be repeated infinitely.
 * @param {Real} _managed_by_schedule Indicates that this progress is managed by a Schedule. If true, the Progress will be deleted when no schedules have the progress active. This will be true if the Progress was created as part of a Schedule.
 * @param {Array[Struct.ElementsSchedule]} _schedules A listing of the Schedules which are managing this Progress. Empty or null if the Progress is not managed as part of a Schedule.
 * @param {Array[Struct.ElementsScheduleEvent]} _schedule_events A listing of ScheduleEvents which are managing this Progress. Empty or null if the Progress is not managed as part of a Schedule.
 */
function ElementsProgress(_id, _profile, _mission, _current_step = undefined, _remaining = undefined, _reward_issuances = undefined, _sequence = undefined, _managed_by_schedule = undefined, _schedules = undefined, _schedule_events = undefined) constructor
{
	id = _id;
	profile = _profile;
	mission = _mission;
	currentStep = _current_step;
	remaining = _remaining;
	rewardIssuances = _reward_issuances;
	sequence = _sequence;
	managedBySchedule = _managed_by_schedule;
	schedules = _schedules;
	scheduleEvents = _schedule_events;
	
	static __uid = 250421607;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsProgress.validate";
		
		if (!is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_struct(profile) || profile[$ "__uid"] != 2781117785) show_error($"{_where} :: profile expected ElementsProfile", true);
		profile.validate(_where);
		if (!is_struct(mission) || mission[$ "__uid"] != 4042939011) show_error($"{_where} :: mission expected ElementsProgressMissionInfo", true);
		mission.validate(_where);
		if (!is_undefined(currentStep))
		{
			if (!is_struct(currentStep) || currentStep[$ "__uid"] != 1884119454) show_error($"{_where} :: currentStep expected ElementsStep", true);
			currentStep.validate(_where);
		}
		if (!is_undefined(remaining) && !is_real(remaining)) show_error($"{_where} :: remaining expected int32", true);
		if (!is_undefined(rewardIssuances) && !is_array(rewardIssuances)) show_error($"{_where} :: rewardIssuances expected ElementsRewardIssuance", true);
		if (!is_undefined(sequence) && !is_real(sequence)) show_error($"{_where} :: sequence expected int32", true);
		if (!is_undefined(managedBySchedule) && !is_real(managedBySchedule)) show_error($"{_where} :: managedBySchedule expected bool", true);
		if (!is_undefined(schedules) && !is_array(schedules)) show_error($"{_where} :: schedules expected ElementsSchedule", true);
		if (!is_undefined(scheduleEvents) && !is_array(scheduleEvents)) show_error($"{_where} :: scheduleEvents expected ElementsScheduleEvent", true);
	};
}

/**
 * @func ElementsPaginationProgress()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsProgress]} _objects
 */
function ElementsPaginationProgress(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 831725399;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationProgress.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsProgress", true);
	};
}

/**
 * @func ElementsProgressRow()
 * @param {String} _id
 * @param {String} _profile_id
 * @param {String} _profile_image_url
 * @param {String} _profile_display_name
 * @param {String} _step_display_name
 * @param {String} _step_description
 * @param {Real} _remaining
 * @param {Real} _step_count
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
	
	static __uid = 3577508181;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsProgressRow.validate";
		
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(profileId) && !is_string(profileId)) show_error($"{_where} :: profileId expected string", true);
		if (!is_undefined(profileImageUrl) && !is_string(profileImageUrl)) show_error($"{_where} :: profileImageUrl expected string", true);
		if (!is_undefined(profileDisplayName) && !is_string(profileDisplayName)) show_error($"{_where} :: profileDisplayName expected string", true);
		if (!is_undefined(stepDisplayName) && !is_string(stepDisplayName)) show_error($"{_where} :: stepDisplayName expected string", true);
		if (!is_undefined(stepDescription) && !is_string(stepDescription)) show_error($"{_where} :: stepDescription expected string", true);
		if (!is_undefined(remaining) && !is_real(remaining)) show_error($"{_where} :: remaining expected int32", true);
		if (!is_undefined(stepCount) && !is_real(stepCount)) show_error($"{_where} :: stepCount expected int32", true);
	};
}

/**
 * @func ElementsTabulationProgressRow()
 * @param {Array[Struct.ElementsProgressRow]} _rows
 */
function ElementsTabulationProgressRow(_rows) constructor
{
	rows = _rows;
	
	static __uid = 4219842888;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsTabulationProgressRow.validate";
		
		if (!is_array(rows)) show_error($"{_where} :: rows expected ElementsProgressRow", true);
	};
}

/**
 * @func ElementsPaginationRewardIssuance()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsRewardIssuance]} _objects
 */
function ElementsPaginationRewardIssuance(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 4291211260;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationRewardIssuance.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsRewardIssuance", true);
	};
}

/**
 * @func ElementsRewardIssuanceRedemptionResult()
 * @param {String} _reward_issuance_id The id as originally provided in the request.
 * @param {Struct.ElementsRewardIssuance} _reward_issuance Represents a Reward that has been issued but has not yet been claimed by the user.  The reward is assigned a unique ID to ensure that it may not have been applied more than once.
 * @param {Struct.ElementsInventoryItem} _inventory_item Should the redemption be successful, the Inventory Item that was updated. Otherwise, null.
 * @param {String} _error_details Should the redemption fail, the error details. Otherwise, null.
 */
function ElementsRewardIssuanceRedemptionResult(_reward_issuance_id = undefined, _reward_issuance = undefined, _inventory_item = undefined, _error_details = undefined) constructor
{
	rewardIssuanceId = _reward_issuance_id;
	rewardIssuance = _reward_issuance;
	inventoryItem = _inventory_item;
	errorDetails = _error_details;
	
	static __uid = 88268656;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsRewardIssuanceRedemptionResult.validate";
		
		if (!is_undefined(rewardIssuanceId) && !is_string(rewardIssuanceId)) show_error($"{_where} :: rewardIssuanceId expected string", true);
		if (!is_undefined(rewardIssuance))
		{
			if (!is_struct(rewardIssuance) || rewardIssuance[$ "__uid"] != 3284773420) show_error($"{_where} :: rewardIssuance expected ElementsRewardIssuance", true);
			rewardIssuance.validate(_where);
		}
		if (!is_undefined(inventoryItem))
		{
			if (!is_struct(inventoryItem) || inventoryItem[$ "__uid"] != 3734850823) show_error($"{_where} :: inventoryItem expected ElementsInventoryItem", true);
			inventoryItem.validate(_where);
		}
		if (!is_undefined(errorDetails) && !is_string(errorDetails)) show_error($"{_where} :: errorDetails expected string", true);
	};
}

/**
 * @func ElementsCreateScheduleEventRequest()
 * @param {Array[String]} _mission_names_or_ids
 * @param {Real} _begin
 * @param {Real} _end
 */
function ElementsCreateScheduleEventRequest(_mission_names_or_ids, _begin = undefined, _end = undefined) constructor
{
	missionNamesOrIds = _mission_names_or_ids;
	self[$ "begin"] = _begin;
	self[$ "end"] = _end;
	
	static __uid = 3808981408;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateScheduleEventRequest.validate";
		
		if (!is_array(missionNamesOrIds)) show_error($"{_where} :: missionNamesOrIds expected string", true);
		if (!is_undefined(self[$ "begin"]) && !is_real(self[$ "begin"])) show_error($"{_where} :: self[$ 'begin'] expected int64", true);
		if (!is_undefined(self[$ "end"]) && !is_real(self[$ "end"])) show_error($"{_where} :: self[$ 'end'] expected int64", true);
	};
}

/**
 * @func ElementsPaginationScheduleEvent()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsScheduleEvent]} _objects
 */
function ElementsPaginationScheduleEvent(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 2638837083;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationScheduleEvent.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsScheduleEvent", true);
	};
}

/**
 * @func ElementsUpdateScheduleEventRequest()
 * @param {Array[String]} _mission_names_or_ids
 * @param {Real} _begin
 * @param {Real} _end
 */
function ElementsUpdateScheduleEventRequest(_mission_names_or_ids, _begin = undefined, _end = undefined) constructor
{
	missionNamesOrIds = _mission_names_or_ids;
	self[$ "begin"] = _begin;
	self[$ "end"] = _end;
	
	static __uid = 3327297397;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateScheduleEventRequest.validate";
		
		if (!is_array(missionNamesOrIds)) show_error($"{_where} :: missionNamesOrIds expected string", true);
		if (!is_undefined(self[$ "begin"]) && !is_real(self[$ "begin"])) show_error($"{_where} :: self[$ 'begin'] expected int64", true);
		if (!is_undefined(self[$ "end"]) && !is_real(self[$ "end"])) show_error($"{_where} :: self[$ 'end'] expected int64", true);
	};
}

/**
 * @func ElementsCreateScheduleRequest()
 * @param {String} _name
 * @param {String} _display_name
 * @param {String} _description
 */
function ElementsCreateScheduleRequest(_name, _display_name, _description) constructor
{
	name = _name;
	displayName = _display_name;
	description = _description;
	
	static __uid = 2403450450;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateScheduleRequest.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
	};
}

/**
 * @func ElementsPaginationSchedule()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsSchedule]} _objects
 */
function ElementsPaginationSchedule(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 107348449;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationSchedule.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsSchedule", true);
	};
}

/**
 * @func ElementsUpdateScheduleRequest()
 * @param {String} _name
 * @param {String} _display_name
 * @param {String} _description
 */
function ElementsUpdateScheduleRequest(_name, _display_name, _description) constructor
{
	name = _name;
	displayName = _display_name;
	description = _description;
	
	static __uid = 3597890317;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateScheduleRequest.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_string(description)) show_error($"{_where} :: description expected string", true);
	};
}

/**
 * @func ElementsFCMRegistration()
 * @param {String} _registration_token The actual Firebase registration.
 * @param {String} _id The the unique id of the token stored in the database.
 * @param {Struct.ElementsProfile} _profile
 */
function ElementsFCMRegistration(_registration_token, _id = undefined, _profile = undefined) constructor
{
	registrationToken = _registration_token;
	id = _id;
	profile = _profile;
	
	static __uid = 1607130311;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsFCMRegistration.validate";
		
		if (!is_string(registrationToken)) show_error($"{_where} :: registrationToken expected string", true);
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(profile))
		{
			if (!is_struct(profile) || profile[$ "__uid"] != 2781117785) show_error($"{_where} :: profile expected ElementsProfile", true);
			profile.validate(_where);
		}
	};
}

/**
 * @func ElementsCreateProfileRequest()
 * @param {String} _user_id The user id this profile belongs to.
 * @param {String} _application_id The application id this profile belongs to.
 * @param {String} _image_url A URL to the image of the profile.  (ie the User's Avatar).
 * @param {String} _display_name A non-unique display name for this profile.
 * @param {Struct} _metadata A map of arbitrary metadata.
 */
function ElementsCreateProfileRequest(_user_id, _application_id, _image_url = undefined, _display_name = undefined, _metadata = undefined) constructor
{
	userId = _user_id;
	applicationId = _application_id;
	imageUrl = _image_url;
	displayName = _display_name;
	metadata = _metadata;
	
	static __uid = 16877594;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateProfileRequest.validate";
		
		if (!is_string(userId)) show_error($"{_where} :: userId expected string", true);
		if (!is_string(applicationId)) show_error($"{_where} :: applicationId expected string", true);
		if (!is_undefined(imageUrl) && !is_string(imageUrl)) show_error($"{_where} :: imageUrl expected string", true);
		if (!is_undefined(displayName) && !is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsUpdateProfileRequest()
 * @param {String} _image_url A URL to the image of the profile.  (ie the User's Avatar).
 * @param {String} _display_name A non-unique display name for this profile.
 * @param {Struct} _metadata A map of arbitrary metadata.
 */
function ElementsUpdateProfileRequest(_image_url = undefined, _display_name = undefined, _metadata = undefined) constructor
{
	imageUrl = _image_url;
	displayName = _display_name;
	metadata = _metadata;
	
	static __uid = 382495963;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateProfileRequest.validate";
		
		if (!is_undefined(imageUrl) && !is_string(imageUrl)) show_error($"{_where} :: imageUrl expected string", true);
		if (!is_undefined(displayName) && !is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_undefined(metadata) && !is_struct(metadata)) show_error($"{_where} :: metadata expected any", true);
	};
}

/**
 * @func ElementsUpdateProfileImageRequest()
 * @param {String} _mime_type MimeType of image
 */
function ElementsUpdateProfileImageRequest(_mime_type) constructor
{
	mimeType = _mime_type;
	
	static __uid = 1429530948;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateProfileImageRequest.validate";
		
		if (!is_string(mimeType)) show_error($"{_where} :: mimeType expected string", true);
	};
}

/**
 * @func ElementsSaveDataDocument()
 * @param {String} _version The revision of the save data document.
 * @param {String} _contents The contents of the save data.
 * @param {String} _id The database assigned unique ID of the document.
 * @param {Real} _slot The slot of the property.
 * @param {Struct.ElementsUser} _user The User associated with this Profile.
 * @param {Struct.ElementsProfile} _profile
 * @param {Real} _timestamp The timestamp of the last write to this document.
 */
function ElementsSaveDataDocument(_version, _contents, _id = undefined, _slot = undefined, _user = undefined, _profile = undefined, _timestamp = undefined) constructor
{
	version = _version;
	contents = _contents;
	id = _id;
	slot = _slot;
	user = _user;
	profile = _profile;
	timestamp = _timestamp;
	
	static __uid = 3196415584;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsSaveDataDocument.validate";
		
		if (!is_string(version)) show_error($"{_where} :: version expected string", true);
		if (!is_string(contents)) show_error($"{_where} :: contents expected string", true);
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(slot) && !is_real(slot)) show_error($"{_where} :: slot expected int32", true);
		if (!is_undefined(user))
		{
			if (!is_struct(user) || user[$ "__uid"] != 3659328047) show_error($"{_where} :: user expected ElementsUser", true);
			user.validate(_where);
		}
		if (!is_undefined(profile))
		{
			if (!is_struct(profile) || profile[$ "__uid"] != 2781117785) show_error($"{_where} :: profile expected ElementsProfile", true);
			profile.validate(_where);
		}
		if (!is_undefined(timestamp) && !is_real(timestamp)) show_error($"{_where} :: timestamp expected int64", true);
	};
}

/**
 * @func ElementsCreateSaveDataDocumentRequest()
 * @param {Real} _slot The slot of the property. Must be unique for user or profile.
 * @param {String} _contents The contents of the save data.
 * @param {String} _user_id The id of the user which owns the save data. If specified, the user will own this save data and the profileId must be null or be owned by the user specified.
 * @param {String} _profile_id The id of the profile which owns the save data. If specified, the profile will own this save data and the userId must be null or be owned by the user specified.
 */
function ElementsCreateSaveDataDocumentRequest(_slot, _contents, _user_id = undefined, _profile_id = undefined) constructor
{
	slot = _slot;
	contents = _contents;
	userId = _user_id;
	profileId = _profile_id;
	
	static __uid = 2901008509;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateSaveDataDocumentRequest.validate";
		
		if (!is_real(slot)) show_error($"{_where} :: slot expected int32", true);
		if (!is_string(contents)) show_error($"{_where} :: contents expected string", true);
		if (!is_undefined(userId) && !is_string(userId)) show_error($"{_where} :: userId expected string", true);
		if (!is_undefined(profileId) && !is_string(profileId)) show_error($"{_where} :: profileId expected string", true);
	};
}

/**
 * @func ElementsPaginationSaveDataDocument()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsSaveDataDocument]} _objects
 */
function ElementsPaginationSaveDataDocument(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 1007019088;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationSaveDataDocument.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsSaveDataDocument", true);
	};
}

/**
 * @func ElementsUpdateSaveDataDocumentRequest()
 * @param {String} _contents
 * @param {Real} _force
 * @param {String} _version
 */
function ElementsUpdateSaveDataDocumentRequest(_contents, _force = undefined, _version = undefined) constructor
{
	contents = _contents;
	force = _force;
	version = _version;
	
	static __uid = 3806683334;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateSaveDataDocumentRequest.validate";
		
		if (!is_string(contents)) show_error($"{_where} :: contents expected string", true);
		if (!is_undefined(force) && !is_real(force)) show_error($"{_where} :: force expected bool", true);
		if (!is_undefined(version) && !is_string(version)) show_error($"{_where} :: version expected string", true);
	};
}

/**
 * @func ElementsCreateMetadataSpecRequest()
 * @param {Array[Struct.ElementsMetadataSpecProperty]} _properties The token template tabs to create.
 * @param {String} _name The name of the metadata spec.
 * @param {String} _type The type of the metadata spec. (one of: STRING | NUMBER | BOOLEAN | ARRAY | ENUM | OBJECT | TAGS)
 */
function ElementsCreateMetadataSpecRequest(_properties, _name = undefined, _type = undefined) constructor
{
	properties = _properties;
	name = _name;
	type = _type;
	
	static __uid = 3295076267;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateMetadataSpecRequest.validate";
		
		if (!is_array(properties)) show_error($"{_where} :: properties expected ElementsMetadataSpecProperty", true);
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(type) && !is_string(type)) show_error($"{_where} :: type expected string", true);
	};
}

/**
 * @func ElementsEditorLayout()
 * @param {String} _key
 * @param {String} _title
 * @param {String} _placeholder
 */
function ElementsEditorLayout(_key = undefined, _title = undefined, _placeholder = undefined) constructor
{
	key = _key;
	title = _title;
	placeholder = _placeholder;
	
	static __uid = 3143491391;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsEditorLayout.validate";
		
		if (!is_undefined(key) && !is_string(key)) show_error($"{_where} :: key expected string", true);
		if (!is_undefined(title) && !is_string(title)) show_error($"{_where} :: title expected string", true);
		if (!is_undefined(placeholder) && !is_string(placeholder)) show_error($"{_where} :: placeholder expected string", true);
	};
}

/**
 * @func ElementsJsonSchema()
 * @param {String} _get_id See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} _get_schema See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} _title See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} _description See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} _type See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {Struct} _properties See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {Array[String]} _required See - https://json-schema.org/draft/2020-12/json-schema-core
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
	
	static __uid = 2979227497;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsJsonSchema.validate";
		
		if (!is_undefined(self[$ "get$id"]) && !is_string(self[$ "get$id"])) show_error($"{_where} :: self[$ 'get$id'] expected string", true);
		if (!is_undefined(self[$ "get$schema"]) && !is_string(self[$ "get$schema"])) show_error($"{_where} :: self[$ 'get$schema'] expected string", true);
		if (!is_undefined(title) && !is_string(title)) show_error($"{_where} :: title expected string", true);
		if (!is_undefined(description) && !is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_undefined(type) && !is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_undefined(properties) && !is_struct(properties)) show_error($"{_where} :: properties expected any", true);
		if (!is_undefined(required) && !is_array(required)) show_error($"{_where} :: required expected string", true);
	};
}

/**
 * @func ElementsEditorSchema()
 * @param {Struct} _data The data itself.
 * @param {Struct.ElementsJsonSchema} _schema A Subset of the JSON-Schema - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {Array[Struct.ElementsEditorLayout]} _layout The editor layout.
 */
function ElementsEditorSchema(_data = undefined, _schema = undefined, _layout = undefined) constructor
{
	data = _data;
	schema = _schema;
	layout = _layout;
	
	static __uid = 383510390;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsEditorSchema.validate";
		
		if (!is_undefined(data) && !is_struct(data)) show_error($"{_where} :: data expected any", true);
		if (!is_undefined(schema))
		{
			if (!is_struct(schema) || schema[$ "__uid"] != 2979227497) show_error($"{_where} :: schema expected ElementsJsonSchema", true);
			schema.validate(_where);
		}
		if (!is_undefined(layout) && !is_array(layout)) show_error($"{_where} :: layout expected ElementsEditorLayout", true);
	};
}

/**
 * @func ElementsJsonSchemaProperty()
 * @param {String} _type See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} _title See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {String} _description See - https://json-schema.org/draft/2020-12/json-schema-core
 * @param {Array[String]} _required See - https://json-schema.org/draft/2020-12/json-schema-core
 */
function ElementsJsonSchemaProperty(_type = undefined, _title = undefined, _description = undefined, _required = undefined) constructor
{
	type = _type;
	title = _title;
	description = _description;
	required = _required;
	
	static __uid = 917668580;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsJsonSchemaProperty.validate";
		
		if (!is_undefined(type) && !is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_undefined(title) && !is_string(title)) show_error($"{_where} :: title expected string", true);
		if (!is_undefined(description) && !is_string(description)) show_error($"{_where} :: description expected string", true);
		if (!is_undefined(required) && !is_array(required)) show_error($"{_where} :: required expected string", true);
	};
}

/**
 * @func ElementsPaginationMetadataSpec()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsMetadataSpec]} _objects
 */
function ElementsPaginationMetadataSpec(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 1270656986;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationMetadataSpec.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsMetadataSpec", true);
	};
}

/**
 * @func ElementsUpdateMetadataSpecRequest()
 * @param {String} _name The name of the metadata spec.
 * @param {String} _type The type of the metadata spec. (one of: STRING | NUMBER | BOOLEAN | ARRAY | ENUM | OBJECT | TAGS)
 * @param {Array[Struct.ElementsMetadataSpecProperty]} _properties The updated list of properties.
 */
function ElementsUpdateMetadataSpecRequest(_name = undefined, _type = undefined, _properties = undefined) constructor
{
	name = _name;
	type = _type;
	properties = _properties;
	
	static __uid = 1920219244;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUpdateMetadataSpecRequest.validate";
		
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(type) && !is_string(type)) show_error($"{_where} :: type expected string", true);
		if (!is_undefined(properties) && !is_array(properties)) show_error($"{_where} :: properties expected ElementsMetadataSpecProperty", true);
	};
}

/**
 * @func ElementsMockSessionCreation()
 * @param {String} _session_secret The Session Secret to pass to subsequent requests through headers.
 * @param {Struct.ElementsSession} _session The Session object generated by the request.
 * @param {Real} _user_expires_at The assocaited mock user will automatically be deleted at supplied time.
 * @param {String} _password The randomly-assigned password for the mock user.
 */
function ElementsMockSessionCreation(_session_secret = undefined, _session = undefined, _user_expires_at = undefined, _password = undefined) constructor
{
	sessionSecret = _session_secret;
	session = _session;
	userExpiresAt = _user_expires_at;
	password = _password;
	
	static __uid = 2673195471;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMockSessionCreation.validate";
		
		if (!is_undefined(sessionSecret) && !is_string(sessionSecret)) show_error($"{_where} :: sessionSecret expected string", true);
		if (!is_undefined(session))
		{
			if (!is_struct(session) || session[$ "__uid"] != 3048891336) show_error($"{_where} :: session expected ElementsSession", true);
			session.validate(_where);
		}
		if (!is_undefined(userExpiresAt) && !is_real(userExpiresAt)) show_error($"{_where} :: userExpiresAt expected int64", true);
		if (!is_undefined(password) && !is_string(password)) show_error($"{_where} :: password expected string", true);
	};
}

/**
 * @func ElementsMockSessionRequest()
 * @param {Real} _lifetime_in_seconds The lifetime of the user in seconds.  After this amount of time,
 * @param {Struct.ElementsApplication} _application
 */
function ElementsMockSessionRequest(_lifetime_in_seconds = undefined, _application = undefined) constructor
{
	lifetimeInSeconds = _lifetime_in_seconds;
	application = _application;
	
	static __uid = 3773080403;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsMockSessionRequest.validate";
		
		if (!is_undefined(lifetimeInSeconds) && !is_real(lifetimeInSeconds)) show_error($"{_where} :: lifetimeInSeconds expected int32", true);
		if (!is_undefined(application))
		{
			if (!is_struct(application) || application[$ "__uid"] != 1239862290) show_error($"{_where} :: application expected ElementsApplication", true);
			application.validate(_where);
		}
	};
}

/**
 * @func ElementsUsernamePasswordSessionRequest()
 * @param {String} _user_id The user ID.
 * @param {String} _password The password.
 * @param {String} _profile_id The profile ID to assign to the session.
 * @param {String} _profile_selector A query string to select the profile to use.
 */
function ElementsUsernamePasswordSessionRequest(_user_id, _password, _profile_id = undefined, _profile_selector = undefined) constructor
{
	userId = _user_id;
	password = _password;
	profileId = _profile_id;
	profileSelector = _profile_selector;
	
	static __uid = 3751727376;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUsernamePasswordSessionRequest.validate";
		
		if (!is_string(userId)) show_error($"{_where} :: userId expected string", true);
		if (!is_string(password)) show_error($"{_where} :: password expected string", true);
		if (!is_undefined(profileId) && !is_string(profileId)) show_error($"{_where} :: profileId expected string", true);
		if (!is_undefined(profileSelector) && !is_string(profileSelector)) show_error($"{_where} :: profileSelector expected string", true);
	};
}

/**
 * @func ElementsDatabaseHealthStatus()
 * @param {String} _name
 * @param {String} _metadata
 */
function ElementsDatabaseHealthStatus(_name = undefined, _metadata = undefined) constructor
{
	name = _name;
	metadata = _metadata;
	
	static __uid = 431199845;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsDatabaseHealthStatus.validate";
		
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(metadata) && !is_string(metadata)) show_error($"{_where} :: metadata expected string", true);
	};
}

/**
 * @func ElementsDiscoveryHealthStatus()
 * @param {Array[String]} _records
 * @param {Array[String]} _known_hosts
 */
function ElementsDiscoveryHealthStatus(_records = undefined, _known_hosts = undefined) constructor
{
	records = _records;
	knownHosts = _known_hosts;
	
	static __uid = 184824318;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsDiscoveryHealthStatus.validate";
		
		if (!is_undefined(records) && !is_array(records)) show_error($"{_where} :: records expected string", true);
		if (!is_undefined(knownHosts) && !is_array(knownHosts)) show_error($"{_where} :: knownHosts expected string", true);
	};
}

/**
 * @func ElementsInstanceHealthStatus()
 * @param {String} _instance_id
 * @param {Array[String]} _node_ids
 */
function ElementsInstanceHealthStatus(_instance_id = undefined, _node_ids = undefined) constructor
{
	instanceId = _instance_id;
	nodeIds = _node_ids;
	
	static __uid = 290765635;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsInstanceHealthStatus.validate";
		
		if (!is_undefined(instanceId) && !is_string(instanceId)) show_error($"{_where} :: instanceId expected string", true);
		if (!is_undefined(nodeIds) && !is_array(nodeIds)) show_error($"{_where} :: nodeIds expected string", true);
	};
}

/**
 * @func ElementsRoutingHealthStatus()
 * @param {String} _instance_id
 * @param {Array[String]} _routing_table
 * @param {Array[String]} _master_node_routing_table
 * @param {Array[String]} _application_node_routing_table
 */
function ElementsRoutingHealthStatus(_instance_id = undefined, _routing_table = undefined, _master_node_routing_table = undefined, _application_node_routing_table = undefined) constructor
{
	instanceId = _instance_id;
	routingTable = _routing_table;
	masterNodeRoutingTable = _master_node_routing_table;
	applicationNodeRoutingTable = _application_node_routing_table;
	
	static __uid = 677490602;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsRoutingHealthStatus.validate";
		
		if (!is_undefined(instanceId) && !is_string(instanceId)) show_error($"{_where} :: instanceId expected string", true);
		if (!is_undefined(routingTable) && !is_array(routingTable)) show_error($"{_where} :: routingTable expected string", true);
		if (!is_undefined(masterNodeRoutingTable) && !is_array(masterNodeRoutingTable)) show_error($"{_where} :: masterNodeRoutingTable expected string", true);
		if (!is_undefined(applicationNodeRoutingTable) && !is_array(applicationNodeRoutingTable)) show_error($"{_where} :: applicationNodeRoutingTable expected string", true);
	};
}

/**
 * @func ElementsInvokerHealthStatus()
 * @param {Array[String]} _priorities
 * @param {Array[String]} _connected_peers
 */
function ElementsInvokerHealthStatus(_priorities = undefined, _connected_peers = undefined) constructor
{
	priorities = _priorities;
	connectedPeers = _connected_peers;
	
	static __uid = 2984279586;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsInvokerHealthStatus.validate";
		
		if (!is_undefined(priorities) && !is_array(priorities)) show_error($"{_where} :: priorities expected string", true);
		if (!is_undefined(connectedPeers) && !is_array(connectedPeers)) show_error($"{_where} :: connectedPeers expected string", true);
	};
}

/**
 * @func ElementsHealthStatus()
 * @param {Real} _checks_failed
 * @param {Real} _checks_performed
 * @param {Real} _overall_health
 * @param {Array[String]} _problems
 * @param {Struct.ElementsInstanceHealthStatus} _instance_status
 * @param {Array[Struct.ElementsDatabaseHealthStatus]} _database_status
 * @param {Struct.ElementsDiscoveryHealthStatus} _discovery_health_status
 * @param {Struct.ElementsRoutingHealthStatus} _routing_health_status
 * @param {Struct.ElementsInvokerHealthStatus} _invoker_health_status
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
	
	static __uid = 2394037588;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsHealthStatus.validate";
		
		if (!is_undefined(checksFailed) && !is_real(checksFailed)) show_error($"{_where} :: checksFailed expected int32", true);
		if (!is_undefined(checksPerformed) && !is_real(checksPerformed)) show_error($"{_where} :: checksPerformed expected int32", true);
		if (!is_undefined(overallHealth) && !is_real(overallHealth)) show_error($"{_where} :: overallHealth expected double", true);
		if (!is_undefined(problems) && !is_array(problems)) show_error($"{_where} :: problems expected string", true);
		if (!is_undefined(instanceStatus))
		{
			if (!is_struct(instanceStatus) || instanceStatus[$ "__uid"] != 290765635) show_error($"{_where} :: instanceStatus expected ElementsInstanceHealthStatus", true);
			instanceStatus.validate(_where);
		}
		if (!is_undefined(databaseStatus) && !is_array(databaseStatus)) show_error($"{_where} :: databaseStatus expected ElementsDatabaseHealthStatus", true);
		if (!is_undefined(discoveryHealthStatus))
		{
			if (!is_struct(discoveryHealthStatus) || discoveryHealthStatus[$ "__uid"] != 184824318) show_error($"{_where} :: discoveryHealthStatus expected ElementsDiscoveryHealthStatus", true);
			discoveryHealthStatus.validate(_where);
		}
		if (!is_undefined(routingHealthStatus))
		{
			if (!is_struct(routingHealthStatus) || routingHealthStatus[$ "__uid"] != 677490602) show_error($"{_where} :: routingHealthStatus expected ElementsRoutingHealthStatus", true);
			routingHealthStatus.validate(_where);
		}
		if (!is_undefined(invokerHealthStatus))
		{
			if (!is_struct(invokerHealthStatus) || invokerHealthStatus[$ "__uid"] != 2984279586) show_error($"{_where} :: invokerHealthStatus expected ElementsInvokerHealthStatus", true);
			invokerHealthStatus.validate(_where);
		}
	};
}

/**
 * @func ElementsVersion()
 * @param {String} _version
 * @param {String} _revision
 * @param {String} _timestamp
 */
function ElementsVersion(_version = undefined, _revision = undefined, _timestamp = undefined) constructor
{
	version = _version;
	revision = _revision;
	timestamp = _timestamp;
	
	static __uid = 864212096;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsVersion.validate";
		
		if (!is_undefined(version) && !is_string(version)) show_error($"{_where} :: version expected string", true);
		if (!is_undefined(revision) && !is_string(revision)) show_error($"{_where} :: revision expected string", true);
		if (!is_undefined(timestamp) && !is_string(timestamp)) show_error($"{_where} :: timestamp expected string", true);
	};
}

/**
 * @func ElementsUserCreateResponse()
 * @param {String} _id
 * @param {String} _name
 * @param {String} _email
 * @param {String} _first_name
 * @param {String} _last_name
 * @param {String} _level  (one of: UNPRIVILEGED | USER | SUPERUSER)
 * @param {Real} _active
 * @param {String} _facebook_id
 * @param {String} _firebase_id
 * @param {String} _apple_sign_in_id
 * @param {String} _primary_phone_nb
 * @param {Array[Struct.ElementsProfile]} _profiles
 * @param {String} _password
 * @param {Array[String]} _linked_accounts
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
	
	static __uid = 2246290180;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUserCreateResponse.validate";
		
		if (!is_undefined(id) && !is_string(id)) show_error($"{_where} :: id expected string", true);
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(email) && !is_string(email)) show_error($"{_where} :: email expected string", true);
		if (!is_undefined(firstName) && !is_string(firstName)) show_error($"{_where} :: firstName expected string", true);
		if (!is_undefined(lastName) && !is_string(lastName)) show_error($"{_where} :: lastName expected string", true);
		if (!is_undefined(level) && !is_string(level)) show_error($"{_where} :: level expected string", true);
		if (!is_undefined(active) && !is_real(active)) show_error($"{_where} :: active expected bool", true);
		if (!is_undefined(facebookId) && !is_string(facebookId)) show_error($"{_where} :: facebookId expected string", true);
		if (!is_undefined(firebaseId) && !is_string(firebaseId)) show_error($"{_where} :: firebaseId expected string", true);
		if (!is_undefined(appleSignInId) && !is_string(appleSignInId)) show_error($"{_where} :: appleSignInId expected string", true);
		if (!is_undefined(primaryPhoneNb) && !is_string(primaryPhoneNb)) show_error($"{_where} :: primaryPhoneNb expected string", true);
		if (!is_undefined(profiles) && !is_array(profiles)) show_error($"{_where} :: profiles expected ElementsProfile", true);
		if (!is_undefined(password) && !is_string(password)) show_error($"{_where} :: password expected string", true);
		if (!is_undefined(linkedAccounts) && !is_array(linkedAccounts)) show_error($"{_where} :: linkedAccounts expected string", true);
	};
}

/**
 * @func ElementsCreateProfileSignupRequest()
 * @param {String} _application_id The application id this profile belongs to.
 * @param {String} _display_name A non-unique display name for this profile. If left null, the server will assign.
 * @param {String} _image_url A URL to the image of the profile.  (ie the User's Avatar). If left null, the server will no assign any URL.
 */
function ElementsCreateProfileSignupRequest(_application_id, _display_name = undefined, _image_url = undefined) constructor
{
	applicationId = _application_id;
	displayName = _display_name;
	imageUrl = _image_url;
	
	static __uid = 2836149590;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsCreateProfileSignupRequest.validate";
		
		if (!is_string(applicationId)) show_error($"{_where} :: applicationId expected string", true);
		if (!is_undefined(displayName) && !is_string(displayName)) show_error($"{_where} :: displayName expected string", true);
		if (!is_undefined(imageUrl) && !is_string(imageUrl)) show_error($"{_where} :: imageUrl expected string", true);
	};
}

/**
 * @func ElementsUserCreateRequest()
 * @param {String} _name
 * @param {String} _email
 * @param {String} _primary_phone_nb
 * @param {String} _first_name
 * @param {String} _last_name
 * @param {String} _password The user's plaintext password, only to be provided in POST/PUT requests in the User Resource REST API interface. In the future, a dedicated REST API model may be constructed instead of using a direct User model.
 * @param {String} _level The user's level to assign. Depending on the usage, the server may ignore this field and assign its own description. (one of: UNPRIVILEGED | USER | SUPERUSER)
 * @param {Array[Struct.ElementsCreateProfileSignupRequest]} _profiles A list of profiles to assign to this user during creation. The server will attempt to create a profile for each item in this list.
 */
function ElementsUserCreateRequest(_name = undefined, _email = undefined, _primary_phone_nb = undefined, _first_name = undefined, _last_name = undefined, _password = undefined, _level = undefined, _profiles = undefined) constructor
{
	name = _name;
	email = _email;
	primaryPhoneNb = _primary_phone_nb;
	firstName = _first_name;
	lastName = _last_name;
	password = _password;
	level = _level;
	profiles = _profiles;
	
	static __uid = 899782120;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUserCreateRequest.validate";
		
		if (!is_undefined(name) && !is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_undefined(email) && !is_string(email)) show_error($"{_where} :: email expected string", true);
		if (!is_undefined(primaryPhoneNb) && !is_string(primaryPhoneNb)) show_error($"{_where} :: primaryPhoneNb expected string", true);
		if (!is_undefined(firstName) && !is_string(firstName)) show_error($"{_where} :: firstName expected string", true);
		if (!is_undefined(lastName) && !is_string(lastName)) show_error($"{_where} :: lastName expected string", true);
		if (!is_undefined(password) && !is_string(password)) show_error($"{_where} :: password expected string", true);
		if (!is_undefined(level) && !is_string(level)) show_error($"{_where} :: level expected string", true);
		if (!is_undefined(profiles) && !is_array(profiles)) show_error($"{_where} :: profiles expected ElementsCreateProfileSignupRequest", true);
	};
}

/**
 * @func ElementsPaginationUser()
 * @param {Real} _offset
 * @param {Real} _total
 * @param {Real} _approximation
 * @param {Array[Struct.ElementsUser]} _objects
 */
function ElementsPaginationUser(_offset = undefined, _total = undefined, _approximation = undefined, _objects = undefined) constructor
{
	offset = _offset;
	total = _total;
	approximation = _approximation;
	objects = _objects;
	
	static __uid = 3563338783;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsPaginationUser.validate";
		
		if (!is_undefined(offset) && !is_real(offset)) show_error($"{_where} :: offset expected int32", true);
		if (!is_undefined(total) && !is_real(total)) show_error($"{_where} :: total expected int32", true);
		if (!is_undefined(approximation) && !is_real(approximation)) show_error($"{_where} :: approximation expected bool", true);
		if (!is_undefined(objects) && !is_array(objects)) show_error($"{_where} :: objects expected ElementsUser", true);
	};
}

/**
 * @func ElementsUserUpdateRequest()
 * @param {String} _name
 * @param {String} _email
 * @param {String} _level  (one of: UNPRIVILEGED | USER | SUPERUSER)
 * @param {String} _primary_phone_nb
 * @param {String} _first_name
 * @param {String} _last_name
 * @param {String} _password The user's plaintext password, only to be provided in POST/PUT requests in the User Resource REST API interface. In the future, a dedicated REST API model may be constructed instead of using a direct User model.
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
	
	static __uid = 45946483;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUserUpdateRequest.validate";
		
		if (!is_string(name)) show_error($"{_where} :: name expected string", true);
		if (!is_string(email)) show_error($"{_where} :: email expected string", true);
		if (!is_string(level)) show_error($"{_where} :: level expected string", true);
		if (!is_undefined(primaryPhoneNb) && !is_string(primaryPhoneNb)) show_error($"{_where} :: primaryPhoneNb expected string", true);
		if (!is_undefined(firstName) && !is_string(firstName)) show_error($"{_where} :: firstName expected string", true);
		if (!is_undefined(lastName) && !is_string(lastName)) show_error($"{_where} :: lastName expected string", true);
		if (!is_undefined(password) && !is_string(password)) show_error($"{_where} :: password expected string", true);
	};
}

/**
 * @func ElementsUserUpdatePasswordRequest()
 * @param {String} _old_password The user's current password.
 * @param {String} _new_password The user's updated password.
 * @param {String} _profile_id The user's profile id to assign the new session. Leave blank for no profile id.
 */
function ElementsUserUpdatePasswordRequest(_old_password, _new_password, _profile_id = undefined) constructor
{
	oldPassword = _old_password;
	newPassword = _new_password;
	profileId = _profile_id;
	
	static __uid = 1441785724;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsUserUpdatePasswordRequest.validate";
		
		if (!is_string(oldPassword)) show_error($"{_where} :: oldPassword expected string", true);
		if (!is_string(newPassword)) show_error($"{_where} :: newPassword expected string", true);
		if (!is_undefined(profileId) && !is_string(profileId)) show_error($"{_where} :: profileId expected string", true);
	};
}

/**
 * @func ElementsErrorResponse()
 * @param {String} _code A machine readable code of the error.
 * @param {String} _message A description of the error. This error is not intended to be displayed to the end-user, rather it is it designed to relay information to the application developer.
 */
function ElementsErrorResponse(_code = undefined, _message = undefined) constructor
{
	code = _code;
	message = _message;
	
	static __uid = 1264847277;
	
	/**
	 * @func validate()
	 * @param {String} _where What is the callee of this function (used for debug).
	 * @ignore 
	 */
	static validate = function(_where = _GMFUNCTION_)
	{
		_where = $"{_where} :: ElementsErrorResponse.validate";
		
		if (!is_undefined(code) && !is_string(code)) show_error($"{_where} :: code expected string", true);
		if (!is_undefined(message) && !is_string(message)) show_error($"{_where} :: message expected string", true);
	};
}

