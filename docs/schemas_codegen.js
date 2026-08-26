// #####################################################################
// # Schema Documentation (auto-generated, DO NOT EDIT)
// #####################################################################

/**
 * @struct_partial ElementsAccessPermissions
 * @member {Struct.ElementsSubjects} read Subjects allowed to delete
 * @member {Struct.ElementsSubjects} write Subjects allowed to delete
 * @member {Struct.ElementsSubjects} delete Subjects allowed to delete
 * @struct_end
 */

/**
 * @struct_partial ElementsAdvancedInventoryItemQuantityAdjustment
 * @member {String} userId The User whose inventory to modify.ß
 * @member {Real} quantityDelta The delta to be applied to the inventory item quantity (positive or negative)
 * @member {Real} [priority] The priority slot for the item.
 * @struct_end
 */

/**
 * @struct_partial ElementsApplication
 * @member {String} name
 * @member {String} [id]
 * @member {String} [description]
 * @member {String} [gitBranch]
 * @member {String} [scriptRepoUrl]
 * @member {String} [httpDocumentationUrl]
 * @member {String} [httpDocumentationUiUrl]
 * @member {String} [httpTunnelEndpointUrl]
 * @member {Struct.ElementsApplicationAttributes} [attributes]
 * @member {Struct.ElementsApplicationConfiguration} [applicationConfiguration]
 * @member {Real} [maxProfiles] The maximum number of profiles a user may create for this application. If unspecified, defaults to 1.
 * @member {Bool} [autoCreateProfile] Whether a user's primary profile for this application should be created automatically when the user is created. If unspecified, defaults to true.
 * @member {Bool} [authoritativeProfilePicture] If true, a user cannot edit their own profile picture for this application via the REST API -- it must be set by backend/Element code instead. If false (the default), users may edit their own profile picture via the REST API.
 * @member {String} [displayNameRegex] A Java regular expression that a profile's display name must match for this application, or the profile create/update is rejected. If blank or unspecified, no additional check is performed.
 * @struct_end
 */

/**
 * @struct_partial ElementsApplicationAttributes
 * @struct_end
 */

/**
 * @struct_partial ElementsApplicationConfiguration
 * @member {String} name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} type The fully-qualified Java type of ApplicationConfiguration.
 * @member {Struct.ElementsApplication} parent
 * @member {String} [id] The database assigned ID for the application configuration.
 * @member {String} [description]
 * @struct_end
 */

/**
 * @struct_partial ElementsAuthScheme
 * @member {String} audience A unique name used to identify the scheme within the instance of Elements.
 * @member {String} publicKey A base-64 encoded string representing an x509 encoded public key.
 * @member {String} algorithm The digital signature matching the public key format.
 * @member {String} userLevel The highest permitted user level this particular scheme will authorize.
 * @member {Array[String]} tags The tags used to tag this auth scheme.
 * @member {Array[String]} allowedIssuers A list of issuers allowed to use this scheme.
 * @member {String} [id] The unique ID of the auth scheme.
 * @struct_end
 */

/**
 * @struct_partial ElementsBodyPart
 * @member {Struct.ElementsContentDisposition} [contentDisposition]
 * @member {Struct} [entity]
 * @member {Struct.ElementsBodyPartHeaders} [headers]
 * @member {Struct.ElementsMediaType} [mediaType]
 * @member {Struct.ElementsMessageBodyWorkers} [messageBodyWorkers]
 * @member {Struct.ElementsMultiPart} [parent]
 * @member {Struct.ElementsProviders} [providers]
 * @member {Struct.ElementsBodyPartParameterizedHeaders} [parameterizedHeaders]
 * @struct_end
 */

/**
 * @struct_partial ElementsBodyPartHeaders
 * @member {Bool} [empty]
 * @struct_end
 */

/**
 * @struct_partial ElementsBodyPartParameterizedHeaders
 * @member {Bool} [empty]
 * @struct_end
 */

/**
 * @struct_partial ElementsBuildIndexRequest
 * @member {Bool} [plan] Set to true to plan the index building.
 * @member {Array[String]} [toIndex] Set to true to perform the index building.
 * @struct_end
 */

/**
 * @struct_partial ElementsCallbackDefinition
 * @member {String} method Specifies the method to invoke.
 * @member {Struct.ElementsElementServiceReference} service Describes the matchmaker (dev.getelements.elements.sdk.dao.Matchmaker) to use for this configuration.
 * @struct_end
 */

/**
 * @struct_partial ElementsCodegenRequest
 * @member {String} [elementSpecUrl] The URL for the Element OpenApi spec. Usually /app/rest/elementName/openapi.json
 * @member {String} [language] The target language that you want to generate the code to.
 * @member {String} [packageName] The package name to set the generated code to. E.g. com.mycompany.mygame.Elements
 * @member {String} [options] Any additional options that you want to pass to the generator
 * @struct_end
 */

/**
 * @struct_partial ElementsCompletePasswordResetRequest
 * @member {String} token The opaque reset token from the password reset email.
 * @member {String} password The new password.
 * @struct_end
 */

/**
 * @struct_partial ElementsContentDisposition
 * @member {String} [type]
 * @member {Struct.ElementsContentDispositionParameters} [parameters]
 * @member {String} [fileName]
 * @member {String} [creationDate]
 * @member {String} [modificationDate]
 * @member {String} [readDate]
 * @member {Real} [size]
 * @struct_end
 */

/**
 * @struct_partial ElementsContentDispositionParameters
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateAdvancedInventoryItemRequest
 * @member {String} userId The User ID
 * @member {String} itemId The item to reference.
 * @member {Real} [quantity] The quantity of the Item in inventory
 * @member {Real} [priority] The priority slot for the item.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateAppleIapReceipt
 * @member {String} receiptData The base64-encoded string of the raw IAP receipt.
 * @member {String} [createAppleIapReceiptEnvironment]
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateApplicationRequest
 * @member {String} name
 * @member {String} [description]
 * @member {Struct.ElementsCreateApplicationRequestAttributes} [attributes]
 * @member {Real} [maxProfiles] The maximum number of profiles a user may create for this application. If unspecified, defaults to 1.
 * @member {Bool} [autoCreateProfile] Whether a user's primary profile for this application should be created automatically when the user is created. If unspecified, defaults to true.
 * @member {Bool} [authoritativeProfilePicture] If true, a user cannot edit their own profile picture for this application via the REST API -- it must be set by backend/Element code instead. If false (the default), users may edit their own profile picture via the REST API.
 * @member {String} [displayNameRegex] A Java regular expression that a profile's display name must match for this application, or the profile create/update is rejected. If blank or unspecified, no additional check is performed.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateApplicationRequestAttributes
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateAuthSchemeRequest
 * @member {String} audience The JWT audience for the scheme. Must be unique.
 * @member {String} algorithm
 * @member {String} userLevel The highest permitted user level this particular scheme will authorize.
 * @member {Array[String]} tags A list of tags used to index the auth scheme.
 * @member {Array[String]} allowedIssuers The list of issuers allowed to use this scheme.
 * @member {String} [publicKey] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateAuthSchemeResponse
 * @member {Struct.ElementsAuthScheme} scheme The full JSON response as described in AuthScheme
 * @member {String} publicKey The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @member {String} [privateKey] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/PKCS8EncodedKeySpec.html for details on the specifics of the format.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateDeploymentRequest
 * @member {String} version
 * @member {String} revision
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateDistinctInventoryItemRequest
 * @member {String} itemId The digital goods item id.
 * @member {String} [userId] The id of the User owning this inventory item id.
 * @member {String} [profileId] The the profileid of hte Profile owning this inventory item.
 * @member {Struct.ElementsCreateDistinctInventoryItemRequestMetadata} [metadata]
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateDistinctInventoryItemRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateElementDeploymentRequest
 * @member {String} [applicationNameOrId] The application name or ID. May be null. If null, then the Element will be scoped to the global or root element registry making it visible to all Applications. If specific to an Application, then this will be be visible only to Elements within that Application.
 * @member {Array[Struct.ElementsElementPathDefinition]} [elements] List of Element definitions specifying the classpaths and artifacts for each Element to deploy. Each definition can specify either Maven artifact coordinates (API, SPI, Element lists) or a single ELM artifact coordinate.
 * @member {Array[Struct.ElementsElementPackageDefinition]} [packages] List of Element package definitions specifying ELM artifacts to deploy with per-path attribute configuration. Each package can contain multiple elements with individualized attribute mappings.
 * @member {Bool} [useDefaultRepositories] Flag indicating whether to use the default artifact repositories in addition to any provided. The actual repositories included will be those defined by the system's default configuration at deployment time.
 * @member {Array[Struct.ElementsElementArtifactRepository]} [repositories] List of artifact repositories to use for resolving the specified artifacts and their dependencies. All artifacts and their dependencies must be found within these repositories.
 * @member {Struct.ElementsCreateElementDeploymentRequestPathAttributes} [pathAttributes] Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 * @member {Struct.ElementsCreateElementDeploymentRequestPathSpiBuiltins} [pathSpiBuiltins] Map of element paths to builtin SPI configurations. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @member {Struct.ElementsCreateElementDeploymentRequestPathSpiClassPaths} [pathSpiClassPaths] Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @member {String} [state] The state of the deployment.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateElementDeploymentRequestPathAttributes
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateElementDeploymentRequestPathAttributesAp
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateElementDeploymentRequestPathSpiBuiltins
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateElementDeploymentRequestPathSpiClassPaths
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateFollowerRequest
 * @member {String} followedId The profile id which to follow.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateGooglePlayIapReceipt
 * @member {String} packageName The package name of the app. Note that this may be different from the applicationId/uniqueIdentifier which is why it should be provided with the request.
 * @member {String} productId The product id purchased by the user, e.g. `com.namazustudios.example_app.pack_10_coins`.
 * @member {String} purchaseToken The token issued to the user upon successful Google Play purchase transaction.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateItemRequest
 * @member {String} name
 * @member {String} displayName
 * @member {String} description
 * @member {String} category
 * @member {Array[String]} [tags]
 * @member {String} [metadataSpecId]
 * @member {Struct.ElementsCreateItemRequestMetadata} [metadata]
 * @member {Bool} [publicVisible]
 * @member {String} [metadataSpec]
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateItemRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateLargeObjectFromUrlRequest
 * @member {String} mimeType The MIME type associated with the object.
 * @member {Struct.ElementsSubjectRequest} read Specifies the Subjects which can delete the LargeObject.
 * @member {Struct.ElementsSubjectRequest} write Specifies the Subjects which can delete the LargeObject.
 * @member {Struct.ElementsSubjectRequest} delete Specifies the Subjects which can delete the LargeObject.
 * @member {String} fileUrl List with image URLs
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateLargeObjectRequest
 * @member {String} mimeType The MIME type associated with the object.
 * @member {Struct.ElementsSubjectRequest} read Specifies the Subjects which can delete the LargeObject.
 * @member {Struct.ElementsSubjectRequest} write Specifies the Subjects which can delete the LargeObject.
 * @member {Struct.ElementsSubjectRequest} delete Specifies the Subjects which can delete the LargeObject.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateLeaderboardRequest
 * @member {String} name The name of the leaderboard.  This must be unique across all leaderboards.
 * @member {String} timeStrategyType The time strategy for the leaderboard. Current options are ALL_TIME and EPOCHAL.
 * @member {String} scoreStrategyType The score strategy for the leaderboard. Current options are OVERWRITE_IF_GREATER and ACCUMULATE.
 * @member {String} title The user-presentable name or title for for the leaderboard.
 * @member {String} scoreUnits The units-of measure for the score type of the leaderboard.
 * @member {Real} [firstEpochTimestamp] The time at which the leaderboard epoch intervals should begin (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then epochInterval must also be provided.
 * @member {Real} [epochInterval] The duration for a leaderboard epoch interval (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then firstEpochTimestamp must also be provided.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateMetadataRequest
 * @member {String} name A unique name for the metadata object.
 * @member {Struct.ElementsCreateMetadataRequestMetadata} [metadata] An object containing the metadata payload as key-value pairs.
 * @member {Struct.ElementsMetadataSpec} [metadataSpec] Represents a spec for metadata.
 * @member {String} [accessLevel] The minimum level of access required to view this metadata.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateMetadataRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateMetadataSpecRequest
 * @member {Array[Struct.ElementsMetadataSpecProperty]} properties The token template tabs to create.
 * @member {String} [name] The name of the metadata spec.
 * @member {String} [type] The type of the metadata spec.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateMissionRequest
 * @member {String} name The name of the mission
 * @member {String} displayName The display name for the mission
 * @member {String} description The description of the mission
 * @member {Array[String]} [tags] The tags used to categorize this mission
 * @member {Array[Struct.ElementsStep]} [steps] The steps that constitute the mission (may be null if finalRepeatStep is specified)
 * @member {Struct.ElementsStep} [finalRepeatStep] The final repeating step (may be null if step(s) are specified)
 * @member {Struct.ElementsCreateMissionRequestMetadata} [metadata] The metadata for this mission
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateMissionRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateMultipartLargeObjectBody
 * @member {Struct.ElementsFormDataBodyPart} [object]
 * @member {Struct.ElementsCreateLargeObjectRequest} [metadata]
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateOrUpdateOAuth2AuthSchemeRequest
 * @member {String} name A unique name used to identify the scheme within the instance of Elements. If using the same OAuth2 provider (e.g. Steam), it is recommended to suffix the name for each application when using multitenancy, e.g. steam_game1, steam_game2, etc.
 * @member {String} validationUrl The URL to send the user token validation request to.
 * @member {String} method HTTP method for the validation request (GET or POST).
 * @member {Array[Struct.ElementsOAuth2RequestKeyValue]} [headers] The headers required for the validation request.
 * @member {Array[Struct.ElementsOAuth2RequestKeyValue]} [params] The query parameters required for the validation request.
 * @member {Array[Struct.ElementsOAuth2RequestKeyValue]} [body] The body parameters for the validation request when using POST.
 * For FORM_URL_ENCODED, these become form fields (key=value&...).
 * @member {String} [responseIdMapping] Determines how to map the user id in the response. Will search the response for the corresponding key. For example, if the response is structured like:  {"response": { "params" : { "steamid" : <id> } } } then you only need to input "steamid". Ignored if one of the parameters is marked as user id.
 * @member {String} [responseValidMapping] Optional key in the response whose value indicates whether the token/user is valid.
 * For example: "is_valid", "active", or "success".
 * If not set, only the HTTP status code is used.
 * @member {String} [responseValidExpectedValue] Optional expected value for the validation field.
 * If null:
 *   - boolean true is treated as success
 *   - non-empty/non-null for non-boolean values is treated as success.
 * If set, the field's string value must equal this.
 * @member {Array[Real]} [validStatusCodes] HTTP status codes that are considered "processable" for validation.
 * Any other status is treated as failure before inspecting the body.
 * Defaults to [200].
 * @member {String} [bodyType] How to encode the request body when using POST.
 * FORM_URL_ENCODED corresponds to application/x-www-form-urlencoded.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateOrUpdateOAuth2AuthSchemeResponse
 * @member {Struct.ElementsOAuth2AuthScheme} [scheme] The full JSON response as described in AuthScheme
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateOrUpdateOidcAuthSchemeRequest
 * @member {String} name The name used when linking the scheme to the user.
 * @member {String} issuer A unique name used to identify the scheme within the instance of Elements. When validating from an external source (e.g. Google or Apple SSO), must match the 'iss' property of the decoded JWT.
 * @member {Array[Struct.ElementsJWK]} keys A set of JWKs containing the keys required to validate JWT signatures.
 * @member {String} [keysUrl] The URL for the JWK data. Will attempt to refresh keys if the kid cannot be found in the collection.
 * @member {String} [mediaType] The JWK format. Defaults to application/json
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateOrUpdateOidcAuthSchemeResponse
 * @member {Struct.ElementsOidcAuthScheme} [scheme] The full JSON response as described in AuthScheme
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateOrUpdateOidcProviderConfigurationRequest
 * @member {String} name A unique, lowercase, URL-safe identifier for the provider (e.g. 'twitch').
 * @member {String} discoveryUrl The provider's OIDC discovery document URL.
 * @member {String} clientId The OAuth2 client id registered with the provider.
 * @member {String} [clientSecret] The OAuth2 client secret registered with the provider. Required on create; on update, leave blank to keep the existing secret unchanged.
 * @member {Array[String]} [scopes] The OAuth2 scopes to request during authorization.
 * @member {String} [redirectUri] The full, literal redirect URI registered with the provider. If left blank, defaults to this server's built-in OIDC callback URI for the provider (i.e. '{this server}/oidc/{provider}/callback').
 * @member {Struct.ElementsCreateOrUpdateOidcProviderConfigurationRequestExtraAuthorizeParams} [extraAuthorizeParams] Additional provider-specific query parameters to include in the authorize request.
 * @member {String} [tokenEndpointAuthMethod] How the client authenticates to the token endpoint during authorization code exchange.
 * @member {String} [successRedirectUrl] Optional. If set, GET /oidc/{provider}/callback redirects the browser here on a successful login instead of rendering the default success page. Server-authoritative: not overridable per login attempt.
 * @member {String} [errorRedirectUrl] Optional. If set, GET /oidc/{provider}/callback redirects the browser here on a failed login instead of rendering the default error page. Server-authoritative: not overridable per login attempt.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateOrUpdateOidcProviderConfigurationRequestExtraAuthorizeParams
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateOrUpdateOidcProviderConfigurationResponse
 * @member {Struct.ElementsOidcProviderConfiguration} [configuration] The created or updated provider configuration, with the client secret cleared.
 * @member {String} [issuer] The issuer resolved from the provider's discovery document, confirming discovery succeeded.
 * @member {String} [authorizationEndpoint] The authorization endpoint resolved from the provider's discovery document.
 * @member {String} [tokenEndpoint] The token endpoint resolved from the provider's discovery document.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateProfileRequest
 * @member {String} userId The user id this profile belongs to.
 * @member {String} applicationId The application id this profile belongs to.
 * @member {String} [imageUrl] A URL to the image of the profile.  (ie the User's Avatar).
 * @member {String} [displayName] A non-unique display name for this profile.
 * @member {Struct.ElementsCreateProfileRequestMetadata} [metadata] A map of arbitrary metadata.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateProfileRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateProfileSignupRequest
 * @member {String} applicationId The application id this profile belongs to.
 * @member {String} [displayName] A non-unique display name for this profile. If left null, the server will assign.
 * @member {String} [imageUrl] A URL to the image of the profile.  (ie the User's Avatar). If left null, the server will no assign any URL.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateProgressRequest
 * @member {Struct.ElementsProfile} [profile]
 * @member {Struct.ElementsProgressMissionInfo} [mission] The mission
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateReceiptRequest
 * @member {String} [originalTransactionId] The id of the original transaction as provided by the payment processor.
 * @member {String} [schema] The id of the receipt provider in reverse-dns notation, e.g. com.company.platform
 * @member {String} [userId] The database id, name, or email of the User associated with this receipt.
 * @member {Real} [purchaseTime] The time that the purchase was made (ms since Unix epoch).
 * @member {String} [body] The string representation of the raw receipt data.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateSaveDataDocumentRequest
 * @member {Real} slot The slot of the property. Must be unique for user or profile.
 * @member {String} contents The contents of the save data.
 * @member {String} [userId] The id of the user which owns the save data. If specified, the user will own this save data and the profileId must be null or be owned by the user specified.
 * @member {String} [profileId] The id of the profile which owns the save data. If specified, the profile will own this save data and the userId must be null or be owned by the user specified.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateScheduleEventRequest
 * @member {Array[String]} missionNamesOrIds
 * @member {Real} [begin]
 * @member {Real} [end]
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateScheduleRequest
 * @member {String} name
 * @member {String} displayName
 * @member {String} description
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateSimpleInventoryItemRequest
 * @member {String} userId The User ID
 * @member {String} itemId The item to reference.
 * @member {Real} [quantity] The quantity of the Item in inventory
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateSmartContractRequest
 * @member {String} name The unique symbolic name of the smart contract.
 * @member {String} displayName The name given to this contract for display purposes.
 * @member {Struct.ElementsCreateSmartContractRequestAddresses} addresses The address of the contract from the blockchain. Depending on the network or protocol this may have several meanings and vary depending on the specific API or network.
 * @member {String} vaultId The Elements database id of the wallet containing the default account to be used for contract related requests.
 * @member {Struct.ElementsCreateSmartContractRequestMetadata} [metadata] Any metadata for this contract.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateSmartContractRequestAddresses
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateSmartContractRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateSteamIapReceipt
 * @member {String} orderId The Steam order ID returned by the Steam client upon a successful purchase transaction. This is used to query and verify the transaction via the Steam ISteamMicroTxn API.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateVaultRequest
 * @member {String} userId The elements-defined user ID to own the vault.
 * @member {String} displayName A user-defined name for the vault. This is used simply for the user's reference and has no bearing  onthe vault's functionality.
 * @member {String} [passphrase] The passphrase used to to encrypt the vault. If empty, then the vault will not be encrypted. Some configurations may opt to disallow encryption entirely.
 * @member {String} [algorithm] The encryption algorithm used to secure the vault. Once crated, a vault will contains a private/public key pair which will be used to encrypt the wallets within the vault.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateWalletRequest
 * @member {String} displayName A user-defined name for the wallet. This is used simply for the user's reference and has no bearing  onthe wallet's functionality.
 * @member {String} api The protocol of this wallet. Once set, this cannot be unset.
 * @member {Array[String]} networks The networks associated with this wallet. All must support the Wallet's protocol.
 * @member {Array[Struct.ElementsCreateWalletRequestAccount]} accounts
 * @member {Real} [preferredAccount] The default identity. Must not be larger than the count of identities.
 * @struct_end
 */

/**
 * @struct_partial ElementsCreateWalletRequestAccount
 * @member {Bool} [generate] Flag which indicates if the account should be generated or imported.
 * @member {String} [address] The Wallet Address - id public identity. Must be null for generated wallets.
 * @member {String} [privateKey] The Wallet Account - id private identity. May be null if the wallet is for receive only.
 * @struct_end
 */

/**
 * @struct_partial ElementsDatabaseHealthStatus
 * @member {String} [name]
 * @member {String} [metadata]
 * @struct_end
 */

/**
 * @struct_partial ElementsDeployment
 * @member {String} id The unique ID of the deployment itself.
 * @member {String} version The deployment version. Allows for overriding versions with new content.
 * @member {String} revision The revision that this deployment points to.
 * @member {Struct.ElementsApplication} application
 * @struct_end
 */

/**
 * @struct_partial ElementsDiscoveryHealthStatus
 * @member {Array[String]} [records]
 * @member {Array[String]} [knownHosts]
 * @struct_end
 */

/**
 * @struct_partial ElementsDistinctInventoryItem
 * @member {String} [id] The unique ID of the inventory item itself.
 * @member {Struct.ElementsItem} [item] The Item to be issued upon redemption.
 * @member {Struct.ElementsUser} [user] The User associated with this Profile.
 * @member {Struct.ElementsProfile} [profile]
 * @member {Struct.ElementsDistinctInventoryItemMetadata} [metadata]
 * @struct_end
 */

/**
 * @struct_partial ElementsDistinctInventoryItemMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsEditorLayout
 * @member {String} [key]
 * @member {String} [title]
 * @member {String} [placeholder]
 * @struct_end
 */

/**
 * @struct_partial ElementsEditorSchema
 * @member {Struct} [data] The data itself.
 * @member {Struct.ElementsJsonSchema} [schema] A Subset of the JSON-Schema - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {Array[Struct.ElementsEditorLayout]} [layout] The editor layout.
 * @struct_end
 */

/**
 * @struct_partial ElementsElementArtifactRepository
 * @member {String} [id] The identifier of the repository. This is typically a unique name used to reference the repository when providing credentials.
 * @member {String} [url] This is the URL for the repository.
 * @struct_end
 */

/**
 * @struct_partial ElementsElementContainerStatus
 * @member {Struct.ElementsElementRuntimeStatus} [runtime] Reports the status of an element runtime, which is a deployed in-memory Element. An in-memory Element may or may not expose endpoints but can still be loaded in memory.
 * @member {String} [status] A string indicating the status of the container.
 * @member {Array[String]} [uris] The URIs served by this container.
 * @member {Array[String]} [logs] A list of logs related to the deployment of the container.
 * @member {Array[String]} [warnings] A list of warnings produced during container mounting.
 * @member {Array[Struct.ElementsElementMetadata]} [elements] A list of Elements included in the container.
 * @struct_end
 */

/**
 * @struct_partial ElementsElementDefaultAttributeRecord
 * @member {String} [name]
 * @member {String} [value]
 * @member {String} [description]
 * @member {Bool} [sensitive]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementDefinitionMetadata
 * @member {String} [name]
 * @member {Bool} [recursive]
 * @member {Array[Struct.ElementsElementPackageRecord]} [additionalPackages]
 * @member {String} [loader]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementDependencyMetadata
 * @member {String} [value]
 * @member {String} [selector]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementDeployment
 * @member {String} [id] The database unique identifier of the Element deployment.
 * @member {Struct.ElementsApplication} [application]
 * @member {Struct.ElementsLargeObjectReference} [elm] Image object stored in EL large objects storage.
 * @member {Struct.ElementsElementDeploymentPathSpiBuiltins} [pathSpiBuiltins] Map of element paths to builtin SPI configurations. This allow for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @member {Struct.ElementsElementDeploymentPathSpiClassPaths} [pathSpiClassPaths] Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @member {Struct.ElementsElementDeploymentPathAttributes} [pathAttributes] Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 * @member {Array[Struct.ElementsElementPathDefinition]} [elements] List of Element definitions specifying the classpaths and artifacts for each Element to deploy. Each definition can specify either Maven artifact coordinates (API, SPI, Element lists) or a single ELM artifact coordinate.
 * @member {Array[Struct.ElementsElementPackageDefinition]} [packages] List of Element package definitions specifying ELM artifacts to deploy with per-path attribute configuration. Each package can contain multiple elements with individualized attribute mappings.
 * @member {Bool} [useDefaultRepositories] Flag indicating whether to use the default artifact repositories in addition to any provided. The actual repositories included will be those defined by the system's default configuration at deployment time.
 * @member {Array[Struct.ElementsElementArtifactRepository]} [repositories] List of artifact repositories to use for resolving the specified artifacts and their dependencies. All artifacts and their dependencies must be found within these repositories.
 * @member {String} [state] The state of the deployment.
 * @member {Real} [version] Monotonically increasing version number, updated on each modification. Used to detect changes without comparing all fields.
 * @struct_end
 */

/**
 * @struct_partial ElementsElementDeploymentPathAttributes
 * @struct_end
 */

/**
 * @struct_partial ElementsElementDeploymentPathAttributesAp
 * @struct_end
 */

/**
 * @struct_partial ElementsElementDeploymentPathSpiBuiltins
 * @struct_end
 */

/**
 * @struct_partial ElementsElementDeploymentPathSpiClassPaths
 * @struct_end
 */

/**
 * @struct_partial ElementsElementEventConsumerMetadata
 * @member {String} [serviceType]
 * @member {String} [serviceName]
 * @member {String} [eventName]
 * @member {String} [methodName]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementEventProducerMetadata
 * @member {String} [name]
 * @member {String} [description]
 * @member {Array[String]} [parameters]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementFeature
 * @member {String} [name] The name of the feature. Used as an internal reference.
 * @member {String} [description] A brief description of what it permits to the Elements.
 * @struct_end
 */

/**
 * @struct_partial ElementsElementManifestMetadata
 * @member {Struct.ElementsSystemVersion} [version] The version of the Element
 * @member {Array[String]} [builtinSpis] The builtin SPIs requested by this element.
 * @struct_end
 */

/**
 * @struct_partial ElementsElementManifestRecord
 * @member {Struct.ElementsSystemVersion} [version] The version of the Element
 * @member {Array[String]} [builtinSpis]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementMetadata
 * @member {String} [type]
 * @member {Struct.ElementsElementDefinitionMetadata} [definition]
 * @member {Array[Struct.ElementsElementServiceMetadata]} [services]
 * @member {Array[Struct.ElementsElementEventProducerMetadata]} [producedEvents]
 * @member {Array[Struct.ElementsElementEventConsumerMetadata]} [consumedEvents]
 * @member {Array[Struct.ElementsElementDependencyMetadata]} [dependencies]
 * @member {Struct.ElementsElementMetadataAttributes} [attributes]
 * @member {Array[Struct.ElementsElementDefaultAttributeRecord]} [defaultAttributes]
 * @member {Array[Struct.ElementsElementRequiredAttributeRecord]} [requiredAttributes]
 * @member {String} [elementPath]
 * @member {String} [sourceElmArtifact]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementMetadataAttributes
 * @struct_end
 */

/**
 * @struct_partial ElementsElementPackageDefinition
 * @member {String} elmArtifact The ELM artifact coordinate to resolve and deploy. This ELM file will be downloaded, extracted, and its contents organized into the deployment directory structure.
 * @member {Struct.ElementsElementPackageDefinitionPathSpiBuiltins} [pathSpiBuiltins] Map of element paths to builtin SPI configurations. This allow for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @member {Struct.ElementsElementPackageDefinitionPathSpiClassPaths} [pathSpiClassPaths] Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the specified ELM artifact.
 * @member {Struct.ElementsElementPackageDefinitionPathAttributes} [pathAttributes] Map of element paths to their custom attributes. The key is the inside the ELM for each Element inside the ELM file. and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 * @struct_end
 */

/**
 * @struct_partial ElementsElementPackageDefinitionPathAttributes
 * @struct_end
 */

/**
 * @struct_partial ElementsElementPackageDefinitionPathAttributesAp
 * @struct_end
 */

/**
 * @struct_partial ElementsElementPackageDefinitionPathSpiBuiltins
 * @struct_end
 */

/**
 * @struct_partial ElementsElementPackageDefinitionPathSpiClassPaths
 * @struct_end
 */

/**
 * @struct_partial ElementsElementPackageRecord
 * @member {String} [name]
 * @member {Bool} [recursive]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementPathDefinition
 * @member {String} [path] The single directory name where this element will be deployed within the deployment directory structure. Must not contain '/' as it represents a single path segment. This is optional and can be assigned at deployment time.
 * @member {Array[String]} [apiArtifacts] List of API artifact coordinates. These artifacts will be loaded into a shared API classloader accessible to all Elements. Ignored if elmArtifact is specified.
 * @member {Array[String]} [spiBuiltins] List of SPI (Service Provider Implementation) builtins. These provide the implementation of Element framework services.
 * @member {Array[String]} [spiArtifacts] List of SPI (Service Provider Implementation) artifact coordinates. These provide the implementation of Element framework services.
 * @member {Array[String]} [elementArtifacts] List of Element implementation artifact coordinates. These contain the actual Element code.
 * @member {Struct.ElementsElementPathDefinitionAttributes} [attributes] Custom attributes specific to this element path. These key-value pairs will be passed to the Element at load time via the AttributesLoader mechanism, allowing per-element configuration beyond the deployment-wide attributes.
 * @struct_end
 */

/**
 * @struct_partial ElementsElementPathDefinitionAttributes
 * @struct_end
 */

/**
 * @struct_partial ElementsElementPathRecordMetadata
 * @member {String} [path] The path inside the ELM file.
 * @member {Array[String]} [api] The API path inside the ELM file.
 * @member {Array[String]} [spi] The SPI path inside the ELM file.
 * @member {Array[String]} [lib] The library path inside the ELM file.
 * @member {Array[String]} [classpath] The classpath path inside the ELM file.
 * @member {Struct.ElementsElementPathRecordMetadataAttributes} [attributes] The the attributes specified in the ELM file.
 * @member {Struct.ElementsElementManifestMetadata} [manifest] The Element manifest.
 * @struct_end
 */

/**
 * @struct_partial ElementsElementPathRecordMetadataAttributes
 * @struct_end
 */

/**
 * @struct_partial ElementsElementRequiredAttributeRecord
 * @member {String} [name]
 * @member {String} [description]
 * @member {Bool} [sensitive]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementRuntimeStatus
 * @member {Struct.ElementsElementDeployment} [deployment] Represents the deployment configuration for an Element within the system. This includes details about the application context, artifacts to be included, and repositories for artifact resolution.
 * @member {String} [status] The status of the runtime.
 * @member {Array[String]} [elementPaths] A readout of element paths loaded with this.
 * @member {Array[String]} [deploymentFiles] A readout of temporary files that are associated with the deployment.
 * @member {Array[String]} [logs] A list of logs related to the deployment of the runtime.
 * @member {Array[String]} [warnings] A list of warnings related to the deployment of the runtime.
 * @member {Array[String]} [errors] A list of errors related to the deployment of the runtime.
 * @member {Array[Struct.ElementsElementMetadata]} [elements] A list of Elements included in the runtime.
 * @member {Array[Struct.ElementsElementMetadata]} [failedElements] A list of Elements that failed to load, preserving their declared required and default attributes so that missing configuration can be identified even when an element cannot initialise.
 * @member {Struct.ElementsElementRuntimeStatusElementManifests} [elementManifests] A mapping of paths to manifests of loaded elements.
 * @struct_end
 */

/**
 * @struct_partial ElementsElementRuntimeStatusElementManifests
 * @struct_end
 */

/**
 * @struct_partial ElementsElementServiceExportMetadata
 * @member {Array[String]} [exposed]
 * @member {String} [name]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementServiceImplementationMetadata
 * @member {String} [type]
 * @member {Bool} [expose]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementServiceMetadata
 * @member {Struct.ElementsElementServiceImplementationMetadata} [implementation]
 * @member {Struct.ElementsElementServiceExportMetadata} [export]
 * @struct_end
 */

/**
 * @struct_partial ElementsElementServiceReference
 * @member {String} elementName The name of the Element to reference.
 * @member {String} [serviceType] Specifies the type of the service within the Element. May be null.
 * @member {String} [serviceName] Specifies the name of the service within the Element. May be null.
 * @struct_end
 */

/**
 * @struct_partial ElementsElementSpi
 * @member {String} id The well known ID.
 * @member {String} version The version which is compatible with the specified artifacts.
 * @member {String} description Briefly describes this spi and its intended use case.
 * @member {Array[String]} coordinates The Maven coordinates of the artifacts to load.
 * @struct_end
 */

/**
 * @struct_partial ElementsEmailVerificationRequest
 * @member {String} email The email address to verify.
 * @struct_end
 */

/**
 * @struct_partial ElementsErrorResponse
 * @member {String} [code] A machine readable code of the error.
 * @member {String} [message] A description of the error. This error is not intended to be displayed to the end-user, rather it is it designed to relay information to the application developer.
 * @struct_end
 */

/**
 * @struct_partial ElementsFacebookApplicationConfiguration
 * @member {String} name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} type The fully-qualified Java type of ApplicationConfiguration.
 * @member {Struct.ElementsApplication} parent
 * @member {String} applicationId The AppID as it appears in the Facebook Developer Console
 * @member {String} applicationSecret The App Secret as it appears in the Facebook Developer Console
 * @member {String} [id] The database assigned ID for the application configuration.
 * @member {String} [description]
 * @member {Array[String]} [builtinApplicationPermissions] The set of built-in permissions connected clients will need to request.
 * @member {Array[Struct.ElementsProductBundle]} [productBundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 * @struct_end
 */

/**
 * @struct_partial ElementsFacebookIapReceipt
 * @member {String} [userId] The id of the Facebook User that purchased the IAP.
 * @member {String} [purchaseId] The original transaction identifier of the IAP. We use this as the key for the db object as well as the {@link RewardIssuance} context. (For now, we do not persist the transaction_id, only the original_transaction_id.)
 * @member {String} [reportingId] A secondary identifier for troubleshooting/auditing (and potential future correlation)
 * @member {String} [sku] The SKU of the IAP as it is listed in your IAP definitions.
 * @member {Real} [grantTime] Time when the user gained entitlement to the item (Unix timestamp).
 * @member {Real} [expirationTime] Time when the user will lose entitlement to the item (Unix timestamp). If the user has an indefinite entitlement it will be 0.
 * @member {String} [developerPayload] The original purchase date.
 * @struct_end
 */

/**
 * @struct_partial ElementsFCMRegistration
 * @member {String} registrationToken The actual Firebase registration.
 * @member {String} [id] The the unique id of the token stored in the database.
 * @member {Struct.ElementsProfile} [profile]
 * @struct_end
 */

/**
 * @struct_partial ElementsFirebaseApplicationConfiguration
 * @member {String} name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} type The fully-qualified Java type of ApplicationConfiguration.
 * @member {Struct.ElementsApplication} parent
 * @member {String} projectId The contents of the serviceAccountCredentials.json file.
 * @member {String} serviceAccountCredentials The contents of the serviceAccountCredentials.json file.
 * @member {String} [id] The database assigned ID for the application configuration.
 * @member {String} [description]
 * @struct_end
 */

/**
 * @struct_partial ElementsFormDataBodyPart
 * @member {Struct.ElementsContentDisposition} [contentDisposition]
 * @member {Struct} [entity]
 * @member {Struct.ElementsFormDataBodyPartHeaders} [headers]
 * @member {Struct.ElementsMediaType} [mediaType]
 * @member {Struct.ElementsMessageBodyWorkers} [messageBodyWorkers]
 * @member {Struct.ElementsMultiPart} [parent]
 * @member {Struct.ElementsProviders} [providers]
 * @member {String} [name]
 * @member {String} [value]
 * @member {Struct} [content]
 * @member {String} [fileName]
 * @member {Struct.ElementsFormDataContentDisposition} [formDataContentDisposition]
 * @member {Bool} [simple]
 * @member {Struct.ElementsFormDataBodyPartParameterizedHeaders} [parameterizedHeaders]
 * @struct_end
 */

/**
 * @struct_partial ElementsFormDataBodyPartHeaders
 * @member {Bool} [empty]
 * @struct_end
 */

/**
 * @struct_partial ElementsFormDataBodyPartParameterizedHeaders
 * @member {Bool} [empty]
 * @struct_end
 */

/**
 * @struct_partial ElementsFormDataContentDisposition
 * @member {String} [type]
 * @member {Struct.ElementsFormDataContentDispositionParameters} [parameters]
 * @member {String} [fileName]
 * @member {String} [creationDate]
 * @member {String} [modificationDate]
 * @member {String} [readDate]
 * @member {Real} [size]
 * @member {String} [name]
 * @struct_end
 */

/**
 * @struct_partial ElementsFormDataContentDispositionParameters
 * @struct_end
 */

/**
 * @struct_partial ElementsFriend
 * @member {String} [id] The unique ID of the friendship.
 * @member {Struct.ElementsUser} [user] The User associated with this Profile.
 * @member {String} [friendship] The friendship type.
 * @member {Array[Struct.ElementsProfile]} [profiles] The profiles which are associated with the friend user.
 * @struct_end
 */

/**
 * @struct_partial ElementsGooglePlayApplicationConfiguration
 * @member {String} name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} type The fully-qualified Java type of ApplicationConfiguration.
 * @member {Struct.ElementsApplication} parent
 * @member {String} [id] The database assigned ID for the application configuration.
 * @member {String} [description]
 * @member {String} [applicationId]
 * @member {Struct.ElementsGooglePlayApplicationConfigurationJsonKey} [jsonKey]
 * @member {Array[Struct.ElementsProductBundle]} [productBundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 * @struct_end
 */

/**
 * @struct_partial ElementsGooglePlayApplicationConfigurationJsonKey
 * @struct_end
 */

/**
 * @struct_partial ElementsHealthStatus
 * @member {Real} [checksFailed]
 * @member {Real} [checksPerformed]
 * @member {Real} [overallHealth]
 * @member {Array[String]} [problems]
 * @member {Struct.ElementsInstanceHealthStatus} [instanceStatus]
 * @member {Array[Struct.ElementsDatabaseHealthStatus]} [databaseStatus]
 * @member {Struct.ElementsDiscoveryHealthStatus} [discoveryHealthStatus]
 * @member {Struct.ElementsRoutingHealthStatus} [routingHealthStatus]
 * @member {Struct.ElementsInvokerHealthStatus} [invokerHealthStatus]
 * @struct_end
 */

/**
 * @struct_partial ElementsIndexMetadataObject
 * @member {Struct} [identifier]
 * @struct_end
 */

/**
 * @struct_partial ElementsIndexPlanObject
 * @member {String} [id]
 * @member {String} [state]
 * @member {Struct.ElementsIndexPlanStepObject} [steps]
 * @struct_end
 */

/**
 * @struct_partial ElementsIndexPlanStepObject
 * @member {String} [description]
 * @member {String} [operation]
 * @member {Struct.ElementsIndexMetadataObject} [indexMetadata]
 * @struct_end
 */

/**
 * @struct_partial ElementsInspectUploadedElmBody
 * @member {Struct} [elm] The ELM file to inspect.
 * @struct_end
 */

/**
 * @struct_partial ElementsInstanceHealthStatus
 * @member {String} [instanceId]
 * @member {Array[String]} [nodeIds]
 * @struct_end
 */

/**
 * @struct_partial ElementsInventoryItem
 * @member {Struct.ElementsUser} user The User associated with this Profile.
 * @member {Struct.ElementsItem} item The Item to be issued upon redemption.
 * @member {Real} quantity The quantity of the Item in inventory
 * @member {Real} priority The priority of this Item grouping in inventory (for stacked/packaged inventory support)
 * @member {String} [id] The unique ID of the inventory item itself.
 * @struct_end
 */

/**
 * @struct_partial ElementsInviteViaPhonesRequest
 * @member {Array[String]} [phoneNumbers] The list of phone numbers
 * @struct_end
 */

/**
 * @struct_partial ElementsInviteViaPhonesResponse
 * @member {Array[Struct.ElementsPhoneMatchedInvitation]} [matched] The list of objects representing matched phone numbers
 * @struct_end
 */

/**
 * @struct_partial ElementsInvokerHealthStatus
 * @member {Array[String]} [priorities]
 * @member {Array[String]} [connectedPeers]
 * @struct_end
 */

/**
 * @struct_partial ElementsIosApplicationConfiguration
 * @member {String} name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} type The fully-qualified Java type of ApplicationConfiguration.
 * @member {Struct.ElementsApplication} parent
 * @member {String} applicationId
 * @member {String} [id] The database assigned ID for the application configuration.
 * @member {String} [description]
 * @member {Array[Struct.ElementsProductBundle]} [productBundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 * @struct_end
 */

/**
 * @struct_partial ElementsItem
 * @member {String} name
 * @member {String} displayName
 * @member {String} description
 * @member {String} category
 * @member {String} [id]
 * @member {Array[String]} [tags]
 * @member {Struct.ElementsMetadataSpec} [metadataSpec] Represents a spec for metadata.
 * @member {Struct.ElementsItemMetadata} [metadata]
 * @member {Bool} [publicVisible]
 * @struct_end
 */

/**
 * @struct_partial ElementsItemLedgerEntry
 * @member {String} [id] The unique ID of this ledger entry.
 * @member {String} [inventoryItemId] ID of the inventory item affected; null for item-catalog events.
 * @member {String} [itemCategory] The inventory category (FUNGIBLE or DISTINCT); null for item-catalog events.
 * @member {String} [itemId] ID of the item definition.
 * @member {String} [userId] ID of the user who owns the inventory item; null for item-catalog events.
 * @member {String} [actorId] ID of the user who performed the action; null when triggered by a system or plugin without a user context.
 * @member {String} [eventType] The type of lifecycle event recorded in an item ledger entry.
 * @member {Real} [timestamp] Epoch milliseconds when the event occurred.
 * @member {Real} [quantityBefore] Quantity before the change; populated for QUANTITY_ADJUSTED events only.
 * @member {Real} [quantityAfter] Quantity after the change; populated for CREATED, QUANTITY_ADJUSTED, and QUANTITY_SET events.
 * @member {Struct.ElementsItemLedgerEntryMetadataBefore} [metadataBefore] Metadata snapshot before the change; populated for METADATA_UPDATED events only.
 * @member {Struct.ElementsItemLedgerEntryMetadataAfter} [metadataAfter] Metadata snapshot after the change; populated for METADATA_UPDATED events only.
 * @struct_end
 */

/**
 * @struct_partial ElementsItemLedgerEntryMetadataAfter
 * @struct_end
 */

/**
 * @struct_partial ElementsItemLedgerEntryMetadataBefore
 * @struct_end
 */

/**
 * @struct_partial ElementsItemMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsJsonSchema
 * @member {String} [get$id] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [get$schema] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [title] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [description] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [type] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {Struct.ElementsJsonSchemaProperties} [properties] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {Array[String]} [required] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @struct_end
 */

/**
 * @struct_partial ElementsJsonSchemaProperties
 * @struct_end
 */

/**
 * @struct_partial ElementsJsonSchemaProperty
 * @member {String} [type] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [title] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {String} [description] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @member {Array[String]} [required] See - https://json-schema.org/draft/2020-12/json-schema-core
 * @struct_end
 */

/**
 * @struct_partial ElementsJWK
 * @member {String} [alg] Algorithm (e.g. RS256)
 * @member {String} [kid] Key id (unique to issuer)
 * @member {String} [kty] Key type (e.g. RSA)
 * @member {String} [use] The intended use (e.g. sig)
 * @member {String} [e] Base64url encoded exponent (RSA keys only)
 * @member {String} [n] Pub key modulus (RSA keys only)
 * @member {String} [crv] Curve name, e.g. P-256, P-384, P-521 (EC keys only)
 * @member {String} [x] Base64url encoded x coordinate (EC keys only)
 * @member {String} [y] Base64url encoded y coordinate (EC keys only)
 * @struct_end
 */

/**
 * @struct_partial ElementsLargeObject
 * @member {String} path The path to the file in the underlying bucket.
 * @member {Struct.ElementsAccessPermissions} accessPermissions Permission associated with LargeObject.
 * @member {String} [id] The unique ID of the LargeObject.
 * @member {String} [url] The URL where the binary contents of the LargeObject may be read. May be null, since Path param or Id is pointer for object.
 * @member {String} [mimeType] The MIME type of the LargeObject.
 * @member {String} [state] Represents the state of the large object.
 * @member {String} [lastModified] Date of last modification.
 * @member {String} [originalFilename] The original name of the file.
 * @struct_end
 */

/**
 * @struct_partial ElementsLargeObjectReference
 * @member {String} [id] The unique ID of the LargeObject.
 * @member {String} [url] The URL where the binary contents of the LargeObject may be read.
 * @member {String} [mimeType] The MIME type of the LargeObject.
 * @member {String} [state] Represents the state of the large object.
 * @member {String} [lastModified] Date of last modification
 * @struct_end
 */

/**
 * @struct_partial ElementsLeaderboard
 * @member {String} name The name of the leaderboard.  This must be unique across all leaderboards.
 * @member {String} timeStrategyType The time strategy for the leaderboard. Current options are ALL_TIME and EPOCHAL.
 * @member {String} scoreStrategyType The score strategy for the leaderboard. Current options are OVERWRITE_IF_GREATER and ACCUMULATE.
 * @member {String} title The user-presentable name or title for for the leaderboard.
 * @member {String} scoreUnits The units-of measure for the score type of the leaderboard.
 * @member {String} [id]
 * @member {Real} [firstEpochTimestamp] The time at which the leaderboard epoch intervals should begin (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then epochInterval must also be provided.
 * @member {Real} [epochInterval] The duration for a leaderboard epoch interval (in ms). If null, then the leaderboard is all-time and not epochal. During creation, if this value is provided, then firstEpochTimestamp must also be provided.
 * @struct_end
 */

/**
 * @struct_partial ElementsLinkEmailPasswordRequest
 * @member {String} email
 * @member {String} password
 * @struct_end
 */

/**
 * @struct_partial ElementsLinkUsernamePasswordRequest
 * @member {String} username
 * @member {String} password
 * @struct_end
 */

/**
 * @struct_partial ElementsMatchmakingApplicationConfiguration
 * @member {String} name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} type The fully-qualified Java type of ApplicationConfiguration.
 * @member {Struct.ElementsApplication} parent
 * @member {String} [id] The database assigned ID for the application configuration.
 * @member {String} [description]
 * @member {Struct.ElementsCallbackDefinition} [success] Defines a script method and a module to invoke.
 * @member {Struct.ElementsElementServiceReference} [matchmaker] Describes the matchmaker (dev.getelements.elements.sdk.dao.Matchmaker) to use for this configuration.
 * @member {Real} [maxProfiles] The maximum number of profiles that can be matched in a single match.
 * @member {Real} [lingerSeconds] The amount of time a match will linger after it is marked as expired.
 * @member {Real} [timeoutSeconds] The absolute timeout of the match. A match will be automatically deleted after this amount of time.
 * @member {Struct.ElementsMatchmakingApplicationConfigurationMetadata} [metadata] The metadata for this matchmaking configuration. This will be copied to the match when it is created.
 * @member {Struct.ElementsMetadataSpec} [metadataSpec] Represents a spec for metadata.
 * @struct_end
 */

/**
 * @struct_partial ElementsMatchmakingApplicationConfigurationMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsMediaType
 * @member {String} [type]
 * @member {String} [subtype]
 * @member {Struct.ElementsMediaTypeParameters} [parameters]
 * @member {Bool} [wildcardType]
 * @member {Bool} [wildcardSubtype]
 * @struct_end
 */

/**
 * @struct_partial ElementsMediaTypeParameters
 * @struct_end
 */

/**
 * @struct_partial ElementsMessageBodyWorkers
 * @struct_end
 */

/**
 * @struct_partial ElementsMetadata
 * @member {String} [id] The metadata object's database assigned unique ID.
 * @member {String} [name] A unique name for the metadata object.
 * @member {Struct.ElementsMetadataMetadata} [metadata] An object containing the metadata payload as key-value pairs.
 * @member {Struct.ElementsMetadataSpec} [metadataSpec] Represents a spec for metadata.
 * @member {String} [accessLevel] The minimum level of access required to view this metadata.
 * @struct_end
 */

/**
 * @struct_partial ElementsMetadataMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsMetadataSpec
 * @member {String} name The Name of the schema.
 * @member {String} type The type of the tab itself.
 * @member {Array[Struct.ElementsMetadataSpecProperty]} properties The tabs of the metadata spec.
 * @member {String} [id] The unique ID of the schema itself.
 * @struct_end
 */

/**
 * @struct_partial ElementsMetadataSpecProperty
 * @member {String} name The unique name of the field
 * @member {String} displayName The display name of the field
 * @member {String} type The field type
 * @member {Bool} [required] True if the field is required.
 * @member {String} [placeholder] The placeholder description when displaying in the editor.
 * @member {Struct} [defaultValue] The default description, null if left unspecified.
 * @member {Array[Struct.ElementsMetadataSpecProperty]} [properties]
 * @struct_end
 */

/**
 * @struct_partial ElementsMission
 * @member {String} name The name of the mission
 * @member {String} displayName The display name for the mission
 * @member {String} description The description of the mission
 * @member {String} [id] The unique ID of the mission
 * @member {Array[String]} [tags] The tags used to categorize this mission
 * @member {Array[Struct.ElementsStep]} [steps] The steps that constitute the mission (may be null if finalRepeatStep is specified)
 * @member {Struct.ElementsStep} [finalRepeatStep] The final repeating step (may be null if step(s) are specified)
 * @member {Struct.ElementsMissionMetadata} [metadata] The metadata for this mission
 * @struct_end
 */

/**
 * @struct_partial ElementsMissionMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsMockSessionCreation
 * @member {String} [sessionSecret] The Session Secret to pass to subsequent requests through headers.
 * @member {Struct.ElementsSession} [session] The Session object generated by the request.
 * @member {Real} [userExpiresAt] The assocaited mock user will automatically be deleted at supplied time.
 * @member {String} [password] The randomly-assigned password for the mock user.
 * @struct_end
 */

/**
 * @struct_partial ElementsMockSessionRequest
 * @member {Real} [lifetimeInSeconds] The lifetime of the user in seconds.  After this amount of time,
 * @member {Struct.ElementsApplication} [application]
 * @struct_end
 */

/**
 * @struct_partial ElementsMultiMatch
 * @member {Struct.ElementsMatchmakingApplicationConfiguration} configuration This configures the matchmaking system for the application. This defines the queue name and the Matchmacker to use when finding players to match. Currently FIFO is builtin and is the default.
 * @member {String} [id] The unique ID of the match.
 * @member {Struct.ElementsUniqueCode} [joinCode] Represents a unique code with an identifier, the code itself, and an expiration timestamp.
 * @member {String} [status] The status of the match.
 * @member {Struct.ElementsMultiMatchMetadata} [metadata] The metadata of hte multi-match, which can be used to store additional information about the match.
 * @member {Real} [count] The number of players currently in the match.
 * @member {Real} [expiry] The expiry time of the match in seconds. If not set, the match will not expire.
 * @member {Real} [created] The timestamp at which the match was created, in milliseconds since epoch.
 * @struct_end
 */

/**
 * @struct_partial ElementsMultiMatchMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsMultiPart
 * @member {Struct.ElementsContentDisposition} [contentDisposition]
 * @member {Struct} [entity]
 * @member {Struct.ElementsMultiPartHeaders} [headers]
 * @member {Struct.ElementsMediaType} [mediaType]
 * @member {Struct.ElementsMessageBodyWorkers} [messageBodyWorkers]
 * @member {Struct.ElementsMultiPart} [parent]
 * @member {Struct.ElementsProviders} [providers]
 * @member {Array[Struct.ElementsBodyPart]} [bodyParts]
 * @member {Struct.ElementsMultiPartParameterizedHeaders} [parameterizedHeaders]
 * @struct_end
 */

/**
 * @struct_partial ElementsMultiPartHeaders
 * @member {Bool} [empty]
 * @struct_end
 */

/**
 * @struct_partial ElementsMultiPartParameterizedHeaders
 * @member {Bool} [empty]
 * @struct_end
 */

/**
 * @struct_partial ElementsMultivaluedMapStringParameterizedHeader
 * @member {Bool} [empty]
 * @struct_end
 */

/**
 * @struct_partial ElementsMultivaluedMapStringString
 * @member {Bool} [empty]
 * @struct_end
 */

/**
 * @struct_partial ElementsOAuth2AuthScheme
 * @member {String} name A unique name used to identify the scheme within the instance of Elements. If using the same OAuth2 provider (e.g. Steam), it is recommended to suffix the name for each application when using multitenancy, e.g. steam_game1, steam_game2, etc.
 * @member {String} validationUrl The URL to send the user token validation request to.
 * @member {String} method HTTP method for the validation request (GET or POST).
 * @member {String} [id] The unique ID of the auth scheme.
 * @member {Array[Struct.ElementsOAuth2RequestKeyValue]} [headers] The headers required for the validation request.
 * @member {Array[Struct.ElementsOAuth2RequestKeyValue]} [params] The query parameters required for the validation request.
 * @member {Array[Struct.ElementsOAuth2RequestKeyValue]} [body] The body parameters for the validation request when using POST.
 * For FORM_URL_ENCODED, these become form fields (key=value&...).
 * @member {String} [responseIdMapping] Determines how to map the user id in the response. Will search the response for the corresponding key. For example, if the response is structured like:  {"response": { "params" : { "steamid" : <id> } } } then you only need to input "steamid". Ignored if one of the parameters is marked as user id.
 * @member {String} [responseValidMapping] Optional key in the response whose value indicates whether the token/user is valid.
 * For example: "is_valid", "active", or "success".
 * If not set, only the HTTP status code is used.
 * @member {String} [responseValidExpectedValue] Optional expected value for the validation field.
 * If null:
 *   - boolean true is treated as success
 *   - non-empty/non-null for non-boolean values is treated as success.
 * If set, the field's string value must equal this.
 * @member {Array[Real]} [validStatusCodes] HTTP status codes that are considered "processable" for validation.
 * Any other status is treated as failure before inspecting the body.
 * Defaults to [200].
 * @member {String} [bodyType] How to encode the request body when using POST.
 * FORM_URL_ENCODED corresponds to application/x-www-form-urlencoded.
 * @struct_end
 */

/**
 * @struct_partial ElementsOAuth2RequestKeyValue
 * @member {String} [key] The key.
 * @member {String} [value] The value.
 * @member {Bool} [fromClient] If this value should be received from the client, or predefined and stored in the DB.
 * @member {Bool} [userId] If true, this parameter's resolved value is treated as the external user identifier
 * to link to your internal user id.
 * Only one parameter should have this set to true per scheme.
 * @struct_end
 */

/**
 * @struct_partial ElementsOAuth2SessionRequest
 * @member {String} schemeId The OAuth2 scheme ID to use.
 * @member {Struct.ElementsOauth2SessionRequestRequestParameters} [requestParameters] The request parameters to be used in the token validation request. These will automatically be mapped to the corresponding query param/header/body value defined in the auth scheme.
 * @member {Struct.ElementsOauth2SessionRequestRequestHeaders} [requestHeaders] The request headers to be used in the token validation request. This should adhere to any headers marked as fromClient in the auth scheme.Deprecated: All key/values can now be placed in the requestParameters and they will be mapped automatically.
 * Internally, this is combined with requestParameters for backwards compatibility.
 * @member {String} [profileId] The profile ID to assign to the session.
 * @member {String} [profileSelector] A query string to select the profile to use. NOTE: This will not be run if a profileId is specified.
 * @member {String} [applicationNameOrId] The name or ID of an application whose primary profile should be attached to the session. Only used if profileId and profileSelector are not specified. If the application or the user's primary profile for it cannot be resolved, the session is created without a profile.
 * @struct_end
 */

/**
 * @struct_partial ElementsOauth2SessionRequestRequestHeaders
 * @struct_end
 */

/**
 * @struct_partial ElementsOauth2SessionRequestRequestParameters
 * @struct_end
 */

/**
 * @struct_partial ElementsOculusApplicationConfiguration
 * @member {String} name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} type The fully-qualified Java type of ApplicationConfiguration.
 * @member {Struct.ElementsApplication} parent
 * @member {String} applicationId The AppID as it appears in the Facebook Developer Console
 * @member {String} applicationSecret The App Secret as it appears in the Facebook Developer Console
 * @member {String} [id] The database assigned ID for the application configuration.
 * @member {String} [description]
 * @member {Array[String]} [builtinApplicationPermissions] The set of built-in permissions connected clients will need to request.
 * @member {Array[Struct.ElementsProductBundle]} [productBundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 * @struct_end
 */

/**
 * @struct_partial ElementsOculusIapConsumeResponse
 * @member {Bool} [success]
 * @struct_end
 */

/**
 * @struct_partial ElementsOculusIapReceipt
 * @member {String} [userId] The id of the Oculus User that purchased the IAP.
 * @member {String} [purchaseId] The original transaction identifier of the IAP. We use this as the key for the db object as well as the {@link RewardIssuance} context. (For now, we do not persist the transaction_id, only the original_transaction_id.)
 * @member {String} [reportingId] A secondary identifier for troubleshooting/auditing (and potential future correlation)
 * @member {String} [sku] The SKU of the IAP as it is listed in your IAP definitions.
 * @member {Real} [grantTime] Time when the user gained entitlement to the item (Unix timestamp).
 * @member {Real} [expirationTime] Time when the user will lose entitlement to the item (Unix timestamp). If the user has an indefinite entitlement it will be 0.
 * @member {String} [developerPayload] The original purchase date.
 * @struct_end
 */

/**
 * @struct_partial ElementsOculusIapVerifyReceiptResponse
 * @member {Bool} [success]
 * @member {Real} [grantTime]
 * @member {String} [userId]
 * @member {String} [sku]
 * @struct_end
 */

/**
 * @struct_partial ElementsOidcAuthScheme
 * @member {String} issuer A unique name used to identify the scheme within the instance of Elements. When validating from an external source (e.g. Google or Apple SSO), must match the 'iss' property of the decoded JWT.
 * @member {Array[Struct.ElementsJWK]} keys A set of JWKs containing the keys required to validate JWT signatures.
 * @member {String} [id] The unique ID of the auth scheme.
 * @member {String} [name] The unique name of the auth scheme.
 * @member {String} [keysUrl] The URL for the JWK data. Will attempt to refresh keys if the kid cannot be found in the collection.
 * @member {String} [mediaType] The JWK format. Defaults to application/json
 * @member {Real} [keysFetchedAt] The epoch second at which 'keys' was last refreshed. Server-managed; not settable via the create/update API.
 * @struct_end
 */

/**
 * @struct_partial ElementsOidcLoginAttemptConfirmRequest
 * @member {String} confirmToken The confirmToken returned in the original POST /oidc/session response.
 * @struct_end
 */

/**
 * @struct_partial ElementsOidcLoginAttemptRequest
 * @member {String} provider The provider identifier (e.g. 'twitch').
 * @member {String} [idToken] An already-possessed id_token to validate directly, skipping the browser-redirect flow.
 * @member {String} [applicationNameOrId] The name or ID of an application whose primary profile should be attached to the session, reusing an existing primary profile if one is already present, or else auto-creating it (subject to the application's autoCreateProfile/maxProfiles settings). Applies to both anonymous and account-linking attempts. If unspecified, the application encoded in the resulting id_token's own 'aud' claim (if any) is used instead, via the legacy, ungated get-or-create profile behavior rather than the gated auto-create path above.
 * @struct_end
 */

/**
 * @struct_partial ElementsOidcLoginAttemptStatusResponse
 * @member {String} [status] The state of a pending OIDC login attempt.
 * @member {Struct.ElementsSessionCreation} [session]
 * @member {String} [reason] A human-readable failure reason. Only set when status is FAILED.
 * @struct_end
 */

/**
 * @struct_partial ElementsOidcProviderConfiguration
 * @member {String} name A unique, lowercase, URL-safe identifier for the provider (e.g. 'twitch'). Used as the 'provider' path segment and request body value for the OIDC session endpoints.
 * @member {String} discoveryUrl The provider's OIDC discovery document URL, e.g. https://id.twitch.tv/oauth2/.well-known/openid-configuration. The issuer, authorization endpoint, token endpoint, and JWKS URI are all resolved from this document.
 * @member {String} clientId The OAuth2 client id registered with the provider.
 * @member {String} clientSecret The OAuth2 client secret registered with the provider. Never returned in API responses.
 * @member {String} redirectUri The full, literal redirect URI registered with the provider (e.g. https://api.example.com/oidc/twitch/callback). Must exactly match the value registered with the provider and is reused byte-for-byte in both the authorize request and the token exchange.
 * @member {String} [id] The unique ID of the provider configuration.
 * @member {Array[String]} [scopes] The OAuth2 scopes to request during authorization.
 * @member {Struct.ElementsOidcProviderConfigurationExtraAuthorizeParams} [extraAuthorizeParams] Additional provider-specific query parameters to include in the authorize request (e.g. Twitch's 'claims' parameter to request email/preferred_username in the id_token).
 * @member {String} [tokenEndpointAuthMethod] How the client authenticates to the token endpoint during authorization code exchange.
 * @member {String} [successRedirectUrl] Optional. If set, GET /oidc/{provider}/callback redirects the browser here on a successful login instead of rendering the default success page. Server-authoritative: not overridable per login attempt.
 * @member {String} [errorRedirectUrl] Optional. If set, GET /oidc/{provider}/callback redirects the browser here on a failed login instead of rendering the default error page. Server-authoritative: not overridable per login attempt.
 * @struct_end
 */

/**
 * @struct_partial ElementsOidcProviderConfigurationExtraAuthorizeParams
 * @struct_end
 */

/**
 * @struct_partial ElementsOidcSessionRequest
 * @member {String} jwt The JWT to parse
 * @member {String} [profileId] The profile ID to assign to the session.
 * @member {String} [profileSelector] A query string to select the profile to use. NOTE: This will not be run if a profileId is specified.
 * @member {String} [applicationNameOrId] The name or ID of an application whose primary profile should be attached to the session, auto-creating it (subject to the application's autoCreateProfile/maxProfiles settings) if it does not exist. Only used if profileId and profileSelector are not specified. If unspecified, the application encoded in the JWT's own claims (if any) is used instead, without auto-create.
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationApplication
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsApplication]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationApplicationConfiguration
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsApplicationConfiguration]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationAuthScheme
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsAuthScheme]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationDeployment
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsDeployment]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationDistinctInventoryItem
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsDistinctInventoryItem]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationElementDeployment
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsElementDeployment]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationFacebookIapReceipt
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsFacebookIapReceipt]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationFriend
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsFriend]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationIndexPlanObject
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsIndexPlanObject]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationInventoryItem
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsInventoryItem]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationItem
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsItem]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationItemLedgerEntry
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsItemLedgerEntry]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationLargeObject
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsLargeObject]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationLeaderboard
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsLeaderboard]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationMetadata
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsMetadata]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationMetadataSpec
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsMetadataSpec]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationMission
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsMission]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationMultiMatch
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsMultiMatch]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationOAuth2AuthScheme
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsOAuth2AuthScheme]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationOculusIapReceipt
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsOculusIapReceipt]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationOidcAuthScheme
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsOidcAuthScheme]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationOidcProviderConfiguration
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsOidcProviderConfiguration]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationProductBundle
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsProductBundle]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationProductSkuSchema
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsProductSkuSchema]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationProfile
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsProfile]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationProgress
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsProgress]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationRank
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsRank]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationReceipt
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsReceipt]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationRewardIssuance
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsRewardIssuance]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationSaveDataDocument
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsSaveDataDocument]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationSchedule
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsSchedule]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationScheduleEvent
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsScheduleEvent]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationSmartContract
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsSmartContract]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationUser
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsUser]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationVault
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsVault]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsPaginationWallet
 * @member {Real} [offset]
 * @member {Real} [total]
 * @member {Bool} [approximation]
 * @member {Array[Struct.ElementsWallet]} [objects]
 * @struct_end
 */

/**
 * @struct_partial ElementsParameterizedHeader
 * @member {String} [value]
 * @member {Struct.ElementsParameterizedHeaderParameters} [parameters]
 * @struct_end
 */

/**
 * @struct_partial ElementsParameterizedHeaderParameters
 * @struct_end
 */

/**
 * @struct_partial ElementsPasswordResetRequest
 * @member {String} email The email address associated with the account.
 * @struct_end
 */

/**
 * @struct_partial ElementsPhoneMatchedInvitation
 * @member {String} [phoneNumber] Phone number
 * @member {Array[String]} [profileIds] The list of profile Ids that phone was matched
 * @struct_end
 */

/**
 * @struct_partial ElementsProductBundle
 * @member {String} schema The purchase provider schema in reverse-dns notation, e.g. com.apple.appstore.
 * @member {String} productId The product id as defined in the purchase provider's catalog.
 * @member {String} [id] The database id of this Product Bundle.
 * @member {Struct.ElementsApplication} [application]
 * @member {String} [displayName] The title of the product bundle to display to end users.
 * @member {String} [description] The description of the product bundle to display to end users.
 * @member {Array[Struct.ElementsProductBundleReward]} [productBundleRewards] The list of rewards issued when this bundle is purchased.
 * @member {Struct.ElementsProductBundleMetadata} [metadata] Application-specific metadata.
 * @member {Bool} [display] Whether or not the frontend should display this product bundle to end users.
 * @member {Array[String]} [tags] Searchable tags associated with this product bundle.
 * @struct_end
 */

/**
 * @struct_partial ElementsProductBundleMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsProductBundleReward
 * @member {String} itemId The id of the item to be rewarded.
 * @member {Real} [quantity] The quantity of the item to be rewarded. Null for DISTINCT items; positive integer for FUNGIBLE items.
 * @struct_end
 */

/**
 * @struct_partial ElementsProductSkuSchema
 * @member {String} schema The purchase provider schema in reverse-dns notation, e.g. com.apple.appstore.
 * @member {String} [id] The database id of this Product SKU Schema.
 * @struct_end
 */

/**
 * @struct_partial ElementsProfile
 * @member {String} displayName A non-unique display name for this profile.
 * @member {String} [id] The unique ID of the profile itself.
 * @member {Struct.ElementsUser} [user] The User associated with this Profile.
 * @member {Struct.ElementsApplication} [application]
 * @member {String} [imageUrl] A URL to the image of the profile.  (ie the User's Avatar).
 * @member {Struct.ElementsLargeObjectReference} [imageObject] Image object stored in EL large objects storage.
 * @member {Struct.ElementsProfileMetadata} [metadata] An object containing arbitrary player metadata as key-value pairs.
 * @member {Real} [lastLogin] The last time this profile has been logged in by the user.
 * @struct_end
 */

/**
 * @struct_partial ElementsProfileMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsProgress
 * @member {String} [id] The unique ID of the progress instance
 * @member {Struct.ElementsProfile} [profile]
 * @member {Struct.ElementsStep} [currentStep] The final repeating step (may be null if step(s) are specified)
 * @member {Real} [remaining] The remaining actions
 * @member {Struct.ElementsProgressMissionInfo} [mission] The mission
 * @member {Array[Struct.ElementsRewardIssuance]} [rewardIssuances] List of all reward issuances that are issued but not expired, or redeemed but persistent.
 * @member {Real} [sequence] The current number of completed steps. Note that this may exceed the total number of steps, i.e. the final step may be repeated infinitely.
 * @member {Bool} [managedBySchedule] Indicates that this progress is managed by a Schedule. If true, the Progress will be deleted when no schedules have the progress active. This will be true if the Progress was created as part of a Schedule.
 * @member {Array[Struct.ElementsSchedule]} [schedules] A listing of the Schedules which are managing this Progress. Empty or null if the Progress is not managed as part of a Schedule.
 * @member {Array[Struct.ElementsScheduleEvent]} [scheduleEvents] A listing of ScheduleEvents which are managing this Progress. Empty or null if the Progress is not managed as part of a Schedule.
 * @struct_end
 */

/**
 * @struct_partial ElementsProgressMissionInfo
 * @member {String} id The id of the mission
 * @member {String} name The name of the mission
 * @member {String} displayName The display name for the mission
 * @member {String} description The description of the mission
 * @member {Array[Struct.ElementsStep]} [steps] The steps that constitute the mission (may be null if finalRepeatStep is specified)
 * @member {Struct.ElementsStep} [finalRepeatStep] The final repeating step (may be null if step(s) are specified)
 * @member {Array[String]} [tags] The tags used to categorize this mission
 * @member {Struct.ElementsProgressMissionInfoMetadata} [metadata] The metadata for this mission
 * @struct_end
 */

/**
 * @struct_partial ElementsProgressMissionInfoMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsProgressRow
 * @member {String} [id]
 * @member {String} [profileId]
 * @member {String} [profileImageUrl]
 * @member {String} [profileDisplayName]
 * @member {String} [stepDisplayName]
 * @member {String} [stepDescription]
 * @member {Real} [remaining]
 * @member {Real} [stepCount]
 * @struct_end
 */

/**
 * @struct_partial ElementsProviders
 * @struct_end
 */

/**
 * @struct_partial ElementsPSNApplicationConfiguration
 * @member {String} name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} type The fully-qualified Java type of ApplicationConfiguration.
 * @member {Struct.ElementsApplication} parent
 * @member {String} npIdentifier
 * @member {String} clientSecret
 * @member {String} [id] The database assigned ID for the application configuration.
 * @member {String} [description]
 * @struct_end
 */

/**
 * @struct_partial ElementsRank
 * @member {Struct.ElementsScore} score
 * @member {Real} [position] The position of the associated score in the result set.
 * @struct_end
 */

/**
 * @struct_partial ElementsRankRow
 * @member {String} profileId The profile ID of the user who holds this rank.
 * @member {String} profileDisplayName The profile display name of the user who holds this rank.
 * @member {String} profileImageUrl The profile image url of the user who holds this rank.
 * @member {Real} lastLogin The last login.
 * @member {String} [id] The ID of the Score
 * @member {Real} [position] The position of the associated score in the result set.
 * @member {Real} [pointValue] The point value of the score.
 * @member {String} [scoreUnits] The the units of measure for the points.  For example, if the points in the game were called "coins" instead of "points" this would be used to designate as such in the UI.
 * @member {Real} [creationTimestamp] The time at which the score was created on the server.
 * @member {Real} [leaderboardEpoch] The epoch to which the score belongs for the associated leaderboard. By convention, if the leaderboard is all-time, this value will be set to zero.
 * @struct_end
 */

/**
 * @struct_partial ElementsReceipt
 * @member {String} [id] The db id of this receipt.
 * @member {String} [originalTransactionId] The id of the original transaction as provided by the payment processor.
 * @member {String} [schema] The id of the receipt provider in reverse-dns notation, e.g. com.company.platform
 * @member {Struct.ElementsUser} [user] The User associated with this Profile.
 * @member {Real} [purchaseTime] The time that the purchase was made (ms since Unix epoch).
 * @member {String} [body] The string representation of the raw receipt data.
 * @struct_end
 */

/**
 * @struct_partial ElementsReward
 * @member {Struct.ElementsItem} item The Item to be issued upon redemption.
 * @member {Real} quantity The quantity of the Item that is rewarded
 * @member {Struct.ElementsRewardMetadata} [metadata]
 * @struct_end
 */

/**
 * @struct_partial ElementsRewardIssuance
 * @member {Struct.ElementsUser} user The User associated with this Profile.
 * @member {String} state The state of the reward. On creation, this is automatically assigned to be ISSUED. If the current value of the state is REDEEMED, then the state is no longer allowed to be updated. This valuemay not be directly modified--the redeem DAO method should be used instead to perform the redemption process.
 * @member {String} [id] The unique ID of the issuance.
 * @member {Struct.ElementsItem} [item] The Item to be issued upon redemption.
 * @member {Real} [itemQuantity] The amount of Items to be set/added to the InventoryItem upon redemption.
 * @member {String} [context] A generic String used to uniquely identify the RewardIssuance issuance. If the RewardIssuance is created by the client, this value must be specified to prevent erroneous duplicate issuances. E.g. if the client successfully submits an issuance but fails to receive the response, the client is expected to submit a new issuance with the same context string. Similarly, the client application should have safeguards in place in the event of a crash to prevent duplicate submissions: e.g. ensuring that the context string is unchanged when performing multiple issuances of the same RewardIssuance. If the RewardIssuance is generated by the server, this will be defined automatically. The context cannot be updated after creation. Note that an context defined via the API should not begin with 'server.' as that is a protected namespace.
 * @member {String} [type] Defines whether multiple issuances for the given user+reward+context may occur. If the type is set to NON_PERSISTENT, at most one ISSUED RewardIssuance may exist in the server at a time for a given user and context. If the type is set to PERSISTENT, at most one ISSUED or REDEEMED RewardIssuance may exist in the server for a given user and context, i.e. once a PERSISTENT RewardIssuance has been submitted, a new one may never be submitted and will be rejected by the server. Note that this value cannot be updated. By default, this will be set to NON_PERSISTENT.
 * @member {String} [source] Identifies the source of the issuance, e.g. 'Client', 'IAP', 'Leaderboard'. This may be specified manually by the client if desired. Note that this value cannot be updated.
 * @member {Struct.ElementsRewardIssuanceMetadata} [metadata] Metadata for the issuance. May be optionally defined by the client on creation. If the source is a server-side value, then a predefined structure will always be followed that provides additional information as to the source of the issuance (e.g. mission progress/step information).
 * @member {Array[String]} [tags] The tags used to categorize this Reward Issuance.
 * @member {Real} [expirationTimestamp] Optionally define when the issuance should expire. This value may be updated to extend when the expiration occurs. When set, this value must be greater than the current time on the server.Note that the record may not actually be deleted for up to sixty seconds after the time noted in thetimestamp.
 * @member {String} [uuid] Internal unique identifier generated and assigned on creation.
 * @struct_end
 */

/**
 * @struct_partial ElementsRewardIssuanceMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsRewardIssuanceRedemptionResult
 * @member {String} [rewardIssuanceId] The id as originally provided in the request.
 * @member {Struct.ElementsRewardIssuance} [rewardIssuance] Represents a Reward that has been issued but has not yet been claimed by the user.  The reward is assigned a unique ID to ensure that it may not have been applied more than once.
 * @member {Struct.ElementsInventoryItem} [inventoryItem] Should the redemption be successful, the Inventory Item that was updated. Otherwise, null.
 * @member {String} [errorDetails] Should the redemption fail, the error details. Otherwise, null.
 * @struct_end
 */

/**
 * @struct_partial ElementsRewardMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsRoutingHealthStatus
 * @member {String} [instanceId]
 * @member {Array[String]} [routingTable]
 * @member {Array[String]} [masterNodeRoutingTable]
 * @member {Array[String]} [applicationNodeRoutingTable]
 * @struct_end
 */

/**
 * @struct_partial ElementsSaveDataDocument
 * @member {String} contents The contents of the save data.
 * @member {String} [id] The database assigned unique ID of the document.
 * @member {Real} [slot] The slot of the property.
 * @member {Struct.ElementsUser} [user] The User associated with this Profile.
 * @member {Struct.ElementsProfile} [profile]
 * @member {Real} [timestamp] The timestamp of the last write to this document.
 * @member {String} [version] The revision of the save data document.
 * @struct_end
 */

/**
 * @struct_partial ElementsSchedule
 * @member {String} name The unique name of the schedule.
 * @member {String} displayName
 * @member {String} description The description for this schedule.
 * @member {String} [id] The unique ID of the schedule.
 * @struct_end
 */

/**
 * @struct_partial ElementsScheduleEvent
 * @member {Struct.ElementsSchedule} schedule
 * @member {Array[Struct.ElementsMission]} missions
 * @member {String} [id]
 * @member {Real} [begin]
 * @member {Real} [end]
 * @struct_end
 */

/**
 * @struct_partial ElementsScore
 * @member {Struct.ElementsProfile} profile
 * @member {String} [id] The ID of the Score
 * @member {Real} [pointValue] The point value of the score.
 * @member {String} [scoreUnits] The the units of measure for the points.  For example, if the points in the game were called "coins" instead of "points" this would be used to designate as such in the UI.
 * @member {Real} [creationTimestamp] The time at which the score was created on the server.
 * @member {Real} [leaderboardEpoch] The epoch to which the score belongs for the associated leaderboard. By convention, if the leaderboard is all-time, this value will be set to zero.
 * @struct_end
 */

/**
 * @struct_partial ElementsSession
 * @member {Struct.ElementsUser} user The User associated with this Profile.
 * @member {Struct.ElementsProfile} [profile]
 * @member {Struct.ElementsApplication} [application]
 * @member {Real} [expiry]
 * @struct_end
 */

/**
 * @struct_partial ElementsSessionCreation
 * @member {String} [sessionSecret] The Session Secret to pass to subsequent requests through headers.
 * @member {Struct.ElementsSession} [session] The Session object generated by the request.
 * @struct_end
 */

/**
 * @struct_partial ElementsSimpleInventoryItemQuantityAdjustment
 * @member {String} userId The User whose inventory to modify.ß
 * @member {Real} quantityDelta The delta to be applied to the inventory item quantity (positive or negative)
 * @struct_end
 */

/**
 * @struct_partial ElementsSmartContract
 * @member {String} name The unique symbolic name of the smart contract.
 * @member {String} displayName The name given to this contract for display purposes.
 * @member {Struct.ElementsSmartContractAddresses} addresses The addresses of the contract from the blockchain. Depending on the network or protocol this may have several meanings. For example, this may be the script has for the Ethereum network.
 * @member {Struct.ElementsVault} vault
 * @member {String} [id] The Elements database id of the contract.
 * @member {Struct.ElementsSmartContractMetadata} [metadata] Any metadata for this contract.
 * @struct_end
 */

/**
 * @struct_partial ElementsSmartContractAddress
 * @member {String} [address]
 * @struct_end
 */

/**
 * @struct_partial ElementsSmartContractAddresses
 * @struct_end
 */

/**
 * @struct_partial ElementsSmartContractMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsSteamApplicationConfiguration
 * @member {String} name The application-configuration specific unique ID. Unique per application per category.
 * @member {String} type The fully-qualified Java type of ApplicationConfiguration.
 * @member {Struct.ElementsApplication} parent
 * @member {String} publisherKey The Steam Publisher Web API Key, used to authenticate server-side calls to the Steam Microtransaction API (ISteamMicroTxn).
 * @member {String} appId The Steam AppID for the game as it appears in the Steamworks partner portal.
 * @member {String} [id] The database assigned ID for the application configuration.
 * @member {String} [description]
 * @member {Array[Struct.ElementsProductBundle]} [productBundles] The list of product bundles that may be rewarded upon successful IAP transactions.
 * @struct_end
 */

/**
 * @struct_partial ElementsStep
 * @member {String} displayName The display name for the step
 * @member {String} description The description of the step
 * @member {Real} count The number of times the step must be completed to receive the reward(s)
 * @member {Array[Struct.ElementsReward]} rewards The reward(s) that will be granted upon completion
 * @member {Struct.ElementsStepMetadata} [metadata] The metadata for this step
 * @struct_end
 */

/**
 * @struct_partial ElementsStepMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsSubjectRequest
 * @member {Array[String]} userIds A List of all UserIds which can operate against the LargeObject.
 * @member {Array[String]} profileIds A List of all ProfileIds which can operate against the LargeObject.
 * @member {Bool} [wildcard] Flag to check who may perform the operation. If true, all anonymous users may perform the operation.
 * @struct_end
 */

/**
 * @struct_partial ElementsSubjects
 * @member {Array[Struct.ElementsUser]} users Users which may perform the operations.
 * @member {Array[Struct.ElementsProfile]} profiles Profiles, which owners may perform the operations.
 * @member {Bool} [wildcard] Flag to check who may perform the operations. True if all users may access the object.
 * @member {String} [minimumLevel] Specifies a minimum access level, if applicable.
 * @struct_end
 */

/**
 * @struct_partial ElementsSystemVersion
 * @member {String} [version]
 * @member {String} [revision]
 * @member {String} [timestamp]
 * @struct_end
 */

/**
 * @struct_partial ElementsTabulationProgressRow
 * @member {Array[Struct.ElementsProgressRow]} rows
 * @struct_end
 */

/**
 * @struct_partial ElementsTabulationRankRow
 * @member {Array[Struct.ElementsRankRow]} rows
 * @struct_end
 */

/**
 * @struct_partial ElementsUniqueCode
 * @member {String} [id]
 * @member {Real} [linger]
 * @member {Real} [timeout]
 * @member {Real} [expiry]
 * @member {Struct.ElementsUser} [user] The User associated with this Profile.
 * @member {Struct.ElementsProfile} [profile]
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateApplicationRequest
 * @member {String} name
 * @member {String} [description]
 * @member {Struct.ElementsUpdateApplicationRequestAttributes} [attributes]
 * @member {Real} [maxProfiles] The maximum number of profiles a user may create for this application. If unspecified, defaults to 1.
 * @member {Bool} [autoCreateProfile] Whether a user's primary profile for this application should be created automatically when the user is created. If unspecified, defaults to true.
 * @member {Bool} [authoritativeProfilePicture] If true, a user cannot edit their own profile picture for this application via the REST API -- it must be set by backend/Element code instead. If false (the default), users may edit their own profile picture via the REST API.
 * @member {String} [displayNameRegex] A Java regular expression that a profile's display name must match for this application, or the profile create/update is rejected. If blank or unspecified, no additional check is performed.
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateApplicationRequestAttributes
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateAuthSchemeRequest
 * @member {String} audience The JWT audience for the scheme. Must be unique.
 * @member {String} algorithm The algorithm that Elements will use with the supplied key.
 * @member {String} userLevel The highest permitted user level this particular scheme will authorize.
 * @member {Array[String]} tags The list of tags for tagging the auth scheme.
 * @member {Array[String]} allowedIssuers The list of issuers allowed to use this scheme.
 * @member {Bool} [regenerate] If set to true, Elements will regenerate the key and pubKey must be null or omitted
 * @member {String} [publicKey] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateAuthSchemeResponse
 * @member {String} publicKey The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/X509EncodedKeySpec.html for details on the specifics of the format.
 * @member {Struct.ElementsAuthScheme} [scheme] The full JSON response as described in AuthScheme
 * @member {String} [privateKey] The Base64 public key that was either given or generated during creation. See https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/security/spec/PKCS8EncodedKeySpec.html for details on the specifics of the format.
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateDeploymentRequest
 * @member {String} revision
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateDistinctInventoryItemRequest
 * @member {String} [userId] The id of the User owning this inventory item id.
 * @member {String} [profileId] The the profile id of hte Profile owning this inventory item.
 * @member {Struct.ElementsUpdateDistinctInventoryItemRequestMetadata} [metadata]
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateDistinctInventoryItemRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateElementDeploymentRequest
 * @member {String} state The state of the deployment.
 * @member {Array[Struct.ElementsElementPathDefinition]} [elements] List of Element definitions specifying the classpaths and artifacts for each Element to deploy. Each definition can specify either Maven artifact coordinates (API, SPI, Element lists) or a single ELM artifact coordinate.
 * @member {Array[Struct.ElementsElementPackageDefinition]} [packages] List of Element package definitions specifying ELM artifacts to deploy with per-path attribute configuration. Each package can contain multiple elements with individualized attribute mappings.
 * @member {Bool} [useDefaultRepositories] Flag indicating whether to use the default artifact repositories in addition to any provided. The actual repositories included will be those defined by the system's default configuration at deployment time.
 * @member {Array[Struct.ElementsElementArtifactRepository]} [repositories] List of artifact repositories to use for resolving the specified artifacts and their dependencies. All artifacts and their dependencies must be found within these repositories.
 * @member {Struct.ElementsUpdateElementDeploymentRequestPathAttributes} [pathAttributes] Map of element paths to their custom attributes. The key is the path inside the ELM for each Element in the ELM file, and the value is a map of custom attributes to pass to that specific element at load time via the AttributesLoader mechanism.
 * @member {Struct.ElementsUpdateElementDeploymentRequestPathSpiBuiltins} [pathSpiBuiltins] Map of element paths to builtin SPI configurations. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @member {Struct.ElementsUpdateElementDeploymentRequestPathSpiClassPaths} [pathSpiClassPaths] Map of element paths to a custom SPI class paths. This allows for an individual SPI specification for each Element contained within the ELM file in the large object.
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateElementDeploymentRequestPathAttributes
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateElementDeploymentRequestPathAttributesAp
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateElementDeploymentRequestPathSpiBuiltins
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateElementDeploymentRequestPathSpiClassPaths
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateInventoryItemRequest
 * @member {Real} [quantity] The quantity of the Item in inventory
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateItemRequest
 * @member {String} name
 * @member {String} displayName
 * @member {String} description
 * @member {Array[String]} [tags]
 * @member {Struct.ElementsMetadataSpec} [metadataSpec] Represents a spec for metadata.
 * @member {Struct.ElementsUpdateItemRequestMetadata} [metadata]
 * @member {Bool} [publicVisible]
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateItemRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateLargeObjectContentsBody
 * @member {Struct.ElementsFormDataContentDisposition} [file]
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateLargeObjectRequest
 * @member {String} mimeType The MIME type associated with the object.
 * @member {Struct.ElementsSubjectRequest} read Specifies the Subjects which can delete the LargeObject.
 * @member {Struct.ElementsSubjectRequest} write Specifies the Subjects which can delete the LargeObject.
 * @member {Struct.ElementsSubjectRequest} delete Specifies the Subjects which can delete the LargeObject.
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateLeaderboardRequest
 * @member {String} name The name of the leaderboard.  This must be unique across all leaderboards.
 * @member {String} timeStrategyType The time strategy for the leaderboard. Current options are ALL_TIME and EPOCHAL.
 * @member {String} scoreStrategyType The score strategy for the leaderboard. Current options are OVERWRITE_IF_GREATER and ACCUMULATE.
 * @member {String} title The user-presentable name or title for for the leaderboard.
 * @member {String} scoreUnits The units-of measure for the score type of the leaderboard.
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateMetadataRequest
 * @member {String} [name] A unique name for the metadata object.
 * @member {Struct.ElementsUpdateMetadataRequestMetadata} [metadata] An object containing the metadata payload as key-value pairs.
 * @member {Struct.ElementsMetadataSpec} [metadataSpec] Represents a spec for metadata.
 * @member {String} [accessLevel] The minimum level of access required to view this metadata.
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateMetadataRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateMetadataSpecRequest
 * @member {String} [name] The name of the metadata spec.
 * @member {String} [type] The type of the metadata spec.
 * @member {Array[Struct.ElementsMetadataSpecProperty]} [properties] The updated list of properties.
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateMissionRequest
 * @member {String} [displayName] The display name for the mission
 * @member {String} [description] The description of the mission
 * @member {Array[String]} [tags] The tags used to categorize this mission
 * @member {Array[Struct.ElementsStep]} [steps] The steps that constitute the mission (may be null if finalRepeatStep is specified)
 * @member {Struct.ElementsStep} [finalRepeatStep] The final repeating step (may be null if step(s) are specified)
 * @member {Struct.ElementsUpdateMissionRequestMetadata} [metadata] The metadata for this mission
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateMissionRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateProfileImageRequest
 * @member {String} mimeType MimeType of image
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateProfileRequest
 * @member {String} [imageUrl] A URL to the image of the profile.  (ie the User's Avatar).
 * @member {String} [displayName] A non-unique display name for this profile.
 * @member {Struct.ElementsUpdateProfileRequestMetadata} [metadata] A map of arbitrary metadata.
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateProfileRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateProgressRequest
 * @member {Struct.ElementsStep} [currentStep] The final repeating step (may be null if step(s) are specified)
 * @member {Real} [remaining] The remaining actions
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateSaveDataDocumentRequest
 * @member {String} contents
 * @member {Bool} [force]
 * @member {String} [version]
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateScheduleEventRequest
 * @member {Array[String]} missionNamesOrIds
 * @member {Real} [begin]
 * @member {Real} [end]
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateScheduleRequest
 * @member {String} name
 * @member {String} displayName
 * @member {String} description
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateSmartContractRequest
 * @member {String} name The unique symbolic name of the smart contract.
 * @member {String} displayName The name given to this contract for display purposes.
 * @member {Struct.ElementsUpdateSmartContractRequestAddresses} addresses The address of the contract from the blockchain. Depending on the network or protocol this may have several meanings and vary depending on the specific API or network.
 * @member {String} vaultId The Elements database id of the wallet containing the default account to be used for contract related requests.
 * @member {Struct.ElementsUpdateSmartContractRequestMetadata} [metadata] Any metadata for this contract.
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateSmartContractRequestAddresses
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateSmartContractRequestMetadata
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateVaultRequest
 * @member {String} displayName A user-defined name for the vault. This is used simply for the user's reference and has no bearing  onthe vault's functionality.
 * @member {String} userId The elements-defined user ID to own the vault.
 * @member {String} [passphrase] The current passphrase for the vault. If left null, no updates to the passphrase will be made. If not-null, then the new password must also not be null.
 * @member {String} [newPassphrase] The updated passphrase for the vault. If left null, no updates to the passphrase will be made. If not-null, then the password must also not be null.
 * @struct_end
 */

/**
 * @struct_partial ElementsUpdateWalletRequest
 * @member {Array[String]} networks The networks associated with this wallet. All must support the Wallet's protocol.
 * @member {String} [displayName] The new display name of the wallet.
 * @member {Real} [preferredAccount] The default identity. Must not be larger than the count of identities.
 * @struct_end
 */

/**
 * @struct_partial ElementsUser
 * @member {String} level The user's access level.
 * @member {String} [id] The user's database assigned unique ID.
 * @member {String} [name] A unique name for the user.
 * @member {String} [firstName] The user's first name
 * @member {String} [lastName] The user's last name
 * @member {String} [email] The user's email.
 * @member {String} [primaryPhoneNb] The user's phone number.
 * @member {Array[String]} [linkedAccounts] List of linked account or auth scheme names.
 * @member {String} [displayName] The user's display name, as reported by an OIDC provider. Never overwrites an existing value; only filled in if previously blank.
 * @member {Struct.ElementsUserLinkedAccountProfiles} [linkedAccountProfiles] Per-linked-OIDC-scheme snapshot of the standard OIDC profile-scope claims that scheme most recently reported, keyed by the auth scheme name.
 * @struct_end
 */

/**
 * @struct_partial ElementsUserCreateRequest
 * @member {String} [name]
 * @member {String} [email]
 * @member {String} [primaryPhoneNb]
 * @member {String} [firstName]
 * @member {String} [lastName]
 * @member {String} [password] The user's plaintext password, only to be provided in POST/PUT requests in the User Resource REST API interface. In the future, a dedicated REST API model may be constructed instead of using a direct User model.
 * @member {String} [level] The user's level to assign. Depending on the usage, the server may ignore this field and assign its own description.
 * @member {Array[Struct.ElementsCreateProfileSignupRequest]} [profiles] A list of profiles to assign to this user during creation. The server will attempt to create a profile for each item in this list.
 * @member {String} [autoCreateProfileApplicationNameOrId] The name or ID of an application for which the user's primary profile should be automatically created, if that application is configured for it (Application#autoCreateProfile and Application#maxProfiles). Optional; if omitted, no automatic profile is created. It is an error to name an application here that also appears in the profiles list.
 * @struct_end
 */

/**
 * @struct_partial ElementsUserCreateResponse
 * @member {String} [id]
 * @member {String} [name]
 * @member {String} [email]
 * @member {String} [firstName]
 * @member {String} [lastName]
 * @member {String} [level]
 * @member {Bool} [active]
 * @member {String} [facebookId]
 * @member {String} [firebaseId]
 * @member {String} [appleSignInId]
 * @member {String} [primaryPhoneNb]
 * @member {Array[Struct.ElementsProfile]} [profiles]
 * @member {String} [password]
 * @member {Array[String]} [linkedAccounts]
 * @struct_end
 */

/**
 * @struct_partial ElementsUserLinkedAccountProfiles
 * @struct_end
 */

/**
 * @struct_partial ElementsUserLinkedAccountProfilesAp
 * @struct_end
 */

/**
 * @struct_partial ElementsUsernamePasswordSessionRequest
 * @member {String} userId The user ID.
 * @member {String} password The password.
 * @member {String} [profileId] The profile ID to assign to the session.
 * @member {String} [profileSelector] A query string to select the profile to use.
 * @member {String} [applicationNameOrId] The name or ID of an application whose primary profile should be attached to the session. Only used if profileId and profileSelector are not specified. If the application or the user's primary profile for it cannot be resolved, the session is created without a profile.
 * @struct_end
 */

/**
 * @struct_partial ElementsUserUid
 * @member {String} [scheme] The scheme id mapped associated with the OID value. Schemes prepended with dev.getelements are reserved.
 * @member {String} [id] The id associated with this scheme.
 * @member {String} [userId] The id of the user associated with this User UID.
 * @member {String} [verificationStatus] The verification status of this UID.
 * @struct_end
 */

/**
 * @struct_partial ElementsUserUpdatePasswordRequest
 * @member {String} oldPassword The user's current password.
 * @member {String} newPassword The user's updated password.
 * @member {String} [profileId] The user's profile id to assign the new session. Leave blank for no profile id.
 * @struct_end
 */

/**
 * @struct_partial ElementsUserUpdateRequest
 * @member {String} name
 * @member {String} email
 * @member {String} level
 * @member {String} [primaryPhoneNb]
 * @member {String} [firstName]
 * @member {String} [lastName]
 * @member {String} [password] The user's plaintext password, only to be provided in POST/PUT requests in the User Resource REST API interface. In the future, a dedicated REST API model may be constructed instead of using a direct User model.
 * @struct_end
 */

/**
 * @struct_partial ElementsVault
 * @member {Struct.ElementsUser} user The User associated with this Profile.
 * @member {String} displayName The display name given to this vault.
 * @member {Struct.ElementsVaultKey} key The Vault's key. The vault secures each vault with this key.
 * @member {String} [id] The system assigned unique id of the vault.
 * @struct_end
 */

/**
 * @struct_partial ElementsVaultKey
 * @member {String} algorithm Specifies the private key encryption algorithm used to secure the vault.
 * @member {String} publicKey The public key portion of the vault key.
 * @member {String} privateKey The private key portion of the vault key.
 * @member {Bool} [encrypted] The flag to indicate if the key is encrypted or not.
 * @member {Struct.ElementsVaultKeyEncryption} [encryption] The Vault's encryption metadata. This is specific to the encryption type used.
 * @struct_end
 */

/**
 * @struct_partial ElementsVaultKeyEncryption
 * @struct_end
 */

/**
 * @struct_partial ElementsVersion
 * @member {String} [version]
 * @member {String} [revision]
 * @member {String} [timestamp]
 * @struct_end
 */

/**
 * @struct_partial ElementsWallet
 * @member {Struct.ElementsUser} user The User associated with this Profile.
 * @member {Struct.ElementsVault} vault
 * @member {String} displayName The name given to this wallet.
 * @member {String} api The protocol used wiht this wallet.
 * @member {Array[String]} networks The networks associated with this wallet.
 * @member {Array[Struct.ElementsWalletAccount]} accounts The list of account pairs included in this wallet.
 * @member {String} [id] The system assigned unique id of the wallet.
 * @member {Real} [preferredAccount] The default account. Must not be larger than the count of identities.
 * @struct_end
 */

/**
 * @struct_partial ElementsWalletAccount
 * @member {String} address The Wallet Address - id public identity. Required.
 * @member {String} [privateKey] The Wallet Account - id private identity. May be null if the wallet is for receive only.
 * @member {Bool} [encrypted] Indicates if this identity is encrypted.
 * @struct_end
 */

/**
 * @struct_partial ElementsRequest
 * @desc The in-flight HTTP request, handed to every callback as its third argument.
 * Call `retry()` on it to send the same request again - useful from a response hook that
 * has just refreshed a credential. `get_callback()` returns the callback it will invoke.
 * @member {Real} attempts How many times this request has been sent, including retries.
 * @struct_end
 */

