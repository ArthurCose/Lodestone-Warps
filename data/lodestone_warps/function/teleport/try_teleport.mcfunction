data modify storage lodestone_warps:destination x set from storage lodestone_warps:temp target.pos[0]
data modify storage lodestone_warps:destination y set from storage lodestone_warps:temp target.pos[1]
data modify storage lodestone_warps:destination z set from storage lodestone_warps:temp target.pos[2]
data modify storage lodestone_warps:destination dimension set from storage lodestone_warps:temp target.dimension

function lodestone_warps:teleport/complete_teleport with storage lodestone_warps:destination
