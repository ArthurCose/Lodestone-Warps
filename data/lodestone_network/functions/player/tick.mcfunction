# if the player is sneaking and holding a lodestone compass, then execute teleporting ticks
scoreboard players set $attempting_teleport lodestone_net 0
execute store result score $attempting_teleport lodestone_net if score @s lodestone_net_s matches 1.. if entity @s[nbt={SelectedItem: {tag: {LodestoneTracked: 1b}}}]
execute if score $attempting_teleport lodestone_net matches 1 run function lodestone_network:player/attempt_teleporting_tick
execute if score @s lodestone_net_s matches 0 run scoreboard players set @s lodestone_net_t 0

# reset sneak timer
scoreboard players set @s lodestone_net_s 0
