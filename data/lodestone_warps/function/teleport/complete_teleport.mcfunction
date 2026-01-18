# play teleport sound at old location
execute at @p[tag=lodestone_user] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1

# Move user to the destination, with an offset to put them above the lodestone.
$execute in $(dimension) positioned $(x) $(y) $(z) run tp @p[tag=lodestone_user] ~ ~1 ~

# play teleport sound at new location
execute at @p[tag=lodestone_user] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1

# take 1 level from the player
xp add @p[tag=lodestone_user] -1 levels
