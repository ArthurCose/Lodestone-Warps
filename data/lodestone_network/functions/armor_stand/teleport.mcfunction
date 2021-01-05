# can't modify players so modify armor stand
data modify entity @s Pos set from storage lodestone_network:temp position

# teleport player to armor stand
execute at @s as @p[tag=lodestone_closest_player] run function lodestone_network:player/teleport
