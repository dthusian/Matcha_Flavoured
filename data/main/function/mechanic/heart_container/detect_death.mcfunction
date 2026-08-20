execute as @a if score @s deaths >= 1 deaths run function main:mechanic/heart_container/hpdown
execute as @a[scores={time_since_respawn=0},tag=RespawnLowHealth] run attribute @s minecraft:max_health base set 10
execute as @a[scores={time_since_respawn=1..},tag=RespawnLowHealth] run attribute @s minecraft:max_health base set 20
execute as @a[scores={time_since_respawn=1..},tag=RespawnLowHealth] run tag @s remove RespawnLowHealth