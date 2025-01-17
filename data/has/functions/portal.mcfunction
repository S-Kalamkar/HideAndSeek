
execute as @e[type=item, nbt={Item:{id:"minecraft:popped_chorus_fruit"}}] at @s if entity @s[nbt={OnGround:1b}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, Tags:[portalO]}
execute as @e[type=item, nbt={OnGround:1b, Item:{id:"minecraft:popped_chorus_fruit"}}] as @e[type=minecraft:armor_stand,tag=portalO,limit=1,sort=nearest] run data modify entity @s HurtByTimestamp set from entity @e[type=item, nbt={Item:{id:"minecraft:popped_chorus_fruit"}},limit=1,sort=nearest] Thrower[0]
execute as @e[type=item, nbt={OnGround:1b, Item:{id:"minecraft:popped_chorus_fruit"}}] as @e[type=minecraft:armor_stand,tag=portalO,limit=1,sort=nearest] store result score @s portalThrower run data get entity @s HurtByTimestamp
execute as @a[tag=ripper] if score @s createPortal matches 1.. run give @s minecraft:phantom_membrane{display:{Name:'{"text":"Rift Ripper"}'}}
execute as @a[tag=ripper] if score @s createPortal matches 1.. run scoreboard players reset @s createPortal
kill @e[type=item, nbt={OnGround:1b, Item:{id:"minecraft:popped_chorus_fruit"}}]

execute as @e[type=item, nbt={Item:{id:"minecraft:phantom_membrane"}}] at @s if entity @s[nbt={OnGround:1b}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, Tags:[portalC]}
execute as @e[type=item, nbt={OnGround:1b, Item:{id:"minecraft:phantom_membrane"}}] as @e[type=minecraft:armor_stand,tag=portalC,limit=1,sort=nearest] run data modify entity @s HurtByTimestamp set from entity @e[type=item, nbt={Item:{id:"minecraft:phantom_membrane"}},limit=1,sort=nearest] Thrower[0]
execute as @e[type=item, nbt={OnGround:1b, Item:{id:"minecraft:phantom_membrane"}}] as @e[type=minecraft:armor_stand,tag=portalC,limit=1,sort=nearest] store result score @s portalThrower run data get entity @s HurtByTimestamp
kill @e[type=item, nbt={OnGround:1b, Item:{id:"minecraft:phantom_membrane"}}]