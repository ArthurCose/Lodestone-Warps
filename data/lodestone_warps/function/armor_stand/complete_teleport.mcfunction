# play teleport sound at old location
execute at @p[tag=lodestone_user] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1

# teleport player to armor stand's position in the target dimension
# the offset is to center the player on top of the lodestone
execute if score $not_overworld lodestone_w matches 0 in minecraft:overworld positioned as @s run tp @p[tag=lodestone_user] ~.5 ~1 ~.5
execute if score $not_nether lodestone_w matches 0 in minecraft:the_nether positioned as @s run tp @p[tag=lodestone_user] ~.5 ~1 ~.5
execute if score $not_end lodestone_w matches 0 in minecraft:the_end positioned as @s run tp @p[tag=lodestone_user] ~.5 ~1 ~.5

# play teleport sound at new location
execute at @p[tag=lodestone_user] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1

# take 1 level from the player
xp add @p[tag=lodestone_user] -1 levels
