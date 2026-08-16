advancement revoke @s only main:mechanics/heart_container_obtained
scoreboard players add @s Hearts 2
effect give @s regeneration 3 10 true
playsound minecraft:item.totem.use player @a ~ ~ ~ .5 0 0
function main:mechanic/heart_container/set_max_hp