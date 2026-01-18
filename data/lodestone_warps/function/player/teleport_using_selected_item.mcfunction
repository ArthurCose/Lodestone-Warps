data modify storage lodestone_warps:temp target set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target
tag @s add lodestone_user

function lodestone_warps:teleport/teleport_player
tag @s remove lodestone_user
