execute store result score $xp_level lodestone_w run data get entity @s XpLevel

# display message on first tick
execute if score @s lodestone_w_t matches 0 if score $xp_level lodestone_w matches 0 run tellraw @s {"color": "red", "text": "More experience is required"}

execute if score $xp_level lodestone_w matches 1.. run function lodestone_warps:player/teleporting_tick

scoreboard players add @s lodestone_w_t 1
