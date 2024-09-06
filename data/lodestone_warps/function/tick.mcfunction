execute as @e[type=item_frame] at @s positioned ~ ~-1.5 ~ if data entity @s Item.components.minecraft:lodestone_tracker.target run function lodestone_warps:item_frame/detect_use
execute as @a run function lodestone_warps:player/tick
