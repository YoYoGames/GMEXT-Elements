## IMPORTANT

- This extension requires GameMaker **2024.11** or later.
- Pure GML - there are no native libraries, so it works with **all exports**.
- The REST client is generated from the Elements OpenAPI specification with [GM-OpenAPIGenerator](https://github.com/YoYoGames/GM-OpenAPIGenerator).
- Set the **Server URL** extension option to your deployment's REST base URL, including its path prefix (for a stock Elements instance that is `https://<host>/api/rest`). An incorrect value returns `404` on every call.

## CHANGES SINCE ${releaseOldVersion}

https://github.com/YoYoGames/GMEXT-Elements/compare/${releaseOldVersion}...${releaseNewVersion}

## DESCRIPTION

This GameMaker extension brings the full power of the **Namazu Elements Core API** directly into your GameMaker projects - turning what is normally a heavy backend integration into a clean set of GML-friendly functions. Instead of spending weeks building authentication, player profiles, cloud saves, inventory, leaderboards, matchmaking, missions and live notifications from scratch, you can plug in a proven backend and start shipping features immediately. It is ideal for studios that want modern online functionality, and the ability to scale it, without becoming a backend engineering team - while still keeping gameplay logic inside GameMaker and letting Elements handle the infrastructure.

## FEATURES

- **GameMaker-native wrapper:** simple GML calls that map to Elements endpoints - no wrestling with raw REST requests.
- **Player identity & sessions:** username/password and OAuth2/OIDC session flows, with tokens stored once and injected into every request that needs them.
- **Core live-game backend modules:** profiles and users, cloud save data, items and inventory, missions, progress and rewards, and metadata specs.
- **Competitive & social systems:** leaderboards, ranks and scores, plus followers and friends-style social graph features.
- **Matchmaking & matches:** services to support online play loops and session-based gameplay, including the realtime Crossfire client.
- **Live ops hooks:** notifications and schedules, plus health and version endpoints for operating and updating your game more safely.
- **Commerce support:** receipt validation for Apple, Google Play, Steam, Facebook and Oculus, connecting purchases to in-game rewards.
- **Optional advanced capabilities:** wallets, vaults and smart contracts for projects that need multi-chain features.
- **Typed and validated:** every schema is a GML constructor with a matching validator, and every endpoint documents its callback signature.

## DOCUMENTATION

The full API reference ships in three forms:

- the [repository wiki](https://github.com/YoYoGames/GMEXT-Elements/wiki), one page per REST resource;
- an offline HTML copy included in the extension asset;
- Feather annotations on every generated function and struct, so the IDE completes and type-checks calls as you write them.

Start with the **GML Wrapper Structure** guide - every endpoint follows the same async, callback-based shape, and once that is clear the whole API reads the same way.
