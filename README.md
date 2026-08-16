# dthusian's Matcha Flavoured Fork

Derivative of Klei_Wright's [Matcha Flavoured](https://modrinth.com/datapack/matcha-flavoured) Datapack, with some fixes and changes relevant for my Minecraft worlds.

Changes:
- Make crystal hearts manually consumed instead of consumed on pickup
  - On a multiplayer server, it would be nice to be able to save a crystal heart for a friend instead of being forced to eat it immediately.
- Make crystal hearts drop on death
  - On my multiplayer servers, we often kill each other for fun. Losing a heart permanently for that would suck.
  - Dropping the crystal heart also creates a corpse-run mission that isn't absolutely critical to do immediately (which would be the case for gravestones), but still provides a decent reward.
- Dying at 10 maximum hearts respawns at 5/10 hearts
  - Currently, dying at 10 maximum hearts is effectively the same as vanilla Minecraft with keep_inventory enabled, which incurs no penalty. This adds a small cost to that.
- The fast zombies situation
  - The fork targeting v1.03 nerfed zombie speed (0.4->0.3) and added some knockback resistance (0->0.25)
  - Pretty much the universal response to Klei's fast zombies in v1.03 was negative, so Klei reduced their speed (0.4->0.34 normal, 0.4->0.35 hard) and health (20->15) in v1.11 and onwards.
  - We decided to keep our speed values and the knockback resistance, while keeping the health changes
- Add better currency denominations.
  - Obol has been replaced with Gold coin.
  - Added silver and copper coins.
  - 24 silver coins = 1 gold coin
  - 24 copper coins = 1 silver coin
  - Fishing trades have been updated, mostly in line with their original values
    - 1-star fish: 2 silver
    - 2-star fish: 3 silver
    - 3-star fish: 6 silver
    - 4-star fish: 1 gold
  - Weaponsmith renamed to exchanger and has trades to convert between the coins.

Bug fixes:
- Delegate the adding-back-XP part of the anvil changes to a different Fabric mod, as the current implementation is scuffed.
  - Removing XP after 15s will confuse players that need to go AFK having the anvil table open, or spend some time thinking about what to name their tool.
- Fix a bug where picking up multiple water bottles in 1 tick causes some to be lost. 
- Fix the overridden `minecraft:day` timeline to include time points for day/night/noon/etc.
  - I just realized this change was made not to re-fix sleeping, but to allow sleeping to pass time at any time.
- Remove crafting-table recipes for Paneer Makhani and Green Curry
  - They have the exact same name but different effects compared to the furnace versions
  - Given that the crafting-table versions don't use translation keys and use custom model data instead of
    item model components, they seem to be older versions that weren't intended to be in the final version.
- Fix wheat seeds not dropping from tall grass.
  - This looks like a bug because the loot table entry that drops seeds is below the one drops short grass, and the short grass one will always be matched if the seed one is.

Yeets:
- Removed eerie sounds from villages
  - This is generally a good feature, but it makes villages annoying to inhabit even after excavating all the blocks because there is no way to remove a structure bounding box in survival.
- Removed the day-length extender. Day is back to being 24000 ticks.
- Instead of fast zombies, slow and reinforcement-spawning zombies
  - I didn't like the faster zombies. Instead, I changed zombies to have some knockback resistance, and kept only some of their speed boost.

Wishlist:
- Add back vanilla village generation but without the villagers
- Add more gemstones
- Move everything out of the `minecraft` namespace if not needed
- Make grindstone leave intrinsics intact