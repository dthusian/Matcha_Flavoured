# dthusian's Matcha Flavoured Fork

Derivative of Klei_Wright's [Matcha Flavoured](https://modrinth.com/datapack/matcha-flavoured) Datapack, with some fixes and changes relevant for my Minecraft worlds.

Changes:
- Make alloy names consistent, and rename some of them
  - Hepatizon → Bronze
  - Palatinate → Shakudo
  - The only gameplay issue I see with this is that the advancements are not clear that Hepatizon is Bronze and Shakudo is Palatinate. So I made the terminology consistent to ensure it is clear.
- Make crystal hearts manually consumed instead of consumed on pickup
  - On a multiplayer server, it would be nice to be able to save a crystal heart for a friend instead of being forced to eat it immediately.
- Make crystal hearts drop on death
  - On my multiplayer servers, we often kill each other for fun. Losing a heart permanently for that would suck.
  - Dropping the crystal heart also creates a corpse-run mission that isn't absolutely critical to do immediately (which would be the case for gravestones), but still provides a decent reward.
- (TOOO) Dying at 10 maximum hearts respawns at 5/10 hearts
  - Currently, dying at 10 maximum hearts is effectively the same as vanilla Minecraft with keep_inventory enabled, which incurs no penalty. This adds a small cost to that.
- Instead of fast zombies, slow and reinforcement-spawning zombies
  - I didn't like the faster zombies. Instead, I changed zombies to have some knockback resistance and a much higher chance of spawning reinforcements

Bug fixes:
- Delegate the adding-back-XP part of the anvil changes to a different Fabric mod, as the current implementation is scuffed.
  - Removing XP after 15s will confuse players that need to go AFK having the anvil table open, or spend some time thinking about what to name their tool.
- Fix a bug where picking up multiple water bottles in 1 tick causes some to be lost. 
- Fix the overridden `minecraft:day` timeline, fixing sleep issues.

Yeets:
- Removed eerie sounds from villages
  - This is generally a good feature, but it makes villages annoying to inhabit even after excavating all the blocks because there is no way to remove a structure bounding box in survival.
- Removed the day-length extender. Day is back to being 24000 ticks.
- (WIP) Instead of fast zombies, slow and reinforcement-spawning zombies
  - I didn't like the faster zombies. Instead, I changed zombies to have some knockback resistance, and kept only some of their speed boost.

Wishlist:
- Add back vanilla village generation but without the villagers
- More currency denominations
- Add more gemstones
- Move everything out of the `minecraft` namespace if not needed