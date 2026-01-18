/**
 * @module home 
 * @title Elements
 * @desc This GameMaker extension brings the full power of the **Namazu Elements Core API** directly into your GameMaker projects—turning what's normally a heavy backend integration into a clean set of GML-friendly functions. Instead of spending weeks building authentication, player profiles, cloud saves, inventory, leaderboards, matchmaking, missions, and live notifications from scratch, you can plug in a proven backend and start shipping features immediately. It's ideal for studios that want modern online functionality (and the ability to scale it) without becoming a backend engineering team—while still keeping control of gameplay logic inside GameMaker and letting Elements handle the infrastructure. 
 * 
 * [[Note: This documentation is under development.]]
 * 
 * ## Extension's Features
 * 
 * * **GameMaker-native wrapper:** Simple GML calls that map to Elements endpoints—no wrestling with raw REST requests. 
 * * **Player identity & sessions:** OAuth2/OIDC-based login/session flows made engine-friendly. 
 * * **Core live-game backend modules:** Profiles/users, cloud save data, items/inventory, missions/progress/rewards, and metadata/specs. 
 * * **Competitive & social systems:** Leaderboards/ranks/scores plus followers/friends-style social graph features. 
 * * **Matchmaking & matches:** Services to support online play loops and session-based gameplay. 
 * * **Live ops hooks:** Notifications/schedules and health/version endpoints for operating and updating your game more safely. 
 * * **Commerce support:** Receipt validation flows (e.g., Apple IAP) to connect purchases to in-game rewards. 
 * * **Optional advanced capabilities:** "Omni" modules for wallets/vaults/smart contracts if your project needs multi-chain features. 
 * 
 * @section Guides
 * @desc 
 * Before you start using this extension make sure to check the ${page.api_structure} for a better understanding of its features.
 * 
 * The following are the available guides for the Elements extension:
 * 
 * @ref page.getting_started
 * 
 * @section_end
 * 
 * @section Schemas
 * @desc The following are the schemas as used by the Elements API:
 * @ref module.elements_rest_schemas
 * @section_end
 * 
 * @section Modules
 * @desc These are the modules in the Elements extension:
 * @ref module.ios
 * @ref module.application
 * @ref module.auth
 * @ref module.blockchain
 * @ref module.deployment
 * @ref module.codegen
 * @ref module.follower
 * @ref module.friend
 * @ref module.item
 * @ref module.google
 * @ref module.index
 * @ref module.inventory
 * @ref module.invite
 * @ref module.largeobject
 * @ref module.leaderboard
 * @ref module.rank
 * @ref module.score
 * @ref module.match
 * @ref module.metadata
 * @ref module.mission
 * @ref module.progress
 * @ref module.reward_issuance
 * @ref module.schedule
 * @ref module.notification
 * @ref module.profile
 * @ref module.save_data
 * @ref module.session
 * @ref module.health
 * @ref module.version
 * @ref module.signup
 * @ref module.crossfire
 * @section_end
 * 
 * @module_end
 */

/**
 * @module elements_rest_schemas
 * @title Schemas
 * @desc This module contains the structs used by the Elements extension.
 * 
 * @section_struct
 * @ref Elements*
 * @section_end
 * @module_end
 */

/**
 * @module ios
 * @title iOS
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_ios_*
 * @section_end
 * @module_end
 */

/**
 * @module application
 * @title Application
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_application_*
 * @section_end
 * @module_end
 */

/**
 * @module auth
 * @title Authentication
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_auth_*
 * @section_end
 * @module_end
 */

/**
 * @module blockchain
 * @title Blockchain
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_blockchain_*
 * @section_end
 * @module_end
 */

/**
 * @module deployment
 * @title Deployment
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_deployment_*
 * @section_end
 * @module_end
 */

/**
 * @module codegen
 * @title Codegen
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_codegen_*
 * @section_end
 * @module_end
 */

/**
 * @module follower
 * @title Follower
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_followee_*
 * @ref elements_follower_*
 * @section_end
 * @module_end
 */

/**
 * @module friend
 * @title Friend
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_friend_*
 * @section_end
 * @module_end
 */

/**
 * @module item
 * @title Item
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_item_*
 * @section_end
 * @module_end
 */

/**
 * @module google
 * @title Google
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_google_*
 * @section_end
 * @module_end
 */

/**
 * @module index
 * @title Index
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_index_*
 * @section_end
 * @module_end
 */

/**
 * @module inventory
 * @title Inventory
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_inventory_*
 * @section_end
 * @module_end
 */

/**
 * @module invite
 * @title Invite
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_invite_*
 * @section_end
 * @module_end
 */

/**
 * @module largeobject
 * @title LargeObject
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_large_object_*
 * @section_end
 * @module_end
 */

/**
 * @module leaderboard
 * @title Leaderboard
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_leaderboard_*
 * @section_end
 * @module_end
 */

/**
 * @module rank
 * @title Rank
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_rank_*
 * @section_end
 * @module_end
 */

/**
 * @module score
 * @title Score
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_score_*
 * @section_end
 * @module_end
 */

/**
 * @module match
 * @title Match
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_match_*
 * @section_end
 * @module_end
 */

/**
 * @module metadata
 * @title Metadata
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_metadata_*
 * @section_end
 * @module_end
 */

/**
 * @module mission
 * @title Mission
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_mission_*
 * @section_end
 * @module_end
 */

/**
 * @module progress
 * @title Progress
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_progress_*
 * @section_end
 * @module_end
 */

/**
 * @module reward_issuance
 * @title Reward Issuance
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_reward_issuance_*
 * @section_end
 * @module_end
 */

/**
 * @module schedule
 * @title Schedule
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_schedule_*
 * @section_end
 * @module_end
 */

/**
 * @module notification
 * @title Notification
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_notification_*
 * @section_end
 * @module_end
 */

/**
 * @module profile
 * @title Profile
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_profile_*
 * @section_end
 * @module_end
 */

/**
 * @module save_data
 * @title Save Data
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_save_data_*
 * @section_end
 * @module_end
 */

/**
 * @module session
 * @title Session
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_session_*
 * @ref elements_mock_session_*
 * @section_end
 * @module_end
 */

/**
 * @module health
 * @title Health
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_health_*
 * @section_end
 * @module_end
 */

/**
 * @module version
 * @title Version
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_version_*
 * @section_end
 * @module_end
 */

/**
 * @module signup
 * @title Signup
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_signup_*
 * @section_end
 * @module_end
 */

/**
 * @module user
 * @title User
 * @desc
 * 
 * @section_func Functions 
 * @ref elements_user_*
 * @section_end
 * @module_end
 */