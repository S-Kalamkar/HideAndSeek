scoreboard players operation .portalID UUID1 = @s UUID1
execute as @e[type=armor_stand,tag=portalO] if score @s portalThrower = .portalID UUID1 run kill @s
execute as @e[type=armor_stand,tag=portalC] if score @s portalThrower = .portalID UUID1 run kill @s
scoreboard players reset @s portalTime