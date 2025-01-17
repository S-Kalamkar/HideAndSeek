tag @a[tag=rvoted] remove rvoted
scoreboard players reset .randomizer random
bossbar set minecraft:randomizer value 0
bossbar set minecraft:randomizer visible false


scoreboard players set ranmapcont ranmapcont 1
execute store result storage ranmap map int 1 run loot spawn ~ ~ ~ loot has:entities/has_map_chance
execute if data storage minecraft:ranmap {map:1} run tp @a -246.5 23.00 230.5 180 0
execute if data storage minecraft:ranmap {map:2} run tp @a -72.5 25.00 256.5 180 0
execute if data storage minecraft:ranmap {map:3} run tp @a -116.5 23.00 221.5 0 0
execute if data storage minecraft:ranmap {map:4} run tp @a -677.5 33.00 531.5 270 0
execute if data storage minecraft:ranmap {map:5} run tp @a -419.52 24.00 218.47 0 0
execute if data storage minecraft:ranmap {map:6} run tp @a -212.5 23.0 233.5 0 0
execute if data storage minecraft:ranmap {map:7} run tp @a -642.51 23.00 230.51 0 0
execute if data storage minecraft:ranmap {map:8} run tp @a -320.50 23 221.50 270 0
execute if data storage minecraft:ranmap {map:9} run tp @a -219 24 437.5 180 0
execute if data storage minecraft:ranmap {map:10} run tp @a 226.50 25.00 227.50
execute unless data storage minecraft:ranmap {map:0} as @a at @s run function has:ranpow
data modify storage minecraft:ranmap map set value 0

execute as @a at @s run playsound minecraft:block.conduit.attack.target ambient @s ~ ~ ~ 1 .85
