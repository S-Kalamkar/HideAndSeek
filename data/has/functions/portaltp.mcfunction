# execute as @a[tag=ripper,scores={tpTime=40..}] at @s if entity @e[type=minecraft:armor_stand,tag=portalO,distance=...5] as @e[type=minecraft:armor_stand,tag=portalO,distance=...5] if score @s portalThrower = @e[type=minecraft:armor_stand, distance=0,limit=1,sort=nearest, tag=portalC] portalThrower run tp @a[limit=1,sort=nearest,tag=ripper] ~ ~ ~ 90 0
# execute as @a[tag=ripper,scores={tpTime=40..}] at @s if entity @e[type=minecraft:armor_stand,tag=portalO,distance=...5] positioned as @e[type=minecraft:armor_stand,tag=portalC] run tp @s ~ ~ ~ 90 0

tag @e[type=minecraft:armor_stand,tag=portalO,limit=1,sort=nearest] add tping
execute as @e[type=minecraft:armor_stand,tag=portalC] if score @s portalThrower = @e[type=minecraft:armor_stand,tag=portalO, tag=tping,limit=1] portalThrower run tag @s add tpto
tp @s @e[tag=tpto,type=minecraft:armor_stand,limit=1]
tag @e[type=minecraft:armor_stand,tag=tpto] remove tpto
tag @e[type=minecraft:armor_stand,tag=tping] remove tping


scoreboard players reset @a[tag=seeker,scores={tpTime=40..}] tpTime
scoreboard players reset @a[tag=ripper,scores={tpTime=40..}] tpTime