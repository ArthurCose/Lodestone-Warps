# we can't tp or modify players to variable coords, so we modify an armor stand and tp the player to an armor stannd

# move the armor stand
execute store result storage lodestone_warps:temp position[0] double 1 run data get storage lodestone_warps:temp target.pos[0]
execute store result storage lodestone_warps:temp position[1] double 1 run data get storage lodestone_warps:temp target.pos[1]
execute store result storage lodestone_warps:temp position[2] double 1 run data get storage lodestone_warps:temp target.pos[2]

data modify entity @s Pos set from storage lodestone_warps:temp position

# copy the player's rotation
data modify entity @s Rotation set from entity @p[tag=lodestone_user] Rotation

# resolve the dimension to teleport the player to
data modify storage lodestone_warps:temp comparison set from storage lodestone_warps:temp target.dimension
execute store result score $not_overworld lodestone_w run data modify storage lodestone_warps:temp comparison set value "minecraft:overworld"
data modify storage lodestone_warps:temp comparison set from storage lodestone_warps:temp target.dimension
execute store result score $not_nether lodestone_w run data modify storage lodestone_warps:temp comparison set value "minecraft:the_nether"
data modify storage lodestone_warps:temp comparison set from storage lodestone_warps:temp target.dimension
execute store result score $not_end lodestone_w run data modify storage lodestone_warps:temp comparison set value "minecraft:the_end"
data modify storage lodestone_warps:temp comparison set from storage lodestone_warps:temp target.dimension

execute positioned as @s if block ~ ~ ~ minecraft:lodestone run function lodestone_warps:armor_stand/complete_teleport
execute positioned as @s unless block ~ ~ ~ minecraft:lodestone run tellraw @p[tag=lodestone_user] {"color": "red", "text": "Lodestone link broken"}


kill @s
