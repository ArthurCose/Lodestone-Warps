execute store result score $xp_level lodestone_net run data get entity @s XpLevel
# display message on first tick
execute if score @s lodestone_net_t matches 0 if score $xp_level lodestone_net matches 0 run tellraw @p[tag=lodestone_user] {"color": "red", "text": "More experience is required"}

execute if score $xp_level lodestone_net matches 1.. run function lodestone_network:player/teleporting_tick

scoreboard players add @s lodestone_net_t 1
