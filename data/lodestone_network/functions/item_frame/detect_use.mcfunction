execute store result score $rotation lodestone_net run data get entity @s ItemRotation
execute if score $rotation lodestone_net matches 1.. run function lodestone_network:item_frame/try_use
