execute store result score $rotation lodestone_w run data get entity @s ItemRotation
execute if score $rotation lodestone_w matches 1.. run function lodestone_warps:item_frame/try_use
