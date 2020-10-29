# can't modify players so modify armor stand
execute store result entity @s Pos[0] double 1 run data get entity @e[tag=lodestone_frame,limit=1] Item.tag.LodestonePos.X
execute store result entity @s Pos[1] double 1 run data get entity @e[tag=lodestone_frame,limit=1] Item.tag.LodestonePos.Y
execute store result entity @s Pos[2] double 1 run data get entity @e[tag=lodestone_frame,limit=1] Item.tag.LodestonePos.Z

# teleport player to armor stand
execute at @s as @p[tag=lodestone_closest_player] run function lodestone_network:player/teleport
kill @s
