// #####################################################################
// # Schema Final Documentation (manual edits and additions)
// #####################################################################

/**
 * @struct ElementsMetadataSpecProperty
 * @desc > **Elements Schema**: [MetadataSpecProperty](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/MetadataSpecProperty)
 * 
 * This struct represents the updated list of properties.
 * 
 * @member {String} _name The unique name of the field.
 * @member {String} _display_name The display name of the field.
 * @member {String} _type The field type.
 * @member {Real} [_required] True if the field is required.
 * @member {String} [_placeholder] The placeholder description when displaying in the editor.
 * @member {Struct} [_default_value] The default description, null if left unspecified.
 * @member {Array[Struct.ElementsMetadataSpecProperty]} [_properties] The updated list of properties.
 * @struct_end
 */

/**
 * @struct ElementsMetadataSpec
 * @desc > **Elements Schema**: [MetadataSpec](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/MetadataSpec)
 * 
 * This struct represents a Metadata Spec, which is a schema that describes what a metadata object should look like.
 * 
 * See: [Metadata](https://namazustudios.com/docs/namazu-elements-core/features/schemas-and-metadata-specifications/)
 * 
 * @member {String} _id The unique ID of the schema itself.
 * @member {String} _name The name of the schema.
 * @member {String} _type The type of the tab itself.
 * @member {Array[Struct.ElementsMetadataSpecProperty]} _properties The tabs of the metadata spec.
 * @struct_end
 */

/**
 * @struct ElementsItem
 * @desc > **Elements Schema**: [Item](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Item)
 * 
 * This struct represents an item.
 * 
 * Items are digital goods in the Elements database. These exist independent of [Applications](https://namazustudios.com/docs/namazu-elements-core/features/digital-goods/applications), so any application in your instance can interact with any item. Core APIs allow for the reading of items for sale.
 * 
 * See: [Digital Goods](https://namazustudios.com/docs/namazu-elements-core/features/digital-goods/)
 * 
 * @member {String} _name This is a string representing the name of your item. It must be unique and have no spaces.
 * @member {String} _display_name This is a string representing your item's display name.
 * @member {String} _description This is a string that serves as a description for your item. Client code may opt to show this directly to the user.
 * @member {String} _category Describes one of two particular inventory item values: [Fungible](https://namazustudios.com/docs/namazu-elements-core/features/digital-goods/#fungible-inventory-item) and [Distinct](https://namazustudios.com/docs/namazu-elements-core/features/digital-goods/#distinct-inventory-item).
 * @member {String} [_id] In the database, the item will also have an `_id` field. This is automatically generated when the item is created and serves as an internal reference for that item.
 * @member {Array[String]} [_tags] You may include a list of tags, as strings. Tags are an easy way to search for groups of items or sort them in your applications.
 * @member {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 * @member {Struct} [_metadata] Metadata is optional. It can be any number of named strings or integers. This can have many uses, for example secondary descriptions, asset paths, types, or any arbitrary values assigned to your item.
 * @member {Real} [_public_visible] Whether this item is publically visible.
 * @struct_end
 */

/**
 * @struct ElementsUser
 * @desc > **Elements Schema**: [User](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/User)
 * 
 * This struct represents a user.
 * 
 * See: [Users and Profiles](https://namazustudios.com/docs/namazu-elements-core/features/users-and-profiles/)
 * 
 * @member {String} _id The user's database assigned unique ID.
 * @member {String} _level The user's access level.
 * @member {String} [_name] A unique name for the user.
 * @member {String} [_first_name] The user's first name.
 * @member {String} [_last_name] The user's last name.
 * @member {String} [_email] The user's email.
 * @member {String} [_primary_phone_nb] The user's phone number.
 * @member {Array[String]} [_linked_accounts] List of linked account or auth scheme names.
 * @struct_end
 */

/**
 * @struct ElementsRewardIssuance
 * @desc > **Elements Schema**: [RewardIssuance](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/RewardIssuance)
 * 
 * This struct represents a reward issuance.
 * 
 * See: [Reward Issuance](https://namazustudios.com/docs/namazu-elements-core/features/reward-issuance/)
 * 
 * @member {String} _id The unique ID of the issuance.
 * @member {Struct.ElementsUser} _user The User associated with this Profile.
 * @member {String} _state The state of the reward. On creation, this is automatically assigned to be ISSUED. If the current value of the state is REDEEMED, then the state is no longer allowed to be updated. This valuemay not be directly modified--the redeem DAO method should be used instead to perform the redemption process.
 * @member {String} _context A generic String used to uniquely identify the RewardIssuance issuance. If the RewardIssuance is created by the client, this value must be specified to prevent erroneous duplicate issuances. E.g. if the client successfully submits an issuance but fails to receive the response, the client is expected to submit a new issuance with the same context string. Similarly, the client application should have safeguards in place in the event of a crash to prevent duplicate submissions: e.g. ensuring that the context string is unchanged when performing multiple issuances of the same RewardIssuance. If the RewardIssuance is generated by the server, this will be defined automatically. The context cannot be updated after creation. Note that an context defined via the API should not begin with 'server.' as that is a protected namespace.
 * @member {String} _type Defines whether multiple issuances for the given user+reward+context may occur. If the type is set to NON_PERSISTENT, at most one ISSUED RewardIssuance may exist in the server at a time for a given user and context. If the type is set to PERSISTENT, at most one ISSUED or REDEEMED RewardIssuance may exist in the server for a given user and context, i.e. once a PERSISTENT RewardIssuance has been submitted, a new one may never be submitted and will be rejected by the server. Note that this value cannot be updated. By default, this will be set to NON_PERSISTENT.
 * @member {Struct.ElementsItem} [_item] The Item to be issued upon redemption.
 * @member {Real} [_item_quantity] The amount of Items to be set/added to the InventoryItem upon redemption.
 * @member {String} [_source] Identifies the source of the issuance, e.g. 'Client', 'IAP', 'Leaderboard'. This may be specified manually by the client if desired. Note that this value cannot be updated.
 * @member {Struct} [_metadata] Metadata for the issuance. May be optionally defined by the client on creation. If the source is a server-side value, then a predefined structure will always be followed that provides additional information as to the source of the issuance (e.g. mission progress/step information).
 * @member {Array[String]} [_tags] The tags used to categorize this Reward Issuance.
 * @member {Real} [_expiration_timestamp] Optionally define when the issuance should expire. This value may be updated to extend when the expiration occurs. When set, this value must be greater than the current time on the server.Note that the record may not actually be deleted for up to sixty seconds after the time noted in thetimestamp.
 * @member {String} [_uuid] Internal unique identifier generated and assigned on creation.
 * @struct_end
 */

/**
 * @struct ElementsCreateAppleIapReceipt
 * @desc > **Elements Schema**: [CreateAppleIapReceipt](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateAppleIapReceipt)
 * 
 * This struct represents an Apple IAP receipt.
 * 
 * @member {String} _receipt_data The base64-encoded string of the raw IAP receipt.
 * @member {String} [_create_apple_iap_receipt_environment] Allowed values: `"SANDBOX"`, `"PRODUCTION"`
 * @struct_end
 */

/**
 * @struct ElementsApplicationConfiguration
 * @desc > **Elements Schema**: [ApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ApplicationConfiguration)
 * 
 * This struct represents an application configuration.
 * 
 * Each application has its own set of application configurations, which includes the data connecting it to various services such as push notifications, Facebook, and more.
 * 
 * See: [Application Configurations](https://namazustudios.com/docs/namazu-elements-core/features/applications/#h-application-configurations)
 * 
 * @member {String} _id The database assigned ID for the application configuration.
 * @member {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @member {String} _description The description of the application configuration.
 * @member {Struct.ElementsApplication} _parent The parent application.
 * @struct_end
 */

/**
 * @struct ElementsApplication
 * @desc > **Elements Schema**: [Application](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Application)
 * 
 * This struct represents an application.
 * 
 * See: [Applications](namazustudios.com/docs/namazu-elements-core/features/applications)
 * 
 * @member {String} _name This is the application's unique name.
 * @member {String} [_id] This is the unique ID automatically assigned when the application is created.
 * @member {String} [_description] This string is the application's description.
 * @member {String} [_git_branch]
 * @member {String} [_script_repo_url]
 * @member {String} [_http_documentation_url]
 * @member {String} [_http_documentation_ui_url]
 * @member {String} [_http_tunnel_endpoint_url]
 * @member {Struct} [_attributes] The application's attributes.
 * @member {Struct.ElementsApplicationConfiguration} [_application_configuration] The application configuration.
 * @struct_end
 */

/**
 * @struct ElementsPaginationApplicationConfiguration
 * @desc > **Elements Schema**: [PaginationApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationApplicationConfiguration)
 * 
 * This struct represents a pagination of Application Configurations.
 * 
 * @member {Real} [_offset] The offset into the results.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsApplicationConfiguration]} [_objects] An array holding the elements in the pagination.
 * @struct_end
 */

/**
 * @struct ElementsCreateApplicationRequest
 * @desc > **Elements Schema**: [CreateApplicationRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateApplicationRequest)
 * 
 * This struct represents the request body for an application creation request.
 * 
 * @member {String} _name The name to use for the application.
 * @member {String} [_description] The application description.
 * @member {Struct} [_attributes] Attributes to assign to the application.
 * @struct_end
 */

/**
 * @struct ElementsPaginationApplication
 * @desc > **Elements Schema**: [PaginationApplication](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationApplication)
 * 
 * This struct represents a pagination of applications.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsApplication]} [_objects] An array of application structs.
 * @struct_end
 */

/**
 * @struct ElementsUpdateApplicationRequest
 * @desc > **Elements Schema**: [UpdateApplicationRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateApplicationRequest)
 * 
 * This struct represents the request body for an application update request.
 * 
 * @member {String} _name The new name of the application.
 * @member {String} [_description] The application description.
 * @member {Struct} [_attributes] The attributes of the application.
 * @struct_end
 */

/**
 * @struct ElementsFacebookApplicationConfiguration
 * @desc > **Elements Schema**: [FacebookApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/FacebookApplicationConfiguration)
 * 
 * This struct represents a Facebook application configuration.
 * 
 * @member {String} _id The database assigned ID for the application configuration.
 * @member {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @member {String} _description The description of the application configuration.
 * @member {Struct.ElementsApplication} _parent The parent application.
 * @member {String} _application_id The AppID as it appears in the Facebook Developer Console
 * @member {String} _application_secret The App Secret as it appears in the Facebook Developer Console
 * @member {Array[String]} [_builtin_application_permissions] The set of built-in permissions connected clients will need to request.
 * @struct_end
 */

/**
 * @struct ElementsFirebaseApplicationConfiguration
 * @desc > **Elements Schema**: [FirebaseApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/FirebaseApplicationConfiguration)
 * 
 * This struct represents a Firebase application configuration.
 * 
 * @member {String} _id The database assigned ID for the application configuration.
 * @member {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @member {String} _description The description of the application configuration.
 * @member {Struct.ElementsApplication} _parent The parent application.
 * @member {String} _project_id The contents of the serviceAccountCredentials.json file.
 * @member {String} _service_account_credentials The contents of the serviceAccountCredentials.json file.
 * @struct_end
 */

/**
 * @struct ElementsProductBundleReward
 * @desc > **Elements Schema**: [ProductBundleReward](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ProductBundleReward)
 * 
 * This struct represents a product bundle reward.
 * 
 * @member {String} _item_id The ID of the item to be rewarded.
 * @member {Real} _quantity The quantity of the item to be rewarded.
 * @struct_end
 */

/**
 * @struct ElementsProductBundle
 * @desc > **Elements Schema**: [ProductBundle](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ProductBundle)
 * 
 * This struct represents a product bundle.
 * 
 * @member {String} _product_id The platform-specific unique SKU/product identifier that, when purchased, will result in the items in this product bundle to be issued to the user.
 * @member {Array[Struct.ElementsProductBundleReward]} _product_bundle_rewards The list of product bundle rewards that will be issued to the user upon purchase.
 * @member {Real} _display Whether or not the frontend should display this product bundle to end users.
 * @member {String} [_display_name] The title of the product bundle to display to end users.
 * @member {String} [_description] The description of the product bundle to display to end users.
 * @member {Struct} [_metadata] Application-specific metadata.
 * @struct_end
 */

/**
 * @struct ElementsGooglePlayApplicationConfiguration
 * @desc > **Elements Schema**: [GooglePlayApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/GooglePlayApplicationConfiguration)
 * 
 * This struct represents a Google Play application configuration.
 * 
 * @member {String} _id The database assigned ID for the application configuration.
 * @member {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @member {String} _description The description of the application configuration.
 * @member {Struct.ElementsApplication} _parent The parent application.
 * @member {String} [_application_id] The application ID.
 * @member {Struct} [_json_key] The JSON key.
 * @member {Array[Struct.ElementsProductBundle]} [_product_bundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 * @struct_end
 */

/**
 * @struct ElementsIosApplicationConfiguration
 * @desc > **Elements Schema**: [IosApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/IosApplicationConfiguration)
 * 
 * This struct represents an iOS application configuration.
 * 
 * @member {String} _id The database assigned ID for the application configuration.
 * @member {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @member {String} _description The description of the application configuration.
 * @member {Struct.ElementsApplication} _parent The parent application.
 * @member {String} _application_id The application ID.
 * @member {Array[Struct.ElementsProductBundle]} [_product_bundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 * @struct_end
 */

/**
 * @struct ElementsElementServiceReference
 * @desc > **Elements Schema**: [ElementServiceReference](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ElementServiceReference)
 * 
 * This struct describes a custom implementation of a matchmaker.
 * 
 * See: [Matchmaking – Comprehensive Guide](https://namazustudios.com/docs/namazu-elements-core/features/configuration/matchmaking/)
 * 
 * @member {String} _element_name The name of the Element to reference.
 * @member {String} [_service_type] Specifies the type of the service within the Element. May be null.
 * @member {String} [_service_name] Specifies the name of the service within the Element. May be null.
 * @struct_end
 */

/**
 * @struct ElementsCallbackDefinition
 * @desc > **Elements Schema**: [CallbackDefinition](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CallbackDefinition)
 * 
 * This struct represents a callback definition.
 * 
 * @member {String} _method Specifies the method to invoke.
 * @member {Struct.ElementsElementServiceReference} _service Describes the matchmaker (dev.getelements.elements.sdk.dao.Matchmaker) to use for this configuration.
 * @struct_end
 */

/**
 * @struct ElementsMatchmakingApplicationConfiguration
 * @desc > **Elements Schema**: [MatchmakingApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/MatchmakingApplicationConfiguration)
 * 
 * This struct represents a matchmaking application configuration.
 * 
 * See: [What a Matchmaking Configuration Does](https://namazustudios.com/docs/namazu-elements-core/features/configuration/matchmaking/#h-what-a-matchmaking-configuration-does)
 * 
 * @member {String} _id The database assigned ID for the application configuration.
 * @member {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @member {String} _description The description of the application configuration.
 * @member {Struct.ElementsApplication} _parent The parent application.
 * @member {Struct.ElementsCallbackDefinition} [_success] Defines a script method and a module to invoke.
 * @member {Struct.ElementsElementServiceReference} [_matchmaker] Describes the matchmaker (dev.getelements.elements.sdk.dao.Matchmaker) to use for this configuration.
 * @member {Real} [_max_profiles] The maximum number of profiles that can be matched in a single match.
 * @member {Struct} [_metadata] The metadata for this matchmaking configuration. This will be copied to the match when it is created.
 * @member {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 * @struct_end
 */

/**
 * @struct ElementsPSNApplicationConfiguration
 * @desc > **Elements Schema**: [PSNApplicationConfiguration](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PSNApplicationConfiguration)
 * 
 * This struct represents a PSN application configuration.
 * 
 * @member {String} _id The database assigned ID for the application configuration.
 * @member {String} _name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} _type The fully-qualified Java type of ApplicationConfiguration.
 * @member {String} _description The description of the application configuration.
 * @member {Struct.ElementsApplication} _parent The parent application.
 * @member {String} _np_identifier The np identifier.
 * @member {String} _client_secret The client secret.
 * @struct_end
 */

/**
 * @struct ElementsAuthScheme
 * @desc > **Elements Schema**: [AuthScheme](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/AuthScheme)
 * 
 * This struct represents an auth scheme.
 * 
 * See: [Auth Schemes](https://namazustudios.com/docs/namazu-elements-core/user-authentication-sign-in/auth-schemes/auth-schemes/)
 * 
 * @member {String} _id The unique ID of the auth scheme.
 * @member {String} _audience A unique name used to identify the scheme within the instance of Elements.
 * @member {String} _public_key A base-64 encoded string representing an x509 encoded public key.
 * @member {String} _algorithm The digital signature matching the public key format.
 * @member {String} _user_level The highest permitted user level this particular scheme will authorize.
 * @member {Array[String]} _tags The tags used to tag this auth scheme.
 * @member {Array[String]} _allowed_issuers A list of issuers allowed to use this scheme.
 * @struct_end
 */

/**
 * @struct ElementsCreateAuthSchemeResponse
 * @desc > **Elements Schema**: [CreateAuthSchemeResponse](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateAuthSchemeResponse)
 * 
 * This struct represents an auth scheme response.
 * 
 * @member {Struct.ElementsAuthScheme} _scheme The full JSON response as described in AuthScheme
 * @member {String} _public_key The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @member {String} [_private_key] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/PKCS8EncodedKeySpec.html for details on the specifics of the format.
 * @struct_end
 */

/**
 * @struct ElementsCreateAuthSchemeRequest
 * @desc > **Elements Schema**: [CreateAuthSchemeRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateAuthSchemeRequest)
 * 
 * This struct represents an auth scheme request.
 * 
 * @member {String} _audience The JWT audience for the scheme. Must be unique.
 * @member {String} _algorithm Allowed values: `"RSA_256"`, `"RSA_384"`, `"RSA_512"`
 * @member {String} _user_level The highest permitted user level this particular scheme will authorize. One of: `"UNPRIVILEGED"`, `"USER"`, `"SUPERUSER"`
 * @member {Array[String]} _tags A list of tags used to index the auth scheme.
 * @member {Array[String]} _allowed_issuers The list of issuers allowed to use this scheme.
 * @member {String} [_public_key] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @struct_end
 */

/**
 * @struct ElementsPaginationAuthScheme
 * @desc > **Elements Schema**: [PaginationAuthScheme](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationAuthScheme)
 * 
 * This struct represents a pagination of auth schemes.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsAuthScheme]} [_objects] An array holding structs representing the auth schemes.
 * @struct_end
 */

/**
 * @struct ElementsUpdateAuthSchemeResponse
 * @desc > **Elements Schema**: [UpdateAuthSchemeResponse](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateAuthSchemeResponse)
 * 
 * This struct represents an auth scheme update response.
 * 
 * @member {String} _public_key The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @member {Struct.ElementsAuthScheme} [_scheme] The full JSON response as described in AuthScheme
 * @member {String} [_private_key] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/PKCS8EncodedKeySpec.html for details on the specifics of the format.
 * @struct_end
 */

/**
 * @struct ElementsUpdateAuthSchemeRequest
 * @desc > **Elements Schema**: [UpdateAuthSchemeRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateAuthSchemeRequest)
 * 
 * This struct represents the request body of an auth scheme update request.
 * 
 * @member {String} _audience The JWT audience for the scheme. Must be unique.
 * @member {String} _algorithm The algorithm that Elements will use with the supplied key.
 * @member {String} _user_level The highest permitted user level this particular scheme will authorize.
 * @member {Array[String]} _tags The list of tags for tagging the auth scheme.
 * @member {Array[String]} _allowed_issuers The list of issuers allowed to use this scheme.
 * @member {Real} [_regenerate] If set to true, Elements will regenerate the key and pubKey must be null or omitted
 * @member {String} [_public_key] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @struct_end
 */

/**
 * @struct ElementsLargeObjectReference
 * @desc > **Elements Schema**: [LargeObjectReference](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/LargeObjectReference)
 * 
 * This struct represents an Image object stored in EL large objects storage.
 * 
 * @member {String} [_id] The unique ID of the LargeObject.
 * @member {String} [_url] The URL where the binary contents of the LargeObject may be read.
 * @member {String} [_mime_type] The MIME type of the LargeObject.
 * @member {String} [_state] Current state of the LargeObject.
 * @member {String} [_last_modified] Date of last modification.
 * @struct_end
 */

/**
 * @struct ElementsProfile
 * @desc > **Elements Schema**: [Profile](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Profile)
 * 
 * This struct represents a profile.
 * 
 * See: [Users and Profiles](https://namazustudios.com/docs/namazu-elements-core/features/users-and-profiles/)
 * 
 * @member {String} _id The unique ID of the profile itself.
 * @member {Struct.ElementsUser} _user The User associated with this Profile.
 * @member {Struct.ElementsApplication} _application The application.
 * @member {String} _display_name A non-unique display name for this profile.
 * @member {String} [_image_url] A URL to the image of the profile. (i.e. the User's Avatar).
 * @member {Struct.ElementsLargeObjectReference} [_image_object] Image object stored in EL large objects storage.
 * @member {Struct} [_metadata] An object containing arbitrary player metadata as key-value pairs.
 * @member {Real} [_last_login] The last time this profile has been logged in by the user.
 * @struct_end
 */

/**
 * @struct ElementsSession
 * @desc > **Elements Schema**: [Session](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Session)
 * 
 * This struct represents the Session object generated by the request.
 * 
 * See: [Sessions](https://namazustudios.com/docs/namazu-elements-core/features/sessions/)
 * 
 * @member {Struct.ElementsUser} _user The User associated with this Profile.
 * @member {Struct.ElementsProfile} [_profile] The ID of a Profile.
 * @member {Struct.ElementsApplication} [_application] The application.
 * @member {Real} [_expiry] The expiry time of the session.
 * @struct_end
 */

/**
 * @struct ElementsSessionCreation
 * @desc > **Elements Schema**: [SessionCreation](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/SessionCreation)
 * 
 * This struct represents a session creation response.
 * 
 * @member {String} [_session_secret] The Session Secret to pass to subsequent requests through headers.
 * @member {Struct.ElementsSession} [_session] The Session object generated by the request.
 * @struct_end
 */

/**
 * @struct ElementsOAuth2SessionRequest
 * @desc > **Elements Schema**: [OAuth2SessionRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/OAuth2SessionRequest)
 * 
 * This struct represents an OAuth2 session request.
 * 
 * @member {String} _scheme_id The OAuth2 scheme ID to use.
 * @member {Struct} [_request_parameters] The request parameters to be used in the token validation request. This should adhere to any params marked as fromClient in the auth scheme.
 * @member {Struct} [_request_headers] The request headers to be used in the token validation request. This should adhere to any headers marked as fromClient in the auth scheme.
 * @member {String} [_profile_id] The profile ID to assign to the session.
 * @member {String} [_profile_selector] A query string to select the profile to use. NOTE: This will not be run if a profileId is specified.
 * @struct_end
 */

/**
 * @struct ElementsOAuth2RequestKeyValue
 * @desc > **Elements Schema**: [OAuth2RequestKeyValue](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/OAuth2RequestKeyValue)
 * 
 * This struct represents a key-value pair in an OAuth2 auth scheme.
 * 
 * See: [OAuth2 Auth Scheme Anatomy](https://namazustudios.com/docs/namazu-elements-core/user-authentication-sign-in/auth-schemes/oauth2/#h-oauth2-auth-scheme-anatomy)
 * 
 * @member {String} [_key] The key.
 * @member {String} [_value] The value.
 * @member {Real} [_from_client] If this value should be received from the client, or predefined and stored in the DB.
 * @struct_end
 */

/**
 * @struct ElementsOAuth2AuthScheme
 * @desc > **Elements Schema**: [OAuth2AuthScheme](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/OAuth2AuthScheme)
 * 
 * This struct represents an OAuth2 auth scheme.
 * 
 * See: [OAuth2 Auth Scheme Anatomy](https://namazustudios.com/docs/namazu-elements-core/user-authentication-sign-in/auth-schemes/oauth2/#h-oauth2-auth-scheme-anatomy)
 * 
 * @member {String} _id The unique ID of the auth scheme.
 * @member {String} _name A unique name used to identify the scheme within the instance of Elements. If using the same OAuth2 provider (e.g. Steam), it is recommended to suffix the name for each application when using multitenancy, e.g. steam_game1, steam_game2, etc.
 * @member {String} _validation_url The URL to send the user token validation request to.
 * @member {Array[Struct.ElementsOAuth2RequestKeyValue]} [_headers] The headers required for the validation request.
 * @member {Array[Struct.ElementsOAuth2RequestKeyValue]} [_params] The query parameters required for the validation request.
 * @member {String} [_response_id_mapping] Determines how to map the user ID in the response. For example "response.params.steamid"
 * @struct_end
 */

/**
 * @struct ElementsCreateOrUpdateOAuth2AuthSchemeResponse
 * @desc > **Elements Schema**: [CreateOrUpdateOAuth2AuthSchemeResponse](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateOrUpdateOAuth2AuthSchemeResponse)
 * 
 * This struct represents the response to an auth scheme creation or update request.
 * 
 * See: [OAuth2](https://namazustudios.com/docs/namazu-elements-core/user-authentication-sign-in/auth-schemes/oauth2)
 * 
 * @member {Struct.ElementsOAuth2AuthScheme} [_scheme] The full JSON response as described in AuthScheme
 * @struct_end
 */

/**
 * @struct ElementsCreateOrUpdateOAuth2AuthSchemeRequest
 * @desc > **Elements Schema**: [CreateOrUpdateOAuth2AuthSchemeRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateOrUpdateOAuth2AuthSchemeRequest)
 * 
 * This struct represents an auth scheme creation or update request.
 * 
 * See: [OAuth2 Auth Scheme Anatomy](https://namazustudios.com/docs/namazu-elements-core/user-authentication-sign-in/auth-schemes/oauth2/#h-oauth2-auth-scheme-anatomy)
 * 
 * @member {String} _id The unique ID of the auth scheme.
 * @member {String} _name A unique name used to identify the scheme within the instance of Elements. If using the same OAuth2 provider (e.g. Steam), it is recommended to suffix the name for each application when using multitenancy, e.g. steam_game1, steam_game2, etc.
 * @member {String} _validation_url The URL to send the user token validation request to.
 * @member {Array[Struct.ElementsOAuth2RequestKeyValue]} [_headers] The headers required for the validation request.
 * @member {Array[Struct.ElementsOAuth2RequestKeyValue]} [_params] The query parameters required for the validation request.
 * @member {String} [_response_id_mapping] Determines how to map the user id in the response. For example "response.params.steamid"
 * @struct_end
 */

/**
 * @struct ElementsPaginationOAuth2AuthScheme
 * @desc > **Elements Schema**: [PaginationOAuth2AuthScheme](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationOAuth2AuthScheme)
 * 
 * This struct represents a pagination of OAuth2 auth schemes.
 * 
 * See: [OIDC](https://namazustudios.com/docs/namazu-elements-core/user-authentication-sign-in/auth-schemes/oidc/)
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsOAuth2AuthScheme]} [_objects] An array holding structs representing the auth schemes.
 * @struct_end
 */

/**
 * @struct ElementsOidcSessionRequest
 * @desc > **Elements Schema**: [OidcSessionRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/OidcSessionRequest)
 * 
 * This struct represents an OIDC session request.
 * 
 * See: [OIDC](https://namazustudios.com/docs/namazu-elements-core/user-authentication-sign-in/auth-schemes/oidc/)
 * 
 * @member {String} _jwt The JWT to parse
 * @member {String} [_profile_id] The profile ID to assign to the session.
 * @member {String} [_profile_selector] A query string to select the profile to use. NOTE: This will not be run if a profileId is specified.
 * @struct_end
 */

/**
 * @struct ElementsJWK
 * @desc > **Elements Schema**: [JWK](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/JWK)
 * 
 * This struct holds a set of JWKs containing the keys required to validate JWT signatures.
 * 
 * @member {String} [_alg] Algorithm (e.g. RS256)
 * @member {String} [_kid] Key ID (unique to issuer)
 * @member {String} [_kty] Key type (e.g. RSA)
 * @member {String} [_use] The intended use (e.g. sig)
 * @member {String} [_e] Base64url encoded exponent
 * @member {String} [_n] Pub key modulus
 * @struct_end
 */

/**
 * @struct ElementsOidcAuthScheme
 * @desc > **Elements Schema**: [OidcAuthScheme](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/OidcAuthScheme)
 * 
 * This struct represents an OIDC auth scheme.
 * 
 * See: [OIDC](https://namazustudios.com/docs/namazu-elements-core/user-authentication-sign-in/auth-schemes/oidc/)
 * 
 * @member {String} _id The unique ID of the auth scheme.
 * @member {String} _issuer A unique name used to identify the scheme within the instance of Elements. When validating from an external source (e.g. Google or Apple SSO), must match the 'iss' property of the decoded JWT.
 * @member {Array[Struct.ElementsJWK]} _keys A set of JWKs containing the keys required to validate JWT signatures.
 * @member {String} [_name] The unique name of the auth scheme.
 * @member {String} [_keys_url] The URL for the JWK data. Will attempt to refresh keys if the kid cannot be found in the collection.
 * @member {String} [_media_type] The JWK format. Defaults to application/json
 * @struct_end
 */

/**
 * @struct ElementsCreateOrUpdateOidcAuthSchemeResponse
 * @desc > **Elements Schema**: [CreateOrUpdateOidcAuthSchemeResponse](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateOrUpdateOidcAuthSchemeResponse)
 * 
 * This struct represents an OIDC auth scheme response.
 * 
 * See: [OIDC](https://namazustudios.com/docs/namazu-elements-core/user-authentication-sign-in/auth-schemes/oidc/)
 * 
 * @member {Struct.ElementsOidcAuthScheme} [_scheme] The full JSON response as described in AuthScheme
 * @struct_end
 */

/**
 * @struct ElementsCreateOrUpdateOidcAuthSchemeRequest
 * @desc > **Elements Schema**: [CreateOrUpdateOidcAuthSchemeRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateOrUpdateOidcAuthSchemeRequest)
 * 
 * This struct represents an OIDC auth scheme request.
 * 
 * See: [OIDC](https://namazustudios.com/docs/namazu-elements-core/user-authentication-sign-in/auth-schemes/oidc/)
 * 
 * @member {String} _id The unique ID of the auth scheme.
 * @member {String} _issuer A unique name used to identify the scheme within the instance of Elements. When validating from an external source (e.g. Google or Apple SSO), must match the 'iss' property of the decoded JWT.
 * @member {Array[Struct.ElementsJWK]} _keys A set of JWKs containing the keys required to validate JWT signatures.
 * @member {String} [_keys_url] The URL for the JWK data. Will attempt to refresh keys if the kid cannot be found in the collection.
 * @member {String} [_media_type] The JWK format. Defaults to application/json
 * @struct_end
 */

/**
 * @struct ElementsPaginationOidcAuthScheme
 * @desc > **Elements Schema**: [PaginationOidcAuthScheme](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationOidcAuthScheme)
 * 
 * This struct represents a pagination of OIDC auth schemes.
 * 
 * See: [OIDC](https://namazustudios.com/docs/namazu-elements-core/user-authentication-sign-in/auth-schemes/oidc/)
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsOidcAuthScheme]} [_objects] An array holding structs representing the auth schemes.
 * @struct_end
 */

/**
 * @struct ElementsVaultKey
 * @desc > **Elements Schema**: [VaultKey](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/VaultKey)
 * 
 * This struct contains information on a vault key.
 * 
 * See: [Vaults](https://namazustudios.com/docs/namazu-elements-core/features/web3/vaults/)
 * 
 * @member {String} _algorithm Specifies the private key encryption algorithm used to secure the vault.
 * @member {String} _public_key The public key portion of the vault key.
 * @member {String} _private_key The private key portion of the vault key.
 * @member {Real} [_encrypted] The flag to indicate if the key is encrypted or not.
 * @member {Struct} [_encryption] The Vault's encryption metadata. This is specific to the encryption type used.
 * @struct_end
 */

/**
 * @struct ElementsVault
 * @desc > **Elements Schema**: [Vault](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Vault)
 * 
 * This struct represents a vault.
 * 
 * See: [Vaults](https://namazustudios.com/docs/namazu-elements-core/features/web3/vaults/)
 * 
 * @member {String} _id The system assigned unique ID of the vault.
 * @member {Struct.ElementsUser} _user The User associated with this Profile.
 * @member {String} _display_name The display name given to this vault.
 * @member {Struct.ElementsVaultKey} _key The Vault's key. The vault secures each vault with this key.
 * @struct_end
 */

/**
 * @struct ElementsSmartContract
 * @desc > **Elements Schema**: [SmartContract](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/SmartContract)
 * 
 * This struct represents a smart contract.
 * 
 * See: [Smart Contracts](https://namazustudios.com/docs/namazu-elements-core/features/web3/smart-contracts/smart-contracts/)
 * 
 * @member {String} _id The Elements database ID of the contract.
 * @member {String} _name The unique symbolic name of the smart contract.
 * @member {String} _display_name The name given to this contract for display purposes.
 * @member {Struct} _addresses The addresses of the contract from the blockchain. Depending on the network or protocol this may have several meanings. For example, this may be the script has for the Ethereum network.
 * @member {Struct.ElementsVault} _vault Reference to the [Omni Vault](https://namazustudios.com/docs/namazu-elements-core/features/web3/smart-contracts/smart-contracts/vaults) which Elements will use to operate against the contract.
 * @member {Struct} [_metadata] Any metadata for this contract.
 * @struct_end
 */

/**
 * @struct ElementsSmartContractAddress
 * @desc > **Elements Schema**: [SmartContractAddress](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/SmartContractAddress)
 * 
 * This struct holds a smart contract address.
 * 
 * See: [Smart Contract Addresses](https://namazustudios.com/docs/namazu-elements-core/features/web3/smart-contracts/smart-contracts/#h-smart-contract-addresses)
 * 
 * @member {String} [_address] Each Blockchain API has specific requirements for addresses. Though some chains refer to a smart contract as having an address, this is not universally true across all chains. Elements uses the term "address" to refer to the singular identifier of a particular contract.
 * @struct_end
 */

/**
 * @struct ElementsCreateSmartContractRequest
 * @desc > **Elements Schema**: [CreateSmartContractRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateSmartContractRequest)
 * 
 * This struct represents a smart contract creation request.
 * 
 * See: [Smart Contracts](https://namazustudios.com/docs/namazu-elements-core/features/web3/smart-contracts/smart-contracts/)
 * 
 * @member {String} _name The unique symbolic name of the smart contract.
 * @member {String} _display_name The name given to this contract for display purposes.
 * @member {Struct} _addresses The address of the contract from the blockchain. Depending on the network or protocol this may have several meanings and vary depending on the specific API or network.
 * @member {String} _vault_id The Elements database ID of the wallet containing the default account to be used for contract related requests.
 * @member {Struct} [_metadata] Any metadata for this contract.
 * @struct_end
 */

/**
 * @struct ElementsPaginationSmartContract
 * @desc > **Elements Schema**: [PaginationSmartContract](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationSmartContract)
 * 
 * This struct represents a pagination of smart contracts.
 * 
 * See: [Smart Contracts](https://namazustudios.com/docs/namazu-elements-core/features/web3/smart-contracts/smart-contracts/)
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsSmartContract]} [_objects] An array holding structs representing the auth schemes.
 * @struct_end
 */

/**
 * @struct ElementsUpdateSmartContractRequest
 * @desc > **Elements Schema**: [UpdateSmartContractRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateSmartContractRequest)
 * 
 * This struct represents a request for a smart contract update.
 * 
 * See: [Smart Contracts](https://namazustudios.com/docs/namazu-elements-core/features/web3/smart-contracts/smart-contracts/)
 * 
 * @member {String} _name The unique symbolic name of the smart contract.
 * @member {String} _display_name The name given to this contract for display purposes.
 * @member {Struct} _addresses The address of the contract from the blockchain. Depending on the network or protocol this may have several meanings and vary depending on the specific API or network.
 * @member {String} _vault_id The Elements database ID of the wallet containing the default account to be used for contract related requests.
 * @member {Struct} [_metadata] Any metadata for this contract.
 * @struct_end
 */

/**
 * @struct ElementsCreateVaultRequest
 * @desc > **Elements Schema**: [CreateVaultRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateVaultRequest)
 * 
 * This struct represents a vault creation request.
 * 
 * See: [Vaults](https://namazustudios.com/docs/namazu-elements-core/features/web3/vaults/)
 * 
 * @member {String} _user_id The elements-defined user ID to own the vault.
 * @member {String} _display_name A user-defined name for the vault. This is used simply for the user's reference and has no bearing  onthe vault's functionality.
 * @member {String} [_passphrase] The passphrase used to to encrypt the vault. If empty, then the vault will not be encrypted. Some configurations may opt to disallow encryption entirely.
 * @member {String} [_algorithm] The encryption algorithm used to secure the vault. Once created, a vault will contains a private/public key pair which will be used to encrypt the wallets within the vault.
 * @struct_end
 */

/**
 * @struct ElementsPaginationVault
 * @desc > **Elements Schema**: [PaginationVault](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationVault)
 * 
 * This struct holds a pagination of vaults.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsVault]} [_objects] An array holding structs representing the vaults.
 * @struct_end
 */

/**
 * @struct ElementsUpdateVaultRequest
 * @desc > **Elements Schema**: [UpdateVaultRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateVaultRequest)
 * 
 * This struct represents a vault update request.
 * 
 * See: [Vaults](https://namazustudios.com/docs/namazu-elements-core/features/web3/vaults/)
 * 
 * @member {String} _display_name A user-defined name for the vault. This is used simply for the user's reference and has no bearing on the vault's functionality.
 * @member {String} _user_id The elements-defined user ID to own the vault.
 * @member {String} [_passphrase] The current passphrase for the vault. If left null, no updates to the passphrase will be made. If not-null, then the new password must also not be null.
 * @member {String} [_new_passphrase] The updated passphrase for the vault. If left null, no updates to the passphrase will be made. If not-null, then the password must also not be null.
 * @struct_end
 */

/**
 * @struct ElementsWalletAccount
 * @desc > **Elements Schema**: [WalletAccount](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/WalletAccount)
 * 
 * This struct represents a wallet account.
 * 
 * See: [Wallets](https://namazustudios.com/docs/namazu-elements-core/features/web3/wallets/)
 * 
 * @member {String} _address The Wallet Address - ID public identity. Required.
 * @member {String} [_private_key] The Wallet Account - ID private identity. May be null if the wallet is for receive only.
 * @member {Real} [_encrypted] Indicates if this identity is encrypted.
 * @struct_end
 */

/**
 * @struct ElementsWallet
 * @desc > **Elements Schema**: [Wallet](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Wallet)
 * 
 * This struct represents a wallet.
 * 
 * See: [Wallets](https://namazustudios.com/docs/namazu-elements-core/features/web3/wallets/)
 * 
 * @member {String} _id The system assigned unique ID of the wallet.
 * @member {Struct.ElementsUser} _user The User associated with this Profile.
 * @member {Struct.ElementsVault} _vault The Vault which owns the Wallet.
 * @member {String} _display_name The name given to this wallet.
 * @member {String} _api The protocol used with this wallet.
 * @member {Array[String]} _networks The networks associated with this wallet.
 * @member {Array[Struct.ElementsWalletAccount]} _accounts The list of account pairs included in this wallet.
 * @member {Real} [_preferred_account] The default account. Must not be larger than the count of identities.
 * @struct_end
 */

/**
 * @struct ElementsCreateWalletRequestAccount
 * @desc > **Elements Schema**: [CreateWalletRequestAccount](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateWalletRequestAccount)
 * 
 * This structs specifies a Custodial Wallet Account Creating a Wallet.
 * 
 * See: [Wallets](https://namazustudios.com/docs/namazu-elements-core/features/web3/wallets/)
 * 
 * @member {String} _address The Wallet Address - ID public identity. Must be null for generated wallets.
 * @member {Real} [_generate] Flag which indicates if the account should be generated or imported.
 * @member {String} [_private_key] The Wallet Account - ID private identity. May be null if the wallet is for receive only.
 * @struct_end
 */

/**
 * @struct ElementsCreateWalletRequest
 * @desc > **Elements Schema**: [CreateWalletRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateWalletRequest)
 * 
 * This structs represents a request to create a new custodial wallet.
 * 
 * See: [Wallets](https://namazustudios.com/docs/namazu-elements-core/features/web3/wallets/)
 * 
 * @member {String} _display_name A user-defined name for the wallet. This is used simply for the user's reference and has no bearing on the wallet's functionality.
 * @member {String} _api The protocol of this wallet. Once set, this cannot be unset.
 * @member {Array[String]} _networks The networks associated with this wallet. All must support the Wallet's protocol.
 * @member {Array[Struct.ElementsCreateWalletRequestAccount]} _accounts Specifies a custodial wallet account creating a wallet.
 * @member {Real} [_preferred_account] The default identity. Must not be larger than the count of identities.
 * @struct_end
 */

/**
 * @struct ElementsPaginationWallet
 * @desc > **Elements Schema**: [PaginationWallet](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationWallet)
 * 
 * This struct contains a pagination of wallets.
 * 
 * See: [Wallets](https://namazustudios.com/docs/namazu-elements-core/features/web3/wallets/)
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsWallet]} [_objects] An array holding structs representing the wallets.
 * @struct_end
 */

/**
 * @struct ElementsUpdateWalletRequest
 * @desc > **Elements Schema**: [UpdateWalletRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateWalletRequest)
 * 
 * This struct represents a request to update a wallet.
 * 
 * See: [Wallets](https://namazustudios.com/docs/namazu-elements-core/features/web3/wallets/)
 * 
 * @member {Array[String]} _networks The networks associated with this wallet. All must support the Wallet's protocol.
 * @member {String} [_display_name] The new display name of the wallet.
 * @member {Real} [_preferred_account] The default identity. Must not be larger than the count of identities.
 * @struct_end
 */

/**
 * @struct ElementsDeployment
 * @desc > **Elements Schema**: [Deployment](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Deployment)
 * 
 * This struct represents a deployment.
 * 
 * @member {String} _id The unique ID of the deployment itself.
 * @member {String} _version The deployment version. Allows for overriding versions with new content.
 * @member {String} _revision The revision that this deployment points to.
 * @member {Struct.ElementsApplication} _application The application this deployment is for.
 * @struct_end
 */

/**
 * @struct ElementsCreateDeploymentRequest
 * @desc > **Elements Schema**: [CreateDeploymentRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateDeploymentRequest)
 * 
 * This struct represents a request for a new deployment.
 * 
 * @member {String} _version The deployment version.
 * @member {String} _revision The revision.
 * @struct_end
 */

/**
 * @struct ElementsPaginationDeployment
 * @desc > **Elements Schema**: [PaginationDeployment](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationDeployment)
 * 
 * This struct contains a pagination of deployments.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsDeployment]} [_objects] An array holding structs representing the deployments.
 * @struct_end
 */

/**
 * @struct ElementsUpdateDeploymentRequest
 * @desc > **Elements Schema**: [UpdateDeploymentRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateDeploymentRequest)
 * 
 * This struct represents a request to update a deployment.
 * 
 * @member {String} _revision The revision.
 * @struct_end
 */

/**
 * @struct ElementsCodegenRequest
 * @desc > **Elements Schema**: [CodegenRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CodegenRequest)
 * 
 * This struct represents a code generation request.
 * 
 * @member {String} [_element_spec_url] The URL for the Element OpenAPI spec. Usually /app/rest/elementName/openapi.json
 * @member {String} [_language] The target language that you want to generate the code to.
 * @member {String} [_package_name] The package name to set the generated code to. E.g. com.mycompany.mygame.Elements
 * @member {String} [_options] Any additional options that you want to pass to the generator
 * @struct_end
 */

/**
 * @struct ElementsFilterRegistration
 * @desc > **Elements Schema**: [FilterRegistration](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/FilterRegistration)
 * 
 * This struct represents a filter registration.
 * 
 * @member {Array[String]} [_servlet_name_mappings] An array of servlet name mappings.
 * @member {Array[String]} [_url_pattern_mappings] An array of URL pattern mappings.
 * @member {String} [_name] The filter name.
 * @member {String} [_class_name] The class name.
 * @member {Struct} [_init_parameters] The init parameters.
 * @struct_end
 */

/**
 * @struct ElementsTaglibDescriptor
 * @desc > **Elements Schema**: [TaglibDescriptor](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/TaglibDescriptor)
 * 
 * This struct represents a tag library descriptor.
 * 
 * @member {String} [_taglib_uri] The tag lib URI.
 * @member {String} [_taglib_location] The tag lib location.
 * @struct_end
 */

/**
 * @struct ElementsJspPropertyGroupDescriptor
 * @desc > **Elements Schema**: [JspPropertyGroupDescriptor](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/JspPropertyGroupDescriptor)
 * 
 * This struct represents a JSP property group descriptor.
 * 
 * @member {String} [_buffer]
 * @member {Array[String]} [_url_patterns]
 * @member {String} [_el_ignored]
 * @member {String} [_is_xml]
 * @member {String} [_error_on_el_not_found]
 * @member {String} [_page_encoding]
 * @member {String} [_scripting_invalid]
 * @member {Array[String]} [_include_preludes]
 * @member {Array[String]} [_include_codas]
 * @member {String} [_default_content_type]
 * @member {String} [_trim_directive_whitespaces]
 * @member {String} [_error_on_undeclared_namespace]
 * @member {String} [_deferred_syntax_allowed_as_literal]
 * @struct_end
 */

/**
 * @struct ElementsJspConfigDescriptor
 * @desc > **Elements Schema**: [JspConfigDescriptor](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/JspConfigDescriptor)
 * 
 * This struct represents a JSP configuration descriptor.
 * 
 * @member {Array[Struct.ElementsTaglibDescriptor]} [_taglibs] The tag library descriptors.
 * @member {Array[Struct.ElementsJspPropertyGroupDescriptor]} [_jsp_property_groups] The JSP property group descriptors.
 * @struct_end
 */

/**
 * @struct ElementsSessionCookieConfig
 * @desc > **Elements Schema**: [SessionCookieConfig](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/SessionCookieConfig)
 * 
 * 
 * 
 * @member {String} [_path]
 * @member {String} [_domain]
 * @member {String} [_name]
 * @member {Struct} [_attributes]
 * @member {String} [_comment]
 * @member {Real} [_http_only]
 * @member {Real} [_secure]
 * @member {Real} [_max_age]
 * @struct_end
 */

/**
 * @struct ElementsServletContext
 * @desc > **Elements Schema**: [ServletContext](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ServletContext)
 * 
 * 
 * 
 * @member {Struct} [_class_loader]
 * @member {Real} [_major_version]
 * @member {Real} [_minor_version]
 * @member {String} [_context_path]
 * @member {String} [_server_info]
 * @member {Struct} [_attribute_names]
 * @member {String} [_servlet_context_name]
 * @member {Struct} [_filter_registrations]
 * @member {Struct.ElementsSessionCookieConfig} [_session_cookie_config]
 * @member {Struct.ElementsJspConfigDescriptor} [_jsp_config_descriptor]
 * @member {String} [_virtual_server_name]
 * @member {Real} [_session_timeout]
 * @member {Struct} [_init_parameter_names]
 * @member {Real} [_effective_major_version]
 * @member {Real} [_effective_minor_version]
 * @member {Struct} [_servlet_registrations]
 * @member {Array[String]} [_session_tracking_modes]
 * @member {Array[String]} [_default_session_tracking_modes]
 * @member {String} [_request_character_encoding]
 * @member {String} [_response_character_encoding]
 * @member {Array[String]} [_effective_session_tracking_modes]
 * @struct_end
 */

/**
 * @struct ElementsServletConfig
 * @desc > **Elements Schema**: [ServletConfig](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ServletConfig)
 * 
 * 
 * 
 * @member {String} [_servlet_name]
 * @member {Struct.ElementsServletContext} [_servlet_context]
 * @member {Struct} [_init_parameter_names]
 * @struct_end
 */

/**
 * @struct ElementsServletRegistration
 * @desc > **Elements Schema**: [ServletRegistration](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ServletRegistration)
 * 
 * 
 * 
 * @member {Array[String]} [_mappings]
 * @member {String} [_run_as_role]
 * @member {String} [_name]
 * @member {String} [_class_name]
 * @member {Struct} [_init_parameters]
 * @struct_end
 */

/**
 * @struct ElementsPaginationProfile
 * @desc > **Elements Schema**: [PaginationProfile](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationProfile)
 * 
 * This struct contains a pagination of profiles.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsProfile]} [_objects] An array holding structs representing profiles.
 * @struct_end
 */

/**
 * @struct ElementsCreateFollowerRequest
 * @desc > **Elements Schema**: [CreateFollowerRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateFollowerRequest)
 * 
 * This struct represents a request to create a follower.
 * 
 * @member {String} _followed_id The profile ID which to follow.
 * @struct_end
 */

/**
 * @struct ElementsFriend
 * @desc > **Elements Schema**: [Friend](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Friend)
 * 
 * This struct represents a player's friend. This includes the basic information of the friend as well as the friendship type, profiles he or she has across games, ...
 * 
 * @member {String} [_id] The unique ID of the friendship.
 * @member {Struct.ElementsUser} [_user] The User associated with this Profile.
 * @member {String} [_friendship] The friendship type.
 * @member {Array[Struct.ElementsProfile]} [_profiles] The profiles which are associated with the friend user.
 * @struct_end
 */

/**
 * @struct ElementsPaginationFriend
 * @desc > **Elements Schema**: [PaginationFriend](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationFriend)
 * 
 * This struct contains a pagination of friends.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsFriend]} [_objects] An array holding structs representing friends.
 * @struct_end
 */

/**
 * @struct ElementsCreateItemRequest
 * @desc > **Elements Schema**: [CreateItemRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateItemRequest)
 * 
 * This struct represents an item creation request.
 * 
 * @member {String} _name The name of the item.
 * @member {String} _display_name The display name of the item.
 * @member {String} _description The item's description.
 * @member {String} _category The item category, Allowed values: `"FUNGIBLE"`, `"DISTINCT"`
 * @member {Array[String]} [_tags] The item's tags.
 * @member {String} [_metadata_spec_id] The ID of the metadata spec.
 * @member {Struct} [_metadata] The item metadata.
 * @member {Real} [_public_visible] Whether this item is publically visible.
 * @member {String} [_metadata_spec] The metadata spec.
 * @struct_end
 */

/**
 * @struct ElementsPaginationItem
 * @desc > **Elements Schema**: [PaginationItem](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationItem)
 * 
 * This struct contains a pagination of items.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsItem]} [_objects] An array holding structs representing friends.
 * @struct_end
 */

/**
 * @struct ElementsUpdateItemRequest
 * @desc > **Elements Schema**: [UpdateItemRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateItemRequest)
 * 
 * This struct represents an update item request.
 * 
 * @member {String} _name The name of the item.
 * @member {String} _display_name The display name of the item.
 * @member {String} _description The item's description.
 * @member {Array[String]} [_tags] The item's tags.
 * @member {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 * @member {Struct} [_metadata] The item metadata.
 * @member {Real} [_public_visible] Whether this item is publically visible.
 * @struct_end
 */

/**
 * @struct ElementsCreateGooglePlayIapReceipt
 * @desc > **Elements Schema**: [CreateGooglePlayIapReceipt](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateGooglePlayIapReceipt)
 * 
 * This struct represents a Google Play IAP Receipt.
 * 
 * @member {String} _package_name The package name of the app. Note that this may be different from the applicationId/uniqueIdentifier which is why it should be provided with the request.
 * @member {String} _product_id The product ID purchased by the user, e.g. `com.namazustudios.example_app.pack_10_coins`.
 * @member {String} _purchase_token The token issued to the user upon successful Google Play purchase transaction.
 * @struct_end
 */

/**
 * @struct ElementsBuildIndexRequest
 * @desc > **Elements Schema**: [BuildIndexRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/BuildIndexRequest)
 * 
 * This struct contains settings to start a new indexing operation.
 * 
 * @member {Real} [_plan] Set to true to plan the index building.
 * @member {Array[String]} [_to_index] Set to true to perform the index building.
 * @struct_end
 */

/**
 * @struct ElementsIndexMetadataObject
 * @desc > **Elements Schema**: [IndexMetadataObject](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/IndexMetadataObject)
 * 
 * This struct represents an index metadata object.
 * 
 * @member {Struct} [_identifier] The identifier.
 * @struct_end
 */

/**
 * @struct ElementsIndexPlanStepObject
 * @desc > **Elements Schema**: [IndexPlanStepObject](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/IndexPlanStepObject)
 * 
 * 
 * 
 * @member {String} [_description]
 * @member {String} [_operation]
 * @member {Struct.ElementsIndexMetadataObject} [_index_metadata]
 * @struct_end
 */

/**
 * @struct ElementsIndexPlanObject
 * @desc > **Elements Schema**: [IndexPlanObject](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/IndexPlanObject)
 * 
 * 
 * 
 * @member {String} [_id]
 * @member {String} [_state]
 * @member {Struct.ElementsIndexPlanStepObject} [_steps]
 * @struct_end
 */

/**
 * @struct ElementsPaginationIndexPlanObject
 * @desc > **Elements Schema**: [PaginationIndexPlanObject](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationIndexPlanObject)
 * 
 * 
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsIndexPlanObject]} [_objects]
 * @struct_end
 */

/**
 * @struct ElementsInventoryItem
 * @desc > **Elements Schema**: [InventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/InventoryItem)
 * 
 * This struct represents an inventory item.
 * 
 * @member {String} _id The unique ID of the inventory item itself.
 * @member {Struct.ElementsUser} _user The User associated with this Profile.
 * @member {Struct.ElementsItem} _item The Item to be issued upon redemption.
 * @member {Real} _quantity The quantity of the Item in inventory
 * @member {Real} _priority The priority of this Item grouping in inventory (for stacked/packaged inventory support)
 * @struct_end
 */

/**
 * @struct ElementsAdvancedInventoryItemQuantityAdjustment
 * @desc > **Elements Schema**: [AdvancedInventoryItemQuantityAdjustment](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/AdvancedInventoryItemQuantityAdjustment)
 * 
 * This struct represents an advanced inventory item adjustment.
 * 
 * @member {String} _user_id The User whose inventory to modify.
 * @member {Real} _quantity_delta The delta to be applied to the inventory item quantity (positive or negative)
 * @member {Real} [_priority] The priority slot for the item.
 * @struct_end
 */

/**
 * @struct ElementsCreateAdvancedInventoryItemRequest
 * @desc > **Elements Schema**: [CreateAdvancedInventoryItemRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateAdvancedInventoryItemRequest)
 * 
 * This struct represents an advanced inventory item creation request.
 * 
 * @member {String} _user_id The User ID
 * @member {String} _item_id The item to reference.
 * @member {Real} [_quantity] The quantity of the Item in the inventory
 * @member {Real} [_priority] The priority slot for the item.
 * @struct_end
 */

/**
 * @struct ElementsPaginationInventoryItem
 * @desc > **Elements Schema**: [PaginationInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationInventoryItem)
 * 
 * This struct contains a pagination of inventory items.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsInventoryItem]} [_objects] An array holding structs representing inventory items.
 * @struct_end
 */

/**
 * @struct ElementsUpdateInventoryItemRequest
 * @desc > **Elements Schema**: [UpdateInventoryItemRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateInventoryItemRequest)
 * 
 * This struct represents an inventory item update request.
 * 
 * @member {Real} [_quantity] The quantity of the Item in the inventory
 * @struct_end
 */

/**
 * @struct ElementsDistinctInventoryItem
 * @desc > **Elements Schema**: [DistinctInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/DistinctInventoryItem)
 * 
 * This struct represents a distinct inventory item.
 * 
 * @member {String} _id The unique ID of the inventory item itself.
 * @member {Struct.ElementsItem} _item The Item to be issued upon redemption.
 * @member {Struct.ElementsUser} _user The User associated with this Profile.
 * @member {Struct.ElementsProfile} [_profile] The profile.
 * @member {Struct} [_metadata] The metadata.
 * @struct_end
 */

/**
 * @struct ElementsCreateDistinctInventoryItemRequest
 * @desc > **Elements Schema**: [CreateDistinctInventoryItemRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateDistinctInventoryItemRequest)
 * 
 * This struct represents a distinct inventory item creation request.
 * 
 * @member {String} _item_id The digital goods item ID.
 * @member {String} [_user_id] The id of the User owning this inventory item ID.
 * @member {String} [_profile_id] The profile ID of the Profile owning this inventory item.
 * @member {Struct} [_metadata] The metadata.
 * @struct_end
 */

/**
 * @struct ElementsPaginationDistinctInventoryItem
 * @desc > **Elements Schema**: [PaginationDistinctInventoryItem](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationDistinctInventoryItem)
 * 
 * This struct contains a pagination of distinct inventory items.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsDistinctInventoryItem]} [_objects] An array holding structs representing distinct inventory items.
 * @struct_end
 */

/**
 * @struct ElementsUpdateDistinctInventoryItemRequest
 * @desc > **Elements Schema**: [UpdateDistinctInventoryItemRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateDistinctInventoryItemRequest)
 * 
 * This struct represents a distinct inventory item update request.
 * 
 * @member {String} [_user_id] The ID of the User owning this inventory item ID.
 * @member {String} [_profile_id] The profile ID of the Profile owning this inventory item.
 * @member {Struct} [_metadata] The metadata.
 * @struct_end
 */

/**
 * @struct ElementsSimpleInventoryItemQuantityAdjustment
 * @desc > **Elements Schema**: [SimpleInventoryItemQuantityAdjustment](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/SimpleInventoryItemQuantityAdjustment)
 * 
 * This struct represents a simple inventory item quantity adjustment.
 * 
 * @member {String} _user_id The User whose inventory to modify.
 * @member {Real} _quantity_delta The delta to be applied to the inventory item quantity (positive or negative)
 * @struct_end
 */

/**
 * @struct ElementsCreateSimpleInventoryItemRequest
 * @desc > **Elements Schema**: [CreateSimpleInventoryItemRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateSimpleInventoryItemRequest)
 * 
 * This struct represents a simple inventory item creation request.
 * 
 * @member {String} _user_id The User ID
 * @member {String} _item_id The item to reference.
 * @member {Real} [_quantity] The quantity of the Item in inventory
 * @struct_end
 */

/**
 * @struct ElementsPhoneMatchedInvitation
 * @desc > **Elements Schema**: [PhoneMatchedInvitation](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PhoneMatchedInvitation)
 * 
 * This struct represents a single match between the user primary phone number and requested phone from invitation.
 * 
 * @member {String} [_phone_number] Phone number 
 * @member {Array[String]} [_profile_ids] The list of profile IDs that phone was matched
 * @struct_end
 */

/**
 * @struct ElementsInviteViaPhonesResponse
 * @desc > **Elements Schema**: [InviteViaPhonesResponse](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/InviteViaPhonesResponse)
 * 
 * This struct represents a response to invite users with phone numbers list.
 * 
 * @member {Array[Struct.ElementsPhoneMatchedInvitation]} [_matched] The list of objects representing matched phone numbers
 * @struct_end
 */

/**
 * @struct ElementsInviteViaPhonesRequest
 * @desc > **Elements Schema**: [InviteViaPhonesRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/InviteViaPhonesRequest)
 * 
 * This struct represents a request to invite users with phone numbers list.
 * 
 * @member {Array[String]} [_phone_numbers] The list of phone numbers
 * @struct_end
 */

/**
 * @struct ElementsSubjects
 * @desc > **Elements Schema**: [Subjects](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Subjects)
 * 
 * This struct represents the subjects allowed to delete.
 * 
 * @member {Array[Struct.ElementsUser]} _users Users which may perform the operations.
 * @member {Array[Struct.ElementsProfile]} _profiles Profiles, which owners may perform the operations.
 * @member {Real} [_wildcard] Flag to check who may perform the operations. True if all users may access the object.
 * @struct_end
 */

/**
 * @struct ElementsAccessPermissions
 * @desc > **Elements Schema**: [AccessPermissions](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/AccessPermissions)
 * 
 * This struct represents access permissions associated with LargeObject.
 * 
 * @member {Struct.ElementsSubjects} _read Subjects allowed to delete
 * @member {Struct.ElementsSubjects} _write Subjects allowed to delete
 * @member {Struct.ElementsSubjects} _delete Subjects allowed to delete
 * @struct_end
 */

/**
 * @struct ElementsLargeObject
 * @desc > **Elements Schema**: [LargeObject](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/LargeObject)
 * 
 * This struct represents a LargeObject.
 * 
 * @member {String} _id The unique ID of the LargeObject.
 * @member {String} _path The path to the file in the underlying bucket.
 * @member {Struct.ElementsAccessPermissions} _access_permissions Permission associated with LargeObject.
 * @member {String} [_url] The URL where the binary contents of the LargeObject may be read. May be null, since Path param or Id is pointer for object.
 * @member {String} [_mime_type] The MIME type of the LargeObject.
 * @member {String} [_state] Current state of large object, Allowed values: `"EMPTY"`, `"UPLOADED"`
 * @member {String} [_last_modified] Date of last modification
 * @struct_end
 */

/**
 * @struct ElementsContentDisposition
 * @desc > **Elements Schema**: [ContentDisposition](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ContentDisposition)
 * 
 * 
 * 
 * @member {String} [_type]
 * @member {Struct} [_parameters]
 * @member {String} [_file_name]
 * @member {String} [_creation_date]
 * @member {String} [_modification_date]
 * @member {String} [_read_date]
 * @member {Real} [_size]
 * @struct_end
 */

/**
 * @struct ElementsMediaType
 * @desc > **Elements Schema**: [MediaType](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/MediaType)
 * 
 * This struct represents a media type.
 * 
 * @member {String} [_type] The media type.
 * @member {String} [_subtype] The media subtype.
 * @member {Struct} [_parameters] The parameters.
 * @member {Real} [_wildcard_type] Whether the type is a wildcard character * or not.
 * @member {Real} [_wildcard_subtype] Whether the subtype is a wildcard character * or not.
 * @struct_end
 */

/**
 * @struct ElementsMultiPart
 * @desc > **Elements Schema**: [MultiPart](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/MultiPart)
 * 
 * This struct represents multipart form data.
 * 
 * @member {Struct.ElementsContentDisposition} [_content_disposition]
 * @member {Struct} [_entity]
 * @member {Struct} [_headers]
 * @member {Struct.ElementsMediaType} [_media_type]
 * @member {Struct} [_message_body_workers]
 * @member {Struct.ElementsMultiPart} [_parent]
 * @member {Struct} [_providers]
 * @member {Array[Struct.ElementsBodyPart]} [_body_parts]
 * @member {Struct} [_parameterized_headers]
 * @struct_end
 */

/**
 * @struct ElementsBodyPart
 * @desc > **Elements Schema**: [BodyPart](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/BodyPart)
 * 
 * 
 * 
 * @member {Struct.ElementsContentDisposition} [_content_disposition]
 * @member {Struct} [_entity]
 * @member {Struct} [_headers]
 * @member {Struct.ElementsMediaType} [_media_type]
 * @member {Struct} [_message_body_workers]
 * @member {Struct.ElementsMultiPart} [_parent]
 * @member {Struct} [_providers]
 * @member {Struct} [_parameterized_headers]
 * @struct_end
 */

/**
 * @struct ElementsFormDataContentDisposition
 * @desc > **Elements Schema**: [FormDataContentDisposition](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/FormDataContentDisposition)
 * 
 * 
 * 
 * @member {String} [_type]
 * @member {Struct} [_parameters]
 * @member {String} [_file_name]
 * @member {String} [_creation_date]
 * @member {String} [_modification_date]
 * @member {String} [_read_date]
 * @member {Real} [_size]
 * @member {String} [_name]
 * @struct_end
 */

/**
 * @struct ElementsFormDataBodyPart
 * @desc > **Elements Schema**: [FormDataBodyPart](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/FormDataBodyPart)
 * 
 * 
 * 
 * @member {Struct.ElementsContentDisposition} [_content_disposition]
 * @member {Struct} [_entity]
 * @member {Struct} [_headers]
 * @member {Struct.ElementsMediaType} [_media_type]
 * @member {Struct} [_message_body_workers]
 * @member {Struct.ElementsMultiPart} [_parent]
 * @member {Struct} [_providers]
 * @member {String} [_name]
 * @member {String} [_value]
 * @member {Struct} [_content]
 * @member {String} [_file_name]
 * @member {Real} [_simple]
 * @member {Struct.ElementsFormDataContentDisposition} [_form_data_content_disposition]
 * @member {Struct} [_parameterized_headers]
 * @struct_end
 */

/**
 * @struct ElementsMultivaluedMapStringParameterizedHeader
 * @desc > **Elements Schema**: [MultivaluedMapStringParameterizedHeader](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/MultivaluedMapStringParameterizedHeader)
 * 
 * 
 * 
 * @member {Real} [_empty]
 * @struct_end
 */

/**
 * @struct ElementsMultivaluedMapStringString
 * @desc > **Elements Schema**: [MultivaluedMapStringString](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/MultivaluedMapStringString)
 * 
 * 
 * 
 * @member {Real} [_empty]
 * @struct_end
 */

/**
 * @struct ElementsParameterizedHeader
 * @desc > **Elements Schema**: [ParameterizedHeader](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ParameterizedHeader)
 * 
 * 
 * 
 * @member {String} [_value]
 * @member {Struct} [_parameters]
 * @struct_end
 */

/**
 * @struct ElementsSubjectRequest
 * @desc > **Elements Schema**: [SubjectRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/SubjectRequest)
 * 
 * This struct specifies the Subjects which can operate against the LargeObject.
 * 
 * @member {Array[String]} _user_ids An array of all UserIds which can operate against the LargeObject.
 * @member {Array[String]} _profile_ids An array of all ProfileIds which can operate against the LargeObject.
 * @member {Real} [_wildcard] Flag to check who may perform the operation. If true, all anonymous users may perform the operation.
 * @struct_end
 */

/**
 * @struct ElementsCreateLargeObjectRequest
 * @desc > **Elements Schema**: [CreateLargeObjectRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateLargeObjectRequest)
 * 
 * This struct represents a LargeObject request.
 * 
 * @member {String} _mime_type The MIME type associated with the object.
 * @member {Struct.ElementsSubjectRequest} _read Specifies the Subjects which can read the LargeObject.
 * @member {Struct.ElementsSubjectRequest} _write Specifies the Subjects which can write the LargeObject.
 * @member {Struct.ElementsSubjectRequest} _delete Specifies the Subjects which can delete the LargeObject.
 * @struct_end
 */

/**
 * @struct ElementsCreateLargeObjectFromUrlRequest
 * @desc > **Elements Schema**: [CreateLargeObjectFromUrlRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateLargeObjectFromUrlRequest)
 * 
 * This struct represents a LargeObject request from URL.
 * 
 * @member {String} _mime_type The MIME type associated with the object.
 * @member {Struct.ElementsSubjectRequest} _read Specifies the Subjects which can read the LargeObject.
 * @member {Struct.ElementsSubjectRequest} _write Specifies the Subjects which can write the LargeObject.
 * @member {Struct.ElementsSubjectRequest} _delete Specifies the Subjects which can delete the LargeObject.
 * @member {String} _file_url List with image URLs
 * @struct_end
 */

/**
 * @struct ElementsUpdateLargeObjectRequest
 * @desc > **Elements Schema**: [UpdateLargeObjectRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateLargeObjectRequest)
 * 
 * This struct represents a LargeObject update request.
 * 
 * @member {String} _mime_type The MIME type associated with the object.
 * @member {Struct.ElementsSubjectRequest} _read Specifies the Subjects which can read the LargeObject.
 * @member {Struct.ElementsSubjectRequest} _write Specifies the Subjects which can write the LargeObject.
 * @member {Struct.ElementsSubjectRequest} _delete Specifies the Subjects which can delete the LargeObject.
 * @struct_end
 */

/**
 * @struct ElementsLeaderboard
 * @desc > **Elements Schema**: [Leaderboard](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Leaderboard)
 * 
 * This struct represents a leaderboard.
 * 
 * @member {String} _name The name of the leaderboard. This must be unique across all leaderboards.
 * @member {String} _time_strategy_type The time strategy for the leaderboard. Current options are `"ALL_TIME"` and `"EPOCHAL"`.
 * @member {String} _score_strategy_type The score strategy for the leaderboard. Current options are `"OVERWRITE_IF_GREATER"` and `"ACCUMULATE"`.
 * @member {String} _title The user-presentable name or title for for the leaderboard.
 * @member {String} _score_units The units-of measure for the score type of the leaderboard.
 * @member {String} [_id] The leaderboard ID.
 * @member {Real} [_first_epoch_timestamp] The time at which the leaderboard epoch intervals should begin (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then `_epoch_interval` must also be provided.
 * @member {Real} [_epoch_interval] The duration for a leaderboard epoch interval (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then `_first_epoch_timestamp` must also be provided.
 * @struct_end
 */

/**
 * @struct ElementsPaginationLeaderboard
 * @desc > **Elements Schema**: [PaginationLeaderboard](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationLeaderboard)
 * 
 * This struct contains a pagination of leaderboards.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsLeaderboard]} [_objects] An array holding structs representing leaderboards.
 * @struct_end
 */

/**
 * @struct ElementsScore
 * @desc > **Elements Schema**: [Score](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Score)
 * 
 * This struct represents a score.
 * 
 * @member {String} _id The ID of the Score
 * @member {Struct.ElementsProfile} _profile The profile.
 * @member {Real} _creation_timestamp The time at which the score was created on the server.
 * @member {Real} _leaderboard_epoch The epoch to which the score belongs for the associated leaderboard. By convention, if the leaderboard is all-time, this value will be set to zero.
 * @member {Real} [_point_value] The point value of the score.
 * @member {String} [_score_units] The units of measure for the points. For example, if the points in the game were called "coins" instead of "points" this would be used to designate as such in the UI.
 * @struct_end
 */

/**
 * @struct ElementsRank
 * @desc > **Elements Schema**: [Rank](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Rank)
 * 
 * This struct represents a rank.
 * 
 * @member {Struct.ElementsScore} _score The score belonging to the rank.
 * @member {Real} [_position] The position of the associated score in the result set.
 * @struct_end
 */

/**
 * @struct ElementsPaginationRank
 * @desc > **Elements Schema**: [PaginationRank](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationRank)
 * 
 * This struct contains a pagination of ranks.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsRank]} [_objects] An array holding structs representing ranks.
 * @struct_end
 */

/**
 * @struct ElementsRankRow
 * @desc > **Elements Schema**: [RankRow](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/RankRow)
 * 
 * This struct represents a rank row.
 * 
 * @member {String} _profile_id The profile ID of the user who holds this rank.
 * @member {String} _profile_display_name The profile display name of the user who holds this rank.
 * @member {String} _profile_image_url The profile image URL of the user who holds this rank.
 * @member {Real} _last_login The last login.
 * @member {String} [_id] The ID of the Score.
 * @member {Real} [_position] The position of the associated score in the result set.
 * @member {Real} [_point_value] The point value of the score.
 * @member {String} [_score_units] The units of measure for the points. For example, if the points in the game were called "coins" instead of "points" this would be used to designate as such in the UI.
 * @member {Real} [_creation_timestamp] The time at which the score was created on the server.
 * @member {Real} [_leaderboard_epoch] The epoch to which the score belongs for the associated leaderboard. By convention, if the leaderboard is all-time, this value will be set to zero.
 * @struct_end
 */

/**
 * @struct ElementsTabulationRankRow
 * @desc > **Elements Schema**: [TabulationRankRow](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/TabulationRankRow)
 * 
 * This struct represents a tabulation of rank rows.
 * 
 * @member {Array[Struct.ElementsRankRow]} _rows An array containing the rank rows.
 * @struct_end
 */

/**
 * @struct ElementsMatch
 * @desc > **Elements Schema**: [Match](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Match)
 * 
 * This struct represents a single one-on-one match between the current player and an opponent. Once matched, the player will be able to create a game against the supplied opposing player. The server may modify or delete matches based on a variety of circumstances.
 * 
 * See: [Matchmaking](https://namazustudios.com/docs/namazu-elements-core/features/configuration/matchmaking/)
 * 
 * @member {String} _scheme The scheme to use when matching with other players.
 * @member {Struct.ElementsProfile} _player The current player's profile.
 * @member {String} [_id] The unique ID of the match.
 * @member {String} [_scope] An optional scope for the match. For example, if the match were part of a tournament, it could be scoped to the unique ID of the tournament.
 * @member {Struct.ElementsProfile} [_opponent] The opponent's profile.
 * @member {Real} [_last_updated_timestamp] The time of the last modification of the match.
 * @member {String} [_game_id] The system-assigned game ID of the match. Null until the match is successfully made.
 * @member {Struct} [_metadata] Additional arbitrary metadata that is attached to the match.
 * @struct_end
 */

/**
 * @struct ElementsPaginationMatch
 * @desc > **Elements Schema**: [PaginationMatch](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationMatch)
 * 
 * This struct contains a pagination of matches.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsMatch]} [_objects] An array holding structs representing the matches.
 * @struct_end
 */

/**
 * @struct ElementsMetadata
 * @desc > **Elements Schema**: [Metadata](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Metadata)
 * 
 * This struct represents a custom metadata object.
 * 
 * See: [Metadata](https://namazustudios.com/docs/namazu-elements-core/features/schemas-and-metadata-specifications/)
 * 
 * @member {String} _id The metadata object's database assigned unique ID.
 * @member {String} _name A unique name for the metadata object.
 * @member {Struct} _metadata An object containing the metadata payload as key-value pairs.
 * @member {String} _access_level The minimum level of access required to view this metadata.
 * @member {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 * @struct_end
 */

/**
 * @struct ElementsCreateMetadataRequest
 * @desc > **Elements Schema**: [CreateMetadataRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateMetadataRequest)
 * 
 * This struct represents a metadata creation request.
 * 
 * @member {String} _name A unique name for the metadata object.
 * @member {Struct} [_metadata] An object containing the metadata payload as key-value pairs.
 * @member {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 * @member {String} [_access_level] The minimum level of access required to view this metadata.
 * @struct_end
 */

/**
 * @struct ElementsPaginationMetadata
 * @desc > **Elements Schema**: [PaginationMetadata](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationMetadata)
 * 
 * This struct contains a pagination of metadata.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsMetadata]} [_objects] An array holding structs representing the metadata.
 * @struct_end
 */

/**
 * @struct ElementsUpdateMetadataRequest
 * @desc > **Elements Schema**: [UpdateMetadataRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateMetadataRequest)
 * 
 * This struct represents a metadata update request.
 * 
 * @member {Struct} [_metadata] An object containing the metadata payload as key-value pairs.
 * @member {Struct.ElementsMetadataSpec} [_metadata_spec] Represents a spec for metadata.
 * @member {String} [_access_level] The minimum level of access required to view this metadata.
 * @struct_end
 */

/**
 * @struct ElementsReward
 * @desc > **Elements Schema**: [Reward](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Reward)
 * 
 * This struct represents a reward(s) that will be granted upon completion.
 * 
 * @member {Struct.ElementsItem} _item The Item to be issued upon redemption.
 * @member {Real} _quantity The quantity of the Item that is rewarded
 * @member {Struct} [_metadata] The metadata for this reward
 * @struct_end
 */

/**
 * @struct ElementsStep
 * @desc > **Elements Schema**: [Step](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Step)
 * 
 * This struct represents a step to be completed.
 * 
 * See: [Progress and Missions](https://namazustudios.com/docs/namazu-elements-core/features/progress-and-missions/)
 * 
 * @member {String} _display_name The display name for the step
 * @member {String} _description The description of the step
 * @member {Real} _count The number of times the step must be completed to receive the reward(s)
 * @member {Array[Struct.ElementsReward]} _rewards The reward(s) that will be granted upon completion
 * @member {Struct} [_metadata] The metadata for this step
 * @struct_end
 */

/**
 * @struct ElementsMission
 * @desc > **Elements Schema**: [Mission](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Mission)
 * 
 * This struct represents a mission.
 * 
 * See: [Progress and Missions](https://namazustudios.com/docs/namazu-elements-core/features/progress-and-missions/)
 * 
 * @member {String} _id The unique ID of the mission
 * @member {String} _name The name of the mission
 * @member {String} _display_name The display name for the mission
 * @member {String} _description The description of the mission
 * @member {Array[String]} [_tags] The tags used to categorize this mission
 * @member {Array[Struct.ElementsStep]} [_steps] The steps that constitute the mission (may be null if finalRepeatStep is specified)
 * @member {Struct.ElementsStep} [_final_repeat_step] The final repeating step (may be null if step(s) are specified)
 * @member {Struct} [_metadata] The metadata for this mission
 * @struct_end
 */

/**
 * @struct ElementsPaginationMission
 * @desc > **Elements Schema**: [PaginationMission](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationMission)
 * 
 * This struct contains a pagination of missions.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsMission]} [_objects] An array holding structs representing the missions.
 * @struct_end
 */

/**
 * @struct ElementsProgressMissionInfo
 * @desc > **Elements Schema**: [ProgressMissionInfo](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ProgressMissionInfo)
 * 
 * This struct contains info on a mission's progress.
 * 
 * @member {String} _id The ID of the mission
 * @member {String} _name The name of the mission
 * @member {String} _display_name The display name for the mission
 * @member {String} _description The description of the mission
 * @member {Array[Struct.ElementsStep]} [_steps] The steps that constitute the mission (may be null if `"_final_repeat_step"` is specified)
 * @member {Struct.ElementsStep} [_final_repeat_step] The final repeating step (may be null if step(s) are specified)
 * @member {Array[String]} [_tags] The tags used to categorize this mission
 * @member {Struct} [_metadata] The metadata for this mission
 * @struct_end
 */

/**
 * @struct ElementsSchedule
 * @desc > **Elements Schema**: [Schedule](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Schedule)
 * 
 * This struct represents a schedule.
 * 
 * @member {String} _id The unique ID of the schedule.
 * @member {String} _name The unique name of the schedule.
 * @member {String} _display_name The display name of the schedule.
 * @member {String} _description The description for this schedule.
 * @struct_end
 */

/**
 * @struct ElementsScheduleEvent
 * @desc > **Elements Schema**: [ScheduleEvent](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ScheduleEvent)
 * 
 * This struct represents a listing of ScheduleEvents which are managing this Progress. Empty or null if the Progress is not managed as part of a Schedule.
 * 
 * @member {String} _id The ID of the listing
 * @member {Struct.ElementsSchedule} _schedule The schedule
 * @member {Array[Struct.ElementsMission]} _missions An array containing the missions
 * @member {Real} [_begin]
 * @member {Real} [_end]
 * @struct_end
 */

/**
 * @struct ElementsProgress
 * @desc > **Elements Schema**: [Progress](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Progress)
 * 
 * This struct represents a progress instance.
 * 
 * @member {String} _id The unique ID of the progress instance
 * @member {Struct.ElementsProfile} _profile The profile.
 * @member {Struct.ElementsProgressMissionInfo} _mission The mission
 * @member {Struct.ElementsStep} [_current_step] The final repeating step (may be null if step(s) are specified)
 * @member {Real} [_remaining] The remaining actions
 * @member {Array[Struct.ElementsRewardIssuance]} [_reward_issuances] List of all reward issuances that are issued but not expired, or redeemed but persistent.
 * @member {Real} [_sequence] The current number of completed steps. Note that this may exceed the total number of steps, i.e. the final step may be repeated infinitely.
 * @member {Real} [_managed_by_schedule] Indicates that this progress is managed by a Schedule. If true, the Progress will be deleted when no schedules have the progress active. This will be true if the Progress was created as part of a Schedule.
 * @member {Array[Struct.ElementsSchedule]} [_schedules] A listing of the Schedules which are managing this Progress. Empty or null if the Progress is not managed as part of a Schedule.
 * @member {Array[Struct.ElementsScheduleEvent]} [_schedule_events] A listing of ScheduleEvents which are managing this Progress. Empty or null if the Progress is not managed as part of a Schedule.
 * @struct_end
 */

/**
 * @struct ElementsPaginationProgress
 * @desc > **Elements Schema**: [PaginationProgress](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationProgress)
 * 
 * This struct contains a pagination of progress instances.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsProgress]} [_objects] An array holding structs representing the progress instances.
 * @struct_end
 */

/**
 * @struct ElementsProgressRow
 * @desc > **Elements Schema**: [ProgressRow](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ProgressRow)
 * 
 * This struct represents a progress row.
 * 
 * @member {String} [_id] The ID.
 * @member {String} [_profile_id] The profile ID.
 * @member {String} [_profile_image_url] The profile image URL.
 * @member {String} [_profile_display_name] The profile display name.
 * @member {String} [_step_display_name] The step display name.
 * @member {String} [_step_description] The step description.
 * @member {Real} [_remaining] The remaining steps.
 * @member {Real} [_step_count] The step count.
 * @struct_end
 */

/**
 * @struct ElementsTabulationProgressRow
 * @desc > **Elements Schema**: [TabulationProgressRow](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/TabulationProgressRow)
 * 
 * This struct represents a tabulation of progress rows.
 * 
 * @member {Array[Struct.ElementsProgressRow]} _rows An array containing the progress rows.
 * @struct_end
 */

/**
 * @struct ElementsPaginationRewardIssuance
 * @desc > **Elements Schema**: [PaginationRewardIssuance](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationRewardIssuance)
 * 
 * This struct contains a pagination of reward issuances.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsRewardIssuance]} [_objects] An array holding structs representing the reward issuances.
 * @struct_end
 */

/**
 * @struct ElementsRewardIssuanceRedemptionResult
 * @desc > **Elements Schema**: [RewardIssuanceRedemptionResult](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/RewardIssuanceRedemptionResult)
 * 
 * This struct represents a reward issuance redemption result.
 * 
 * @member {String} [_reward_issuance_id] The ID as originally provided in the request.
 * @member {Struct.ElementsRewardIssuance} [_reward_issuance] Represents a Reward that has been issued but has not yet been claimed by the user. The reward is assigned a unique ID to ensure that it may not have been applied more than once.
 * @member {Struct.ElementsInventoryItem} [_inventory_item] Should the redemption be successful, the Inventory Item that was updated. Otherwise, null.
 * @member {String} [_error_details] Should the redemption fail, the error details. Otherwise, null.
 * @struct_end
 */

/**
 * @struct ElementsCreateScheduleEventRequest
 * @desc > **Elements Schema**: [CreateScheduleEventRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateScheduleEventRequest)
 * 
 * This struct represents a schedule event creation request.
 * 
 * @member {Array[String]} _mission_names_or_ids The names or IDs of the missions.
 * @member {Real} [_begin] The begin time.
 * @member {Real} [_end] The end time.
 * @struct_end
 */

/**
 * @struct ElementsPaginationScheduleEvent
 * @desc > **Elements Schema**: [PaginationScheduleEvent](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationScheduleEvent)
 * 
 * This struct represents a pagination of schedule events.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsScheduleEvent]} [_objects] An array holding structs representing the schedule events.
 * @struct_end
 */

/**
 * @struct ElementsUpdateScheduleEventRequest
 * @desc > **Elements Schema**: [UpdateScheduleEventRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateScheduleEventRequest)
 * 
 * This struct represents a schedule event update request.
 * 
 * @member {Array[String]} _mission_names_or_ids The names or IDs of the missions.
 * @member {Real} [_begin] The begin time.
 * @member {Real} [_end] The end time.
 * @struct_end
 */

/**
 * @struct ElementsCreateScheduleRequest
 * @desc > **Elements Schema**: [CreateScheduleRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateScheduleRequest)
 * 
 * This struct represents a schedule creation request.
 * 
 * @member {String} _name The schedule name.
 * @member {String} _display_name The schedule display name.
 * @member {String} _description The schedule description.
 * @struct_end
 */

/**
 * @struct ElementsPaginationSchedule
 * @desc > **Elements Schema**: [PaginationSchedule](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationSchedule)
 * 
 * This struct contains a pagination of schedules.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsSchedule]} [_objects] An array holding structs representing the schedules.
 * @struct_end
 */

/**
 * @struct ElementsUpdateScheduleRequest
 * @desc > **Elements Schema**: [UpdateScheduleRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateScheduleRequest)
 * 
 * This struct represents a schedule update request.
 * 
 * @member {String} _name The schedule name.
 * @member {String} _display_name The schedule display name.
 * @member {String} _description The schedule description.
 * @struct_end
 */

/**
 * @struct ElementsFCMRegistration
 * @desc > **Elements Schema**: [FCMRegistration](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/FCMRegistration)
 * 
 * This struct represents a Firebase Cloud Messaging Registration Token.
 * 
 * @member {String} _registration_token The actual Firebase registration.
 * @member {String} [_id] The unique ID of the token stored in the database.
 * @member {Struct.ElementsProfile} [_profile] The profile.
 * @struct_end
 */

/**
 * @struct ElementsCreateProfileRequest
 * @desc > **Elements Schema**: [CreateProfileRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateProfileRequest)
 * 
 * This struct represents a request to create a profile for a user.
 * 
 * @member {String} _user_id The user ID this profile belongs to.
 * @member {String} _application_id The application ID this profile belongs to.
 * @member {String} [_image_url] A URL to the image of the profile. (i.e. the User's Avatar).
 * @member {String} [_display_name] A non-unique display name for this profile.
 * @member {Struct} [_metadata] A map of arbitrary metadata.
 * @struct_end
 */

/**
 * @struct ElementsUpdateProfileRequest
 * @desc > **Elements Schema**: [UpdateProfileRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateProfileRequest)
 * 
 * This struct represents a request to update a profile.
 * 
 * @member {String} [_image_url] A URL to the image of the profile. (i.e. the User's Avatar).
 * @member {String} [_display_name] A non-unique display name for this profile.
 * @member {Struct} [_metadata] A map of arbitrary metadata.
 * @struct_end
 */

/**
 * @struct ElementsUpdateProfileImageRequest
 * @desc > **Elements Schema**: [UpdateProfileImageRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateProfileImageRequest)
 * 
 * This struct represents a request to update an image profile.
 * 
 * @member {String} _mime_type MimeType of image
 * @struct_end
 */

/**
 * @struct ElementsSaveDataDocument
 * @desc > **Elements Schema**: [SaveDataDocument](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/SaveDataDocument)
 * 
 * This struct represents an arbitrary save data document that persists on the server. The document saves with a version identifier such that clients may resolve conflicts between the local copy and the remote copy.
 * 
 * @member {String} _version The revision of the save data document.
 * @member {String} _contents The contents of the save data.
 * @member {String} [_id] The database assigned unique ID of the document.
 * @member {Real} [_slot] The slot of the property.
 * @member {Struct.ElementsUser} [_user] The User associated with this Profile.
 * @member {Struct.ElementsProfile} [_profile] The profile.
 * @member {Real} [_timestamp] The timestamp of the last write to this document.
 * @struct_end
 */

/**
 * @struct ElementsCreateSaveDataDocumentRequest
 * @desc > **Elements Schema**: [CreateSaveDataDocumentRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateSaveDataDocumentRequest)
 * 
 * This struct is used to create a save data document on the remote.
 * 
 * @member {Real} _slot The slot of the property. Must be unique for user or profile.
 * @member {String} _contents The contents of the save data.
 * @member {String} [_user_id] The ID of the user which owns the save data. If specified, the user will own this save data and the `_profile_id` must be null or be owned by the user specified.
 * @member {String} [_profile_id] The ID of the profile which owns the save data. If specified, the profile will own this save data and the `_user_id` must be null or be owned by the user specified.
 * @struct_end
 */

/**
 * @struct ElementsPaginationSaveDataDocument
 * @desc > **Elements Schema**: [PaginationSaveDataDocument](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationSaveDataDocument)
 * 
 * This struct contains a pagination of save data documents.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsSaveDataDocument]} [_objects] An array holding structs representing the save data documents.
 * @struct_end
 */

/**
 * @struct ElementsUpdateSaveDataDocumentRequest
 * @desc > **Elements Schema**: [UpdateSaveDataDocumentRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateSaveDataDocumentRequest)
 * 
 * This struct is used to update a save data document. This accepts the contents of the document as well as the versioning information required to take the update properly.
 * 
 * @member {String} _contents The contents of the save data.
 * @member {Real} [_force] Whether to force the update.
 * @member {String} [_version] The version.
 * @struct_end
 */

/**
 * @struct ElementsCreateMetadataSpecRequest
 * @desc > **Elements Schema**: [CreateMetadataSpecRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateMetadataSpecRequest)
 * 
 * This struct represents a request to create a MetadataSpec definition.
 * 
 * @member {Array[Struct.ElementsMetadataSpecProperty]} _properties The token template tabs to create.
 * @member {String} [_name] The name of the metadata spec.
 * @member {String} [_type] The type of the metadata spec.
 * @struct_end
 */

/**
 * @struct ElementsEditorLayout
 * @desc > **Elements Schema**: [EditorLayout](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/EditorLayout)
 * 
 * This struct defines an editor layout element.
 * 
 * @member {String} [_key] The key.
 * @member {String} [_title] The title.
 * @member {String} [_placeholder] The placeholder.
 * @struct_end
 */

/**
 * @struct ElementsJsonSchema
 * @desc > **Elements Schema**: [JsonSchema](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/JsonSchema)
 * 
 * This struct represents a subset of the JSON-Schema.
 * 
 * See: https://json-schema.org/draft/2020-12/json-schema-core
 * 
 * @member {String} [_get_id] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [_get_schema] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [_title] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [_description] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [_type] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {Struct} [_properties] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {Array[String]} [_required] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @struct_end
 */

/**
 * @struct ElementsEditorSchema
 * @desc > **Elements Schema**: [EditorSchema](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/EditorSchema)
 * 
 * This struct defines an editor schema which contains a JSON Schema, layout, and initial data for the editor.
 * 
 * @member {Struct} [_data] The data itself.
 * @member {Struct.ElementsJsonSchema} [_schema] A Subset of the JSON-Schema - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {Array[Struct.ElementsEditorLayout]} [_layout] The editor layout.
 * @struct_end
 */

/**
 * @struct ElementsJsonSchemaProperty
 * @desc > **Elements Schema**: [JsonSchemaProperty](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/JsonSchemaProperty)
 * 
 * This struct defines a JSON schema property.
 * 
 * See: https://json-schema.org/draft/2020-12/json-schema-core
 * 
 * @member {String} [_type] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [_title] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [_description] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {Array[String]} [_required] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @struct_end
 */

/**
 * @struct ElementsPaginationMetadataSpec
 * @desc > **Elements Schema**: [PaginationMetadataSpec](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationMetadataSpec)
 * 
 * This struct represents a pagination of metadata specs.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsMetadataSpec]} [_objects] An array holding structs representing the metadata specs.
 * @struct_end
 */

/**
 * @struct ElementsUpdateMetadataSpecRequest
 * @desc > **Elements Schema**: [UpdateMetadataSpecRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UpdateMetadataSpecRequest)
 * 
 * This struct represents a request to update a MetadataSpec.
 * 
 * @member {String} [_name] The name of the metadata spec.
 * @member {String} [_type] The type of the metadata spec.
 * @member {Array[Struct.ElementsMetadataSpecProperty]} [_properties] The updated list of properties.
 * @struct_end
 */

/**
 * @struct ElementsMockSessionCreation
 * @desc > **Elements Schema**: [MockSessionCreation](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/MockSessionCreation)
 * 
 * This struct represents the mock session creation.
 * 
 * @member {String} [_session_secret] The Session Secret to pass to subsequent requests through headers.
 * @member {Struct.ElementsSession} [_session] The Session object generated by the request.
 * @member {Real} [_user_expires_at] The associated mock user will automatically be deleted at supplied time.
 * @member {String} [_password] The randomly-assigned password for the mock user.
 * @struct_end
 */

/**
 * @struct ElementsMockSessionRequest
 * @desc > **Elements Schema**: [MockSessionRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/MockSessionRequest)
 * 
 * This struct is used to create a mock session with the server. This will create a temporary user as well which will exist for a short period of time.
 * 
 * @member {Real} [_lifetime_in_seconds] The lifetime of the user in seconds. After this amount of time,
 * @member {Struct.ElementsApplication} [_application] The application.
 * @struct_end
 */

/**
 * @struct ElementsUsernamePasswordSessionRequest
 * @desc > **Elements Schema**: [UsernamePasswordSessionRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UsernamePasswordSessionRequest)
 * 
 * This struct represents a session request using a user ID and password.
 * 
 * @member {String} _user_id The user ID.
 * @member {String} _password The password.
 * @member {String} [_profile_id] The profile ID to assign to the session.
 * @member {String} [_profile_selector] A query string to select the profile to use.
 * @struct_end
 */

/**
 * @struct ElementsDatabaseHealthStatus
 * @desc > **Elements Schema**: [DatabaseHealthStatus](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/DatabaseHealthStatus)
 * 
 * This struct represents a database health status.
 * 
 * @member {String} [_name] The database name.
 * @member {String} [_metadata] The metadata.
 * @struct_end
 */

/**
 * @struct ElementsDiscoveryHealthStatus
 * @desc > **Elements Schema**: [DiscoveryHealthStatus](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/DiscoveryHealthStatus)
 * 
 * This struct represents a discovery health status.
 * 
 * @member {Array[String]} [_records] An array of records.
 * @member {Array[String]} [_known_hosts] An array holding the known hosts.
 * @struct_end
 */

/**
 * @struct ElementsInstanceHealthStatus
 * @desc > **Elements Schema**: [InstanceHealthStatus](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/InstanceHealthStatus)
 * 
 * This struct represents an instance health status.
 * 
 * @member {String} [_instance_id] The instance ID.
 * @member {Array[String]} [_node_ids] The node IDs.
 * @struct_end
 */

/**
 * @struct ElementsRoutingHealthStatus
 * @desc > **Elements Schema**: [RoutingHealthStatus](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/RoutingHealthStatus)
 * 
 * This struct represents a routing health status.
 * 
 * @member {String} [_instance_id] The instance ID.
 * @member {Array[String]} [_routing_table] The routing table.
 * @member {Array[String]} [_master_node_routing_table] The master node routing table.
 * @member {Array[String]} [_application_node_routing_table] The application node routing table.
 * @struct_end
 */

/**
 * @struct ElementsInvokerHealthStatus
 * @desc > **Elements Schema**: [InvokerHealthStatus](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/InvokerHealthStatus)
 * 
 * This struct represents an invoker health status.
 * 
 * @member {Array[String]} [_priorities] An array of priorities.
 * @member {Array[String]} [_connected_peers] An array of connected peers.
 * @struct_end
 */

/**
 * @struct ElementsHealthStatus
 * @desc > **Elements Schema**: [HealthStatus](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/HealthStatus)
 * 
 * This struct represents a health status.
 * 
 * @member {Real} [_checks_failed] The number of checks failed.
 * @member {Real} [_checks_performed] The number of checks performed.
 * @member {Real} [_overall_health] The overall health.
 * @member {Array[String]} [_problems] An array holding the problems.
 * @member {Struct.ElementsInstanceHealthStatus} [_instance_status] The instance status.
 * @member {Array[Struct.ElementsDatabaseHealthStatus]} [_database_status] The database status.
 * @member {Struct.ElementsDiscoveryHealthStatus} [_discovery_health_status] The discovery health status.
 * @member {Struct.ElementsRoutingHealthStatus} [_routing_health_status] The routing health status.
 * @member {Struct.ElementsInvokerHealthStatus} [_invoker_health_status] The invoker health status.
 * @struct_end
 */

/**
 * @struct ElementsVersion
 * @desc > **Elements Schema**: [Version](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/Version)
 * 
 * This struct represents an elements version.
 * 
 * @member {String} [_version] The version.
 * @member {String} [_revision] The revision.
 * @member {String} [_timestamp] The timestamp.
 * @struct_end
 */

/**
 * @struct ElementsUserCreateResponse
 * @desc > **Elements Schema**: [UserCreateResponse](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UserCreateResponse)
 * 
 * This struct represents the response to a user creation request.
 * 
 * @member {String} [_id] The user ID.
 * @member {String} [_name] The name of the user.
 * @member {String} [_email] The user's email.
 * @member {String} [_first_name] The user's first name.
 * @member {String} [_last_name] The user's last name.
 * @member {String} [_level] The user's privilege level. Allowed values: `"UNPRIVILEGED"`, `"USER"`, `"SUPERUSER"`
 * @member {Real} [_active] Whether the user is active or not.
 * @member {String} [_facebook_id] The user's Facebook ID.
 * @member {String} [_firebase_id] The user's Firebase ID.
 * @member {String} [_apple_sign_in_id] The user's Apple Sign In ID.
 * @member {String} [_primary_phone_nb] The user's primary phone number.
 * @member {Array[Struct.ElementsProfile]} [_profiles] The user's profiles.
 * @member {String} [_password] The user's password.
 * @member {Array[String]} [_linked_accounts] The user's linked accounts.
 * @struct_end
 */

/**
 * @struct ElementsCreateProfileSignupRequest
 * @desc > **Elements Schema**: [CreateProfileSignupRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/CreateProfileSignupRequest)
 * 
 * This struct represents a profile signup request, which is used in conjunction with the user creation request to specify.
 * 
 * @member {String} _application_id The application ID this profile belongs to.
 * @member {String} [_display_name] A non-unique display name for this profile. If left null, the server will assign.
 * @member {String} [_image_url] A URL to the image of the profile. (i.e. the User's Avatar). If left null, the server will not assign any URL.
 * @struct_end
 */

/**
 * @struct ElementsUserCreateRequest
 * @desc > **Elements Schema**: [UserCreateRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UserCreateRequest)
 * 
 * This struct represents a user creation request.
 * 
 * @member {String} [_name] The user's name.
 * @member {String} [_email] The user's email.
 * @member {String} [_primary_phone_nb] The user's primary phone number.
 * @member {String} [_first_name] The user's first name.
 * @member {String} [_last_name] The user's last name.
 * @member {String} [_password] The user's plaintext password, only to be provided in POST/PUT requests in the User Resource REST API interface. In the future, a dedicated REST API model may be constructed instead of using a direct User model.
 * @member {String} [_level] The user's level to assign. Depending on the usage, the server may ignore this field and assign its own description.
 * @member {Array[Struct.ElementsCreateProfileSignupRequest]} [_profiles] A list of profiles to assign to this user during creation. The server will attempt to create a profile for each item in this list.
 * @struct_end
 */

/**
 * @struct ElementsPaginationUser
 * @desc > **Elements Schema**: [PaginationUser](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/PaginationUser)
 * 
 * This struct represents a pagination of users.
 * 
 * @member {Real} [_offset] The offset in the pagination.
 * @member {Real} [_total] The total number of results.
 * @member {Real} [_approximation] Whether this is an approximation or not.
 * @member {Array[Struct.ElementsUser]} [_objects] An array holding structs representing the users.
 * @struct_end
 */

/**
 * @struct ElementsUserUpdateRequest
 * @desc > **Elements Schema**: [UserUpdateRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UserUpdateRequest)
 * 
 * This struct represents a user update request.
 * 
 * @member {String} _name The user's name.
 * @member {String} _email The user's email.
 * @member {String} _level The user's privilege level. Allowed values: `"UNPRIVILEGED"`, `"USER"`, `"SUPERUSER"`
 * @member {String} [_primary_phone_nb] The user's primary phone number.
 * @member {String} [_first_name] The user's first name.
 * @member {String} [_last_name] The user's last name.
 * @member {String} [_password] The user's plaintext password, only to be provided in POST/PUT requests in the User Resource REST API interface. In the future, a dedicated REST API model may be constructed instead of using a direct User model.
 * @struct_end
 */

/**
 * @struct ElementsUserUpdatePasswordRequest
 * @desc > **Elements Schema**: [UserUpdatePasswordRequest](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/UserUpdatePasswordRequest)
 * 
 * This struct represents a password update for a user.
 * 
 * @member {String} _old_password The user's current password.
 * @member {String} _new_password The user's updated password.
 * @member {String} [_profile_id] The user's profile ID to assign the new session. Leave blank for no profile ID.
 * @struct_end
 */

/**
 * @struct ElementsErrorResponse
 * @desc > **Elements Schema**: [ErrorResponse](https://namazustudios.com/rest/api/?version=3.3.10/#/schemas/ErrorResponse)
 * 
 * This struct represents an error response.
 * 
 * @member {String} [_code] A machine readable code of the error.
 * @member {String} [_message] A description of the error. This error is not intended to be displayed to the end-user, rather it is designed to relay information to the application developer.
 * @struct_end
 */
