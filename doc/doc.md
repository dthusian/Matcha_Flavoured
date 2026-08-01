# dthusian's Matcha Flavoured Fork Guide

Since this datapack is a derivative of Klei_Wright's Matcha Flavoured datapack, this documentation applies to both versions. Any changes specific to dthusian's fork will be labelled (dthusian) and changes specific to the official Klei's Matcha Flavoure will be labelled (Klei).

This guide will have spoilers. If you don't like that, you can try using the in-game advancements page. This has a basic progression tree that you can use as a guide.

## General

- (Klei) The day is 3x longer, now 72000 ticks (60 minutes) instead of 24000 (20 minutes).
- Hunger has been removed. Sprinting and eating are always possible. Food now restores health instead of hunger.
- Crystal hearts have been added. When consumed, they increase maximum health by 1 heart, up to a maximum of 30 hearts total.
  - (Klei) Crystal hearts are automatically consumed when obtained.
  - (dthusian) Crystal hearts may be consumed by right clicking with them.
- On death, when a player has a crystal heart, their maximum health decreases by 1 heart, down to a minimum of 10 hearts.
  - (dthusian) A crystal heart item is dropped at the location of death. This item is invulnerable and glowing, so it should not be difficult to find.
- Entering water in cold biomes inflicts a freeze-like effect.

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

## Furnaces

The combo of furnace, blast furnace, and smoker have been overhauled in Matcha Flavoured. They have been replaced with:
- the mud kiln, an early-game furnace that can smelt copper and some basic recipes (e.g. smooth stone, glass)
- the blast furnace, a furnace that can smelt all ores and _reverses_ basic recipes (i.e. smooth stone → stone → cobblestone)
- the oven, a furnace that can process all food recipes and basic recipes

Additionally, recipes have been added for the blast furnace:
- Cobblestone → gravel
- Gravel → sand

## Mining

- Lapis ore above deepslate has been replaced with quartz ore.
- Redstone ore has been replaced with sulfur ore. Sulfur is equivalent to gunpowder.
  - Above deepslate, it becomes sulfurous quartz ore which drops quartz and maybe sulfur.
- Emerald ore has been replaced with silver ore.
- Blocks of raw ore can be smelted directly.

## Tools and Enchanting

- Experience points have been removed. Using the anvil is free.
  - There is also no limit on how many times a tool can be repaired.
- Enchanting tables have been removed.
- Enchanted books are renamed to hell-bound books and are craftable.
- You can make armor out of either tattered leather or sturdy leather. These are considered different materials.
- New alloys have been added. Like netherite, these are applied using the smithing table and an upgrade template.
  - In the material table, composition and applied only apply to alloys.
- Certain materials have "intrinsics" which are basically enchantments or extra effects applied to items crafted out of the material.
- (Klei) Bronze ingots are instead called Hepatizon, and Shakudo tools are instead called Palatinate.

### Alloy Reference

| Material  | Applied on | Composition                  |
|-----------|------------|------------------------------|
| Bronze    | Copper     | 7 copper + 1 silver + 1 gold |
| Shakudo   | Copper     | 7 copper + 3 gold            |
| Electrum  | Diamond    | 4 silver + 4 gold            |
| Steel     | Iron       | 1 iron (note 1)              |
| Adamant   | Diamond    | 4 adamant scrap + 4 gold     |

Notes:
1. Steel is made by blasting iron. It takes 160 seconds to perform this recipe, instead of the normal 10 seconds. This is equivalent to the duration of 2 pieces of coal.

### Stats Reference

| Material | Tool Speed      | Tool Durability    | Sword Damage | Sword Speed | Axe Damage | Axe Speed |
|----------|-----------------|--------------------|--------------|-------------|------------|-----------|
| Wood     | 2 (Pick: 3)     | 200 (Pick: 600)    | 4            | 1.6         | 7          | 0.8       |
| Copper   | 6               | 350                | 5            | 1.6         | 9          | 0.8       |
| Iron     | 7 (Shov/hoe: 8) | 500                | 6            | 1.6         | 9          | 0.9       |
| Steel    | 8               | 3000               | 6            | 0.9         | 9          | 0.7       |
| Gold     | 12              | 350                | 4            | 1.6         | 7          | 1         |
| Bronze   | 15              | 1000               | 6            | 1.9         | 9          | 1.1       |
| Shakudo  | 9               | 1000               | 6            | 1.6         | 9          | 1         |
| Diamond  | 9               | 2500               | 7            | 1.6         | 9          | 1         |
| Electrum | 12              | 3000               | 7            | 1.9         | 9          | 1.2       |
| Adamant  | 15              | 5000               | 8            | 1.6         | 10         | 1         |

Armor values are armor/armor toughness/kb resist.
| Material         | Armor Durability | Helmet | Chestplate | Leggings | Boots |
|------------------|------------------|--------|------------|----------|-------|
| Tattered Leather | 200              | 1      | 3          | 2        | 1     |
| Sturdy Leather   | 350              | 2      | 4          | 3        | 2     |
| Chainmail        | 300              | 2      | 6          | 5        | 2     |
| Copper           | 200              | 2      | 4          | 3        | 1     |
| Iron             | 350              | 2      | 4          | 3        | 1     |
| Steel            | 1000             | 2/1/1  | 6/2/2      | 5/1/1    | 2/1/1 |
| Gold             | 200              | 2      | 5          | 3        | 2     |
| Bronze           | 500              | 2      | 6          | 5        | 2     |
| Shakudo          | 500              | 2      | 6          | 5        | 2     |
| Diamond          | 800              | 3/2    | 8/2        | 6/2      | 3/2   |
| Electrum         | 1000             | 3/2    | 8/2        | 6/2      | 3/2   |
| Adamant          | 1500             | 3/3/1  | 8/3/1      | 6/3/1    | 3/3/1 |

### Intrinsics Reference

For armor, if stats differ between different pieces, the stat is listed as helment/chestplate/leggings/boots.

| Material         | Armor Intrinsic    | Tool Intrinsic             | Axe Intrinsic     | Sword Intrinsic          |
|------------------|--------------------|----------------------------|-------------------|--------------------------|
| Tattered Leather | +1 Blocks Safe Fall | -                         | -                 | -                        |
| Sturdy Leather   | +1 Blocks Safe Fall, Proj Prot 2/4/3/2, FFall 3, Traversal 1 | - | - | -                       |
| Wood             | -                  | None                       | None              | None                     |
| Chainmail        | Thorns 3           | -                          | -                 | -                        |
| Copper           | None               | None                       | None              | None                     |
| Iron             | None               | None                       | None              | None                     |
| Steel            | Blast Prot 2/4/3/2 | None                       | Knockback 2       | Knockback 1, Blocking (note 1) |
| Gold             | Fire Prot 2/3/2/2  | Fortune 1                  | Fortune 1, Looting 1 | Looting 1             |
| Bronze           | +0.008 speed       | +0.005 speed               | +0.005 speed      | +0.01 speed, Riposte 1   |
| Shakudo          | Cleansing          | Silk Touch                 | Silk Touch        | Sweep 1, Sanguine        |
| Diamond          | None               | None                       | None              | None                     |
| Electrum         | Apotropiac         | Fortune 3, Lesser Warding  | Smite 2, Fortune 2, Looting 2, Warding | Smite 2, Looting 2, Warding |
| Adamant (note 2) | Prot 1, Unbr 2, +2 Hearts | Unbr 2, +2 Hearts   | Unbr 2, +2 Hearts | Unbr 2, +2 Hearts        |

Notes:
1. You can block without a shield like in pre-1.9 vanilla.
2. Adamant max hp works like this:
  - Your total level of divinity (called internally) is determined by how many adamant pieces of armor you are wearing and whether or not you are holding a piece of divine armor
  - For each level of divinity, you obtain 2 bonus hearts.
  - Bonus hearts behave like hearts from absorption and cannot be restored with food or effects. Instead, they are automatically restored on a global 30s timer, or 15s if you have level 5 (full adamant armor and holding an adamant tool). 

### Enchantments Reference

TODO: enchanted book reference.

## Food and Cooking

The brewing system has been removed since it isn't currently possible to change brewing recipes with datapacks. Instead, potion effects can be obtained from the cooking system.
- Raw food cannot be eaten. They can be charred in a mud kiln if you lack other cooking options.
- Food can be cooked normally on a campfire or oven.

TODO: cooking system reference

## Building

- Copper can be weathered by crafting it with a water bottle.
- Slabs can be converted back into their original blocks via crafting.
- Most building-material-items (e.g. prismarine shard, mud brick) have been made unobtainable in favour of making the derivative blocks craftable from the basic block.
- Prismarine has been renamed to malachite.

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

## Redstone

Redstone has been replaced with electric wire, craftable with 2 copper ingots.

Additionally, several items have been renamed. This is purely a rename and does not affect their function or recipe.
- Redstone block → Electric block
- Redstone comparators → Electric comparators
- Redstone repeater → Electric repeater
- Redstone torch → Electric inverter
- Target block → Copper eye
- Redstone lamp → Electric lamp