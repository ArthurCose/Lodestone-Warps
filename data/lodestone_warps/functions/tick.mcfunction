execute as @e[type=item_frame] at @s positioned ~ ~-1.5 ~ if data entity @s Item.tag.LodestonePos run function lodestone_warps:item_frame/detect_use
execute as @a run function lodestone_warps:player/tick
