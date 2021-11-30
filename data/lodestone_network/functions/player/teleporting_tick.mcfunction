execute if score @s lodestone_net_t matches 0 run title @s actionbar ["Teleporting in ", { "text": "3", "color": "green" }]
execute if score @s lodestone_net_t matches 20 run title @s actionbar ["Teleporting in ", { "text": "2", "color": "green" }]
execute if score @s lodestone_net_t matches 40 run title @s actionbar ["Teleporting in ", { "text": "1", "color": "green" }]
execute if score @s lodestone_net_t matches 60 run title @s actionbar ""
execute if score @s lodestone_net_t matches 60 run function lodestone_network:player/teleport_using_selected_item
