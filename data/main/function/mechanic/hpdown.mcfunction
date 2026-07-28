execute at @a[scores={deaths=1..,Hearts=22..}] run summon item ~ ~ ~ {\
  Age:-32768s,\
  NoGravity:1b,\
  Invulnerable:1b,\
  Tags:["CrystalHeartHolder"],\
  Item:{\
    id:"minecraft:poisonous_potato",\
    components:{\
      "minecraft:item_model":"minecraft:heart_container",\
      "minecraft:item_name": {\
        "translate": "item.kleispack.crystal_heart"\
      },\
      "minecraft:rarity": "rare",\
      "minecraft:enchantment_glint_override": true,\
      "minecraft:consumable": {\
        "consume_seconds": 0.2,\
        "on_consume_effects": []\
      }\
    },\
    count:1\
  },\
  "Glowing":1b,\
}
execute at @a[scores={deaths=1..,Hearts=22..}] run scoreboard players remove @p Hearts 2
execute at @a[scores={deaths=1..,Hearts=20..}] run function main:mechanic/set_max_hp
execute at @a[scores={deaths=1..}] run scoreboard players set @p deaths 0