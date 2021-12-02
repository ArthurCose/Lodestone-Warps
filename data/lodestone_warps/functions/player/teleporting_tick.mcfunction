execute if score @s lodestone_w_t matches 0 run title @s actionbar ["Teleporting in ", { "text": "3", "color": "green" }]
execute if score @s lodestone_w_t matches 20 run title @s actionbar ["Teleporting in ", { "text": "2", "color": "green" }]
execute if score @s lodestone_w_t matches 40 run title @s actionbar ["Teleporting in ", { "text": "1", "color": "green" }]
execute if score @s lodestone_w_t matches 60 run title @s actionbar ""
execute if score @s lodestone_w_t matches 60 run function lodestone_warps:player/teleport_using_selected_item

# play teleport startup sound
execute if score @s lodestone_w_t matches 6 at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 2 1
