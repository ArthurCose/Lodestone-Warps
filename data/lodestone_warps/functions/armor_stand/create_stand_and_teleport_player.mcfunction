summon minecraft:armor_stand ~ ~ ~ {Tags: ["lodestone_teleporter"], Marker: true, Invisible: true}

# make sure we have a position stored, if it's unset it means the lodestone was destroyed
execute store success score $warp_valid lodestone_w run data get storage lodestone_warps:temp ItemTag.LodestonePos.X

execute if score $warp_valid lodestone_w matches 0 run tellraw @p[tag=lodestone_user] {"color": "red", "text": "Lodestone link broken"}

# need to execute teleport as teleporter, otherwise it despawns when it gets far away
execute if score $warp_valid lodestone_w matches 1 as @e[tag=lodestone_teleporter,limit=1] run function lodestone_warps:armor_stand/teleport
