advancement revoke @a[tag=ftptig] only has:hit
advancement revoke @a[tag=invince] only has:hit
tag @s[tag=!seeker,tag=!ftptig,tag=!invince,advancements={has:hit=true}] add seeker
tag @s[advancements={has:hit=true}] remove hider
execute as @s[tag=seeker] run team join seeker
scoreboard players add @s[advancements={has:hit=true}] Seekers 1
scoreboard players remove @s[advancements={has:hit=true}] Hiders 1
execute as @s[tag=seeker] run team leave Hider
clear @s[advancements={has:hit=true}]
#setblock 53 22 260 minecraft:redstone_block
#setblock 53 22 260 minecraft:air
advancement revoke @s only has:hit
