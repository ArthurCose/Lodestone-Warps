tag @p[distance=..5,sort=nearest] add lodestone_closest_player

execute store result score $xp_level lodestone_net run data get entity @p[tag=lodestone_closest_player] XpLevel
execute if score $xp_level lodestone_net matches 0 run tellraw @p[tag=lodestone_closest_player] {"color": "red", "text": "More experience is required"}
execute if score $xp_level lodestone_net matches 1.. run function lodestone_network:item_frame/teleport_tagged_player

tag @a[tag=lodestone_closest_player] remove lodestone_closest_player

data modify entity @s ItemRotation set value 0b
