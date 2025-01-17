execute as @a at @s store result score @s sranpow run loot spawn ~ ~ ~ loot has:entities/ran_pow_chance
execute as @a at @s store result score @s hranpow run loot spawn ~ ~ ~ loot has:entities/ran_pow_chance
recipe take @a minecraft:black_dye

execute as @a[scores={sranpow=1}] at @s run tag @s add rbh
execute as @a[scores={sranpow=1}] at @s run tag @s remove rtri
execute as @a[scores={sranpow=1}] at @s run tag @s remove rsnh
execute as @a[scores={sranpow=1}] at @s run tag @s remove rpsy
execute as @a[scores={sranpow=1}] at @s run tag @s remove rsbb


execute as @a[scores={sranpow=2}] at @s run tag @s remove rbh
execute as @a[scores={sranpow=2}] at @s run tag @s add rtri
execute as @a[scores={sranpow=2}] at @s run tag @s remove rsnh
execute as @a[scores={sranpow=2}] at @s run tag @s remove rpsy
execute as @a[scores={sranpow=2}] at @s run tag @s remove rsbb


execute as @a[scores={sranpow=3}] at @s run tag @s remove rbh
execute as @a[scores={sranpow=3}] at @s run tag @s remove rtri
execute as @a[scores={sranpow=3}] at @s run tag @s add rsnh
execute as @a[scores={sranpow=3}] at @s run tag @s remove rpsy
execute as @a[scores={sranpow=3}] at @s run tag @s remove rsbb


execute as @a[scores={sranpow=4}] at @s run tag @s remove rbh
execute as @a[scores={sranpow=4}] at @s run tag @s remove rtri
execute as @a[scores={sranpow=4}] at @s run tag @s remove rsnh
execute as @a[scores={sranpow=4}] at @s run tag @s add rpsy
execute as @a[scores={sranpow=4}] at @s run tag @s remove rsbb


execute as @a[scores={sranpow=5}] at @s run tag @s remove rbh
execute as @a[scores={sranpow=5}] at @s run tag @s remove rtri
execute as @a[scores={sranpow=5}] at @s run tag @s remove rsnh
execute as @a[scores={sranpow=5}] at @s run tag @s remove rpsy
execute as @a[scores={sranpow=5}] at @s run tag @s add rsbb

execute as @a[scores={sranpow=6}] at @s run tag @s remove rbh
execute as @a[scores={sranpow=6}] at @s run tag @s add rtri
execute as @a[scores={sranpow=6}] at @s run tag @s remove rsnh
execute as @a[scores={sranpow=6}] at @s run tag @s remove rpsy
execute as @a[scores={sranpow=6}] at @s run tag @s remove rsbb

execute as @a[scores={hranpow=1}] at @s run tag @s add rkc
execute as @a[scores={hranpow=1}] at @s run tag @s remove rblp
execute as @a[scores={hranpow=1}] at @s run tag @s remove rss
execute as @a[scores={hranpow=1}] at @s run tag @s remove rreloc
execute as @a[scores={hranpow=1}] at @s run tag @s remove rftpt
execute as @a[scores={hranpow=1}] at @s run tag @s remove rrr

execute as @a[scores={hranpow=2}] at @s run tag @s remove rkc
execute as @a[scores={hranpow=2}] at @s run tag @s add rblp
execute as @a[scores={hranpow=2}] at @s run tag @s remove rss
execute as @a[scores={hranpow=2}] at @s run tag @s remove rreloc
execute as @a[scores={hranpow=2}] at @s run tag @s remove rftpt
execute as @a[scores={hranpow=2}] at @s run tag @s remove rrr

execute as @a[scores={hranpow=3}] at @s run tag @s remove rkc
execute as @a[scores={hranpow=3}] at @s run tag @s remove rblp
execute as @a[scores={hranpow=3}] at @s run tag @s add rss
execute as @a[scores={hranpow=3}] at @s run tag @s remove rreloc
execute as @a[scores={hranpow=3}] at @s run tag @s remove rftpt
execute as @a[scores={hranpow=3}] at @s run tag @s remove rrr

execute as @a[scores={hranpow=4}] at @s run tag @s remove rkc
execute as @a[scores={hranpow=4}] at @s run tag @s remove rblp
execute as @a[scores={hranpow=4}] at @s run tag @s remove rss
execute unless score .playerCount playerCount matches ..1 as @a[scores={hranpow=4}] at @s run tag @s add rreloc
execute if score .playerCount playerCount matches ..1 as @a[scores={hranpow=4}] at @s run tag @s add rss
execute as @a[scores={hranpow=4}] at @s run tag @s remove rftpt
execute as @a[scores={hranpow=4}] at @s run tag @s remove rrr

execute as @a[scores={hranpow=5}] at @s run tag @s remove rkc
execute as @a[scores={hranpow=5}] at @s run tag @s remove rblp
execute as @a[scores={hranpow=5}] at @s run tag @s remove rss
execute as @a[scores={hranpow=5}] at @s run tag @s remove rreloc
execute as @a[scores={hranpow=5}] at @s run tag @s add rftpt
execute as @a[scores={hranpow=5}] at @s run tag @s remove rrr

execute as @a[scores={hranpow=6}] at @s run tag @s remove rkc
execute as @a[scores={hranpow=6}] at @s run tag @s remove rblp
execute as @a[scores={hranpow=6}] at @s run tag @s remove rss
execute as @a[scores={hranpow=6}] at @s run tag @s remove rreloc
execute as @a[scores={hranpow=6}] at @s run tag @s remove rftpt
execute as @a[scores={hranpow=6}] at @s run tag @s add rrr

#tellraw Wonderbread470 {"score":{"name":"timebread","objective":"ranpow"}}
execute as @a[scores={sranpow=0..}] run scoreboard players reset @a sranpow
execute as @a[scores={hranpow=0..}] run scoreboard players reset @a hranpow