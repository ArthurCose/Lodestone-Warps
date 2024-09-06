tag @p[distance=..5,sort=nearest] add lodestone_user

execute store result score $xp_level lodestone_w run data get entity @p[tag=lodestone_user] XpLevel
execute if score $xp_level lodestone_w matches 0 run tellraw @p[tag=lodestone_user] {"color": "red", "text": "More experience is required"}
execute if score $xp_level lodestone_w matches 1.. run function lodestone_warps:item_frame/teleport_tagged_player

tag @a[tag=lodestone_user] remove lodestone_user

data modify entity @s ItemRotation set value 0b
