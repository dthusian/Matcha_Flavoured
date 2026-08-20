# Matcha tool speed scaling sucks and here's why

Let me preface this by saying that everyone plays Minecraft differently and there are plenty of people for which the current system
works fine. But I believe there is a significant number of people for which the tool scaling does suck, and this is what this document aims to address.

## Why does breaking even matter?

I consider myself both a technical player and a builder. On the building side, if I want to make something reasonably sized, I need to
get materials for it, which can take a while. I could build farms for those items, but oftentimes the required amount is not large
enough to justify making a farm, and also this is a datapack where you shouldn't need to build farms, so I wanted to engage with
that. Gathering building materials is a function of how fast your breaking speed is, so getting fast tools is one of the first priorities
for me when starting a server.

## Intro: How breaking works

These details are available by reading mostly-reliable sources of information such as [minecraft.wiki](https://minecraft.wiki/w/Breaking) or by a
perusal of the source code. Of course, a casual player would never look at these equations, but they are subject to the equations all the same.

Every tool has a base speed. This is visible in Matcha in the tool's tooltip and the blue number next to the pickaxe icon. Here's the breaking speed
for every material in Vanilla and Matcha.

| Material  | Matcha          | Vanilla  |
| --------- | --------------- | -------- |
| Wood      | 2 (Pickaxe: 3)  | 2        |
| Stone     |                 | 4        |
| Copper    | 6               | 5        |
| Iron      | 7 (Shov/hoe: 8) | 6        |
| Steel     | 8               |          |
| Gold      | 12              | 12       |
| Hepatizon | 15              |          |
| Shakudo   | 9               |          |
| Diamond   | 9               | 8        |
| Electrum  | 12              |          |
| Adamant   | 15              | 9        |

Efficiency adds speed to the base speed equal to `(level^2) + 1`

| Efficiency | Speed Increase |
| ---------- | -------------- |
| 1          | +2             |
| 2          | +5             |
| 3          | +10            |
| 4          | +17            |
| 5          | +26            |

Haste or conduit power (which doesn't stack between the two) adds a multiplier, applied after efficiency

| Effect        | Multiplier |
| ------------- | ---------- |
| Haste 1       | 1.2x       |
| Haste 2       | 1.4x       |
| Conduit Power | 1.2x       |

## Comparing tool scaling 

The first thing to note here is that efficiency is ridiculously powerful. This is because it scales with the square of the level, and the level going up
to 5 means you can get way higher gains from increasing efficiency than upgrading your tool's material.
The second thing to note is that getting efficiency in vanilla is really easy. You can get a maxed enchanting table or efficiency villager within the first
5 hours of playing, and that can get you efficiency 4 pretty easily (efficiency 5 in enchanting table is really rare, but coming two pickaxes can get you that as well). 
Enchanting setups are just diamonds, obsidian, leather, and sugarcane, available in most grassy biomes. A diamond pickaxe with efficiency 4 has mining speed `8 + 17 = 25`

In contrast, getting a similar level of breaking speed in Matcha is way way harder. The fastest material that isn't the endgame Adamant is Hepatizon, at a speed of 15,
however you need to visit a mountainous biome and find a rare silver ore. You can get haste 2 if you find a jungle and make brownies. 
A hepatizon pickaxe with haste 2 has `15 * 1.4 = 21` mining speed. There is no way to beat the vanilla efficiency 4 diamond pickaxe without
finding 9 divine fragments and making an efficiency 3 book, and even getting close to vanilla requires finding a mountain biome and a jungle biome,
probably many hours of exploration if not using external tools (which I imagine is counter to the casual mindset of Matcha).

In Matcha, efficiency 3 books require a divine favour (equal to 9 divine fragments), and some diamonds and other materials. I don't have exact numbers on
time required to get divine fragments, but if you have good equipment, some milk and dried kelp, you can raid ocean monuments to get 6 divine fragments per
monument on average, so 2 should be enough for an efficiency 3 book. However, without combining that book with one of Hepatizon or haste 2 brownies, you
cannot get close to vanilla either. A diamond pickaxe with efficiency 3 is `8 + 10 = 18`.

So essentially, you have to pick 2 of these options to get a 20+ mining speed setup:
- Silver from a mountainous biome
- Cocoa beans from a jungle
- 9 divine fragments

These yield the following tools:
- Silver + Cocoa `15 * 1.4 = 22`
- Cocoa + Divine `(8 + 10) * 1.4 = 27`
- Silver + Divine `15 + 10 = 25`

In summary, getting a mid-game fast mining speed tool requires a lot more time in Matcha than vanilla Minecraft. The best you can do requires a diamond pickaxe
with effiency 3, which requires 9 divine fragments.

## Insta-mining

Normally, there is a 6 game-tick (0.3s) delay between finishing breaking one block and starting to break the next block. However, if the tool's speed exceeds the 30 times 
hardness of the block mined, this 6gt delay no longer applies, allowing you to break 1 block per tick.

Insta-mining is the most powerful mechanic for levelling mountains and gathering chests upon chests of materials. For this example, we'll use stone because it
has a hardness of 1.5, which is very common for naturally generated stone-like blocks (tuff, andesite, diorite, granite). Instamining stone therefore requires
a tool speed of 45.

In vanilla, insta-mining stone requires a Diamond or Netherite pickaxe, efficiency 5, and haste 2. This requires an obscene amount of iron blocks, and defeating the wither. 
This grants a tool speed of `(8 + 26) * 1.4 = 47.6`. Pretty much an endgame setup, befitting of an endgame mechanic. 

However, in Matcha, insta-mining stone requires brownies, any tool with base speed 8 or higher (diamond works), and _36_ divine fragments.
This is the equivalent of 4 withers. Even though hepatizon and adamant have almost double the mining speed of diamond, efficiency basically wipes out that difference.
You cannot instamine stone with anything less than efficiency 5, the next best setup is adamant/hepatizon with efficiency 4 and haste 2, this gives you `(15 + 17) * 1.4 = 44.8`,
just shy of the 45 required.

## What now?

Basically, Matcha gives you worse tool speed for the same playtime beyond the early game, and makes insta-mining significantly harder to access. This is a problem for
builders because clearing areas and gathering materials strongly depends on your tool's mining speed. This is also antithetical to the design goals of Matcha Flavoured
as gathering materials by hand is the primary alternative to building farms to gather materials.

This isn't an insurmountable issue. There are many fixes that can be implemented easily:
- Make Prayer of Daedalus (eff 3, unbreaking 3) cheaper, maybe to 1 or 3 divine fragments
  - This makes all the setups mentioned above much cheaper to make
- Increase the base speed of Hepatizon or Adamant
  - 18 base speed and haste 2 = 25.2, matches vanilla eff 4 diamond
  - 16 base speed, haste 2, and efficiency 4 = 46.2, can instamine stone with eff 4
  - 23 base speed, haste 2, and efficiency 3 = 46.2, can instamine stone with eff 3
- Give brownies a stronger boost
  - 15 base speed, haste 3 = 24, almost matches vanilla eff 4 diamond
  - 15 base speed, efficiency 4, haste 3 = 51.2, can instamine stone with eff 4
  - 15 base speed, efficiency 3, haste 4 = 45, can instamine stone with eff 3

There are some fixes that are harder to implement but have potential advantages:
- Rework efficiency so there are more levels, and/or the boost is linear instead of quadratic.
  - I suspect the reason quadratic scaling was used is because the 6gt breaking delay means there is a lot of diminishing returns at higher breaking speeds.
  - A more complete fix would reqiure a client mod to change the breaking delay. As far as I know there is no method of changing this with a datapack or server plugin.

