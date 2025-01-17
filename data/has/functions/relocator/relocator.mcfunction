execute as @a[tag=relocing] run tp @a[tag=hider,limit=1,sort=random, tag=!relocing] 
execute as @a[tag=relocing] run title @s[tag=relocing] title {"text":"Teleported!","color":"light_purple"}
execute as @a[tag=relocing] run tag @s[tag=relocing] remove relocing