# dthusian's Matcha Flavoured Fork Guide

Since this datapack is a derivative of Klei_Wright's Matcha Flavoured datapack, this documentation applies to both versions. Any changes specific to dthusian's fork will be labelled (dthusian) and changes specific to the official Klei's Matcha Flavoure will be labelled (Klei).

This guide will have spoilers. If you don't like that, you can try using the in-game advancements page. This has a basic progression tree that you can use as a guide.

Changes are split up into major and minor changes.

# Major Changes

## General

- (Klei) The day is 3x longer, now 72000 ticks (60 minutes) instead of 24000 (20 minutes).
- Hunger has been removed. Sprinting and eating are always possible. Food now restores health instead of hunger.
- Crystal hearts have been added. When consumed, they increase maximum health by 1 heart, up to a maximum of 30 hearts total.
  - (Klei) Crystal hearts are automatically consumed when obtained.
  - (dthusian) Crystal hearts may be consumed by right clicking with them.
- On death, when a player has a crystal heart, their maximum health decreases by 1 heart, down to a minimum of 10 hearts.
  - (dthusian) A crystal heart item is dropped at the location of death. This item is invulnerable and glowing, so it should not be difficult to find.

## Early-game

Early-game progression has been changed substantially. Here's a brief guide.

(TODO: add recipe images)
- Get wood
- Craft a wooden hoe and break grass with it to collect grass.
- Crafting kindling
- Either craft tinder, or find gravel and craft a firestarter with flint.
- Make a campfire by placing kindling and lighting it with tinder or a firestarter.
- Dry short grass using the campfire into.
- Craft short dry grass into packed mud and mud bricks.
- Craft a mud kiln.
- Use your mud kiln to smelt copper ore, or smelt cobblestone into limestone and smooth stone.
- Use smooth stone and stone bricks to craft a blast furnace, which can smelt the remaining metals.

## Mining

- Lapis ore above deepslate has been replaced with quartz ore.
- Redstone ore has been replaced with sulfur ore. Sulfur is equivalent to gunpowder.
  - Above deepslate, it becomes sulfurous quartz ore which drops quartz and maybe sulfur.
- Emerald ore has been replaced with silver ore.

## Tools and Enchanting

- Experience points have been removed. Using the anvil is free.
  - There is also no limit on how many times a tool can be repaired.
- Enchanting tables have been removed.
- Enchanted books are renamed to hell-bound books and are craftable.
- New alloys have been added. Like netherite, these are applied using the smithing table and an upgrade template. These also provide an intrinsic enchantment to tools and armor made from them.

| Alloy name | Tool Material Name | Applied on | Composition | Intrinsic |
|--|--|--|--|--|
| (Klei) Hepatizon<br/>(dthusian) Bronze | Bronze | Copper | 7 copper + 1 silver + 1 gold | TODO |
| Shakudo | (Klei) Palatinate<br/>(dthusian) Shakudo | Copper | 7 copper + 3 gold | TODO |
| Electrum | Electrum | Gold | 4 silver + 4 gold | Fortune/Looting |
| Steel | Steel | Iron | See notes | TODO |
| Adamant | Adamant | Diamond | 4 adamant scrap + 4 gold | TODO |

TODO: enchanted book reference.

## Cooking

The brewing system has been removed since it isn't currently possible to change brewing recipes with datapacks. Instead, potion effects can be obtained from the cooking system.

TODO: cooking system reference

## Villagers

- All villages now spawn as abandoned villages with no villagers present.
  - (Klei) Villages play creepy sounds wnen the player is inside of them.
- Villagers have had their trades completely overhauled.

TODO: tables documenting villager trades

## Hostile Mobs

- (Klei) Zombies now move faster.
- (dthusian) Zombies have some knockback resistance and have a higher chance of spawning reinforcements. 
- Skeletons now have 10 health (5 hearts)
- Creepers now have 16 health (8 hearts)
- Cave spiders now have 4 health (2 hearts)
- Cave spiders have increased movement speed
- Husks have attack damage increased to 7 (3.5 hearts) and slightly increased speed.
- Withers now drop divine favours instead of nether stars. They can still be used for beacons,
  but can also be broken up into 9 divine fragments.

# Minor Changes

##  General

- Redstone has been replaced with electric wire, craftable with 2 copper ingots.

## Renamed Items

Renamed means only the name has changed, mechanics have largely been left unchanged. 

- Redstone block → Electric block
- Redstone comparators → Electric comparators
- Redstone repeater → Electric repeater
- Redstone torch → Electric inverter
- Target block → Copper eye
- Redstone lamp → Electric lamp
- Honeycomb → Wax
- Enchanted Book → Hell-bound book