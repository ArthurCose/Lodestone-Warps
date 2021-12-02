data modify storage lodestone_warps:temp ItemTag set from entity @s SelectedItem.tag
tag @s add lodestone_user

function lodestone_warps:armor_stand/create_stand_and_teleport_player
tag @s remove lodestone_user
