tag @p[distance=..5,sort=nearest] add lodestone_closest_player

summon minecraft:armor_stand ~ ~ ~ {Tags: ["lodestone_teleporter"], Marker: true, Invisible: true}

tag @s add lodestone_frame
# need to execute teleport as teleporter, otherwise it despawns when it gets far away
execute as @e[tag=lodestone_teleporter,limit=1] run function lodestone_network:armor_stand/teleport
tag @s remove lodestone_frame

data modify entity @s ItemRotation set value 0b
