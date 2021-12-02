# we can't tp or modify players to variable coords, so we modify an armor stand and tp the player to an armor stannd

# move the armor stand
execute store result storage lodestone_warps:temp position[0] double 1 run data get storage lodestone_warps:temp ItemTag.LodestonePos.X
execute store result storage lodestone_warps:temp position[1] double 1 run data get storage lodestone_warps:temp ItemTag.LodestonePos.Y
execute store result storage lodestone_warps:temp position[2] double 1 run data get storage lodestone_warps:temp ItemTag.LodestonePos.Z

data modify entity @s Pos set from storage lodestone_warps:temp position

# copy the player's rotation
data modify entity @s Rotation set from entity @p[tag=lodestone_user] Rotation

# resolve the dimension to teleport the player to
data modify storage lodestone_warps:temp comparison set from storage lodestone_warps:temp ItemTag.LodestoneDimension
execute store result score $not_overworld lodestone_w run data modify storage lodestone_warps:temp comparison set value "minecraft:overworld"
data modify storage lodestone_warps:temp comparison set from storage lodestone_warps:temp ItemTag.LodestoneDimension
execute store result score $not_nether lodestone_w run data modify storage lodestone_warps:temp comparison set value "minecraft:the_nether"
data modify storage lodestone_warps:temp comparison set from storage lodestone_warps:temp ItemTag.LodestoneDimension
execute store result score $not_end lodestone_w run data modify storage lodestone_warps:temp comparison set value "minecraft:the_end"
data modify storage lodestone_warps:temp comparison set from storage lodestone_warps:temp ItemTag.LodestoneDimensio

# play teleport sound at old location
execute at @p[tag=lodestone_user] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1

# teleport player to armor stand's position in the target dimension
# the offset is to center the player on top of the lodestone
execute if score $not_overworld lodestone_w matches 0 in minecraft:overworld positioned as @s run tp @p[tag=lodestone_user] ~.5 ~1 ~.5
execute if score $not_nether lodestone_w matches 0 in minecraft:the_nether positioned as @s run tp @p[tag=lodestone_user] ~.5 ~1 ~.5
execute if score $not_end lodestone_w matches 0 in minecraft:the_end positioned as @s run tp @p[tag=lodestone_user] ~.5 ~1 ~.5

# play teleport sound at new location
execute at @p[tag=lodestone_user] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1

kill @s
