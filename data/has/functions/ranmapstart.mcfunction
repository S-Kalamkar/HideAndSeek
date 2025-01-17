
execute if entity @a[x=123, y=33, z=269.5, dx=1, tag=!admin, tag=!rvoted] run scoreboard players add .randomizer random 1
execute as @a[x=123, y=33, z=269.5, dx=1,tag=!rvoted] at @s run tag @s add rvoted
execute store result bossbar minecraft:randomizer value run scoreboard players get .randomizer random

execute if entity @a[x=123, y=33, z=269.5, dx=1, tag=admin] run scoreboard players add .randomizer random 3


execute if score .randomizer random matches 1.. run bossbar set minecraft:randomizer visible true
execute if score .randomizer random matches 1 run bossbar set minecraft:randomizer name {"text":"Randomizer (1/3)","color":"green"}
execute if score .randomizer random matches 2 run bossbar set minecraft:randomizer name {"text":"Randomizer (2/3)","color":"green"}
execute if score .randomizer random matches 3 run bossbar set minecraft:randomizer name {"text":"Randomizer starting...","color":"green"}

execute if score .randomizer random matches 3.. as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 .69
execute if score .randomizer random matches 3.. run schedule function has:ranmap 72t

scoreboard players set .random random 1