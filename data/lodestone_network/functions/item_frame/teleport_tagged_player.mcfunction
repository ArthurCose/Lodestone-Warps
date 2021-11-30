execute store result storage lodestone_network:temp position[0] double 1 run data get entity @s Item.tag.LodestonePos.X
execute store result storage lodestone_network:temp position[1] double 1 run data get entity @s Item.tag.LodestonePos.Y
execute store result storage lodestone_network:temp position[2] double 1 run data get entity @s Item.tag.LodestonePos.Z

summon minecraft:armor_stand ~ ~ ~ {Tags: ["lodestone_teleporter"], Marker: true, Invisible: true}
# need to execute teleport as teleporter, otherwise it despawns when it gets far away
execute as @e[tag=lodestone_teleporter,limit=1] run function lodestone_network:armor_stand/teleport
kill @e[tag=lodestone_teleporter]

xp add @p[tag=lodestone_user] -1 levels
