# RivalSMP 2.0.0

Paper 1.21.11 plugin, Java 21. Build using GitHub Actions (no local Maven required).

## GitHub build
1. Extract this ZIP.
2. Upload the contents of this folder to the repository root (including hidden `.github` folder).
3. Commit the upload.
4. Open Actions → Build RivalSMP.
5. Download `RivalSMP-JAR` from the successful run's Artifacts section.
6. Put the JAR in the server's `plugins` folder and restart.

## Commands
- `/rivalsmp help`
- `/rivalsmp list`
- `/rivalsmp recipes`
- `/rivalsmp recipe <weapon>`
- `/rivalsmp give <player> <weapon>` (admin)
- `/rivalsmp announce <message>` (admin)
- `/rivalsmp allies add <player>`
- `/rivalsmp allies remove <player>`
- `/rivalsmp allies list`
- `/rivalsmp ammo <amount>` (admin, sets AutoBow magazine)
- `/rivalsmp reload` (admin)

## Ability controls
- Hold a weapon and press **F** (swap offhand) to activate its special ability.
- Blood Sword: Heartbreaker targets the nearest visible player within 12 blocks. Soul Feast heals on hit; Battle Instinct grants Strength.
- DoomsHammer: F dashes; every configured number of player hits activates Thunderfall.
- Scythe: critical falling hits create lightning; every third hit grants Speed II and Strength II; F activates Catastrophe.
- KillerKnife: every third hit adds combo damage; attacks from behind add backstab damage; F throws two execution knives.
- AutoBow: F starts its timed automatic burst; sneaking + right-click fires one magazine arrow. Admin sets magazine with `/rivalsmp ammo <amount>`.
- CrossBow: F fires three sonic rays.
- BanHammer: a player kill while holding it bans the defeated player via the server's `ban` command, unless they have the configured protection permission.

## Crafting
All seven recipes are registered as shaped 3x3 recipes. `/rivalsmp recipes` lists them and `/rivalsmp recipe <weapon>` prints each pattern. Ingredients are based on the agreed recipe concepts. BanHammer uses Nether Stars, Netherite Blocks, a Netherite Axe and a Wither Skeleton Skull.

## Important implementation notes
This is a first feature-complete gameplay pass for weapon combat and commands, not a finished implementation of every earlier design idea. Ritual altar structures, GUI recipe editor, revive-book flow, persistent ally/ammo/heart storage, custom 3D resource-pack model integration, and ally immunity for every area effect are not implemented in this build. Verify the Paper 1.21.11 build in GitHub Actions before installing; the artifact is not precompiled here.
