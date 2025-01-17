execute as @a[tag=relocing] at @s run scoreboard players remove @s rlcCntDwn 1
execute as @a[tag=relocing] at @s run title @s title {"score":{"name":"@s","objective":"rlcCntDwn"}}
execute as @a[tag=relocing] at @s unless score @s rlcCntDwn matches 0 run schedule function has:relocator/countdown 1s