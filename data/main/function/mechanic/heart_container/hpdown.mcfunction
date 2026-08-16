# heart container respawn 
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
execute as @a[scores={deaths=1..,Hearts=20}] run tag @s add RespawnLowHealth
execute at @a[scores={deaths=1..,Hearts=22..}] run scoreboard players remove @s Hearts 2
execute at @a[scores={deaths=1..,Hearts=20..}] run function main:mechanic/heart_container/set_max_hp
execute at @a[scores={deaths=1..}] run scoreboard players set @s deaths 0
execute as @a[scores={time_since_respawn=0},tag=RespawnLowHealth] run attribute @s minecraft:max_health base set 10
execute as @a[scores={time_since_respawn=1},tag=RespawnLowHealth] run attribute @s minecraft:max_health base set 20
execute as @a[scores={time_since_respawn=1},tag=RespawnLowHealth] run tag @s remove RespawnLowHealth