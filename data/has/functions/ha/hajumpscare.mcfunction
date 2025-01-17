execute as @a[tag=JS] at @s store result score @s JS run loot spawn ~ ~ ~ loot has:entities/js_chance
execute as @a[tag=JS] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b, Tags:["spot"]}
execute as @a[scores={JS=1}] run tp @s -471.5 23 455.5 -175.7 -13.1
execute as @a[scores={JS=2}] run tp @s -468.5 23 454.5 1 -8
execute as @a[scores={JS=3}] run tp @s -470.5 23 456.5 -90.9 -14.5
execute as @a[scores={JS=4}] run tp @s -470.5 23 453.5 -90.7 -2.5
execute as @a[tag=JS] run effect give @s minecraft:slowness 2 255 true
execute as @a[tag=JS] run effect give @s minecraft:jump_boost 2 250 true
execute as @a[tag=JS] at @s run playsound minecraft:entity.wither.spawn master @s
execute as @a[tag=JS] run schedule function has:ha/hajstp 2s
