# we can't tp or modify players to variable coords, so we modify an armor stand and tp the player to an armor stannd

# move the armor stand
execute store result storage lodestone_network:temp position[0] double 1 run data get storage lodestone_network:temp ItemTag.LodestonePos.X
execute store result storage lodestone_network:temp position[1] double 1 run data get storage lodestone_network:temp ItemTag.LodestonePos.Y
execute store result storage lodestone_network:temp position[2] double 1 run data get storage lodestone_network:temp ItemTag.LodestonePos.Z

data modify entity @s Pos set from storage lodestone_network:temp position

# copy the player's rotation
data modify entity @s Rotation set from entity @p[tag=lodestone_user] Rotation

# resolve the dimension to teleport the player to
data modify storage lodestone_network:temp comparison set from storage lodestone_network:temp ItemTag.LodestoneDimension
execute store result score $not_overworld lodestone_net run data modify storage lodestone_network:temp comparison set value "minecraft:overworld"
data modify storage lodestone_network:temp comparison set from storage lodestone_network:temp ItemTag.LodestoneDimension
execute store result score $not_nether lodestone_net run data modify storage lodestone_network:temp comparison set value "minecraft:the_nether"
data modify storage lodestone_network:temp comparison set from storage lodestone_network:temp ItemTag.LodestoneDimension
execute store result score $not_end lodestone_net run data modify storage lodestone_network:temp comparison set value "minecraft:the_end"
data modify storage lodestone_network:temp comparison set from storage lodestone_network:temp ItemTag.LodestoneDimensio

# teleport player to armor stand's position in the target dimension
# the offcet is to center the player on top of the lodestone
execute if score $not_overworld lodestone_net matches 0 in minecraft:overworld positioned as @s run tp @p[tag=lodestone_user] ~.5 ~1 ~.5
execute if score $not_nether lodestone_net matches 0 in minecraft:the_nether positioned as @s run tp @p[tag=lodestone_user] ~.5 ~1 ~.5
execute if score $not_end lodestone_net matches 0 in minecraft:the_end positioned as @s run tp @p[tag=lodestone_user] ~.5 ~1 ~.5

kill @s