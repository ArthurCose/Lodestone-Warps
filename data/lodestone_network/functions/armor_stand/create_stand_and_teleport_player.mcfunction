summon minecraft:armor_stand ~ ~ ~ {Tags: ["lodestone_teleporter"], Marker: true, Invisible: true}

# need to execute teleport as teleporter, otherwise it despawns when it gets far away
execute as @e[tag=lodestone_teleporter,limit=1] run function lodestone_network:armor_stand/teleport

xp add @p[tag=lodestone_user] -1 levels
