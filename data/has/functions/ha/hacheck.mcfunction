execute as @a[tag=JS] at @s store result score @s jsChance run loot spawn ~ ~ ~ loot has:entities/js_chance
execute as @a[tag=JS, scores={jsChance=..2}] at @s if entity @e[tag=seeker,distance=15..] run schedule function has:ha/hajumpscare 1t
execute as @a[tag=JS,scores={jsChance=2..}] if entity @e[tag=seeker,distance=..15] as @a[tag=JS] run scoreboard players reset @s JS
execute as @a[tag=JS,scores={jsChance=2..}] as @a[tag=JS] run scoreboard players reset @s JS
execute as @a[tag=JS,scores={jsChance=2..}] if entity @e[tag=seeker,distance=..15] as @a[tag=JS] run scoreboard players reset @s close
execute as @a[tag=JS,scores={jsChance=2..}] as @a[tag=JS] run scoreboard players reset @s close
execute as @a[tag=JS,scores={jsChance=2..}] if entity @e[tag=seeker,distance=..15] as @a[tag=JS] run tag @s remove JS
execute as @a[tag=JS,scores={jsChance=2..}] as @a[tag=JS] run tag @s remove JS