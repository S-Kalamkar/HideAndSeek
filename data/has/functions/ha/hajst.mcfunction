execute as @a[tag=!seeker] at @s if entity @e[tag=seeker,limit=1, distance=..7] at @s run scoreboard players add @s close 1
execute as @a[tag=!seeker] if score @s close matches 200 at @s run tag @s add JS
execute as @a[tag=!seeker] at @s if score @s close matches 200 run schedule function has:ha/hacheck 12s
