execute as @a[tag=reloc, tag=hider, limit=1,sort=random] run tag @s add relocP
execute as @a[tag=reloc,tag=!relocP, tag=hider] at @s store result score @s hranpow run loot spawn ~ ~ ~ loot has:entities/ran_pow_chance
scoreboard players reset .playerCount playerCount 
execute as @a run scoreboard players add .playerCount playerCount 1
execute if score .playerCount playerCount matches 2 as @a[tag=relocP, tag=hider] at @s store result score @s hranpow run loot spawn ~ ~ ~ loot has:entities/ran_pow_chance


execute as @a[scores={hranpow=1}] at @s run tag @s add rkc
execute as @a[scores={hranpow=1}] at @s run tag @s remove rblp
execute as @a[scores={hranpow=1}] at @s run tag @s remove rss

execute as @a[scores={hranpow=2}] at @s run tag @s remove rkc
execute as @a[scores={hranpow=2}] at @s run tag @s add rblp
execute as @a[scores={hranpow=2}] at @s run tag @s remove rss

execute as @a[scores={hranpow=3}] at @s run tag @s remove rkc
execute as @a[scores={hranpow=3}] at @s run tag @s remove rblp
execute as @a[scores={hranpow=3}] at @s run tag @s add rss

execute as @a[scores={hranpow=0..}] run scoreboard players reset @a hranpow
