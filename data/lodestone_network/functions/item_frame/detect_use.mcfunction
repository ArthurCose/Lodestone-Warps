# check use
execute store result score $rotation lodestone_net run data get entity @s ItemRotation

# check dimension
data modify storage lodestone_network:temp comparison set from entity @s Item.tag.LodestoneDimension
execute store success score $wrong_dimension lodestone_net run data modify storage lodestone_network:temp comparison set from entity @p Dimension

execute if score $wrong_dimension lodestone_net matches 0 if score $rotation lodestone_net matches 1.. run function lodestone_network:item_frame/teleport_closest_player
