execute as @a[tag=JS] run tp @s @e[tag=spot,limit=1]
execute as @a[tag=JS] run scoreboard players reset @s JS
execute as @a[tag=JS] run scoreboard players reset @s close
execute as @a[tag=JS] run tag @s remove JS
kill @e[tag=spot]