clear @a
gamemode adventure @a
effect clear @a


# create teams

tag @a[limit=1,tag=!spec,tag=!ogSeeker, sort=random] add seeker
tag @a[tag=ogSeeker] remove ogSeeker
tag @a[tag=seeker] add ogSeeker
title @a actionbar [{"selector":"@a[tag=seeker]", "color":"dark_red"}]
scoreboard players add @a[tag=seeker] Seekers 1
execute as @a[tag=seeker] run team join seeker
tag @a[tag=!seeker,tag=!spec] add hider
execute as @a[tag=hider] run team join hider
scoreboard players add @a Hiders 1


# seeker effects
effect give @a[tag=seeker] minecraft:jump_boost 30 250
effect give @a[tag=seeker] minecraft:blindness 30 255
effect give @a[tag=seeker] minecraft:weakness 30 255
effect give @a[tag=seeker] minecraft:slowness 30 255

#start ftpt
#execute as @a[tag=ftpt] at @s unless score .random random matches 1 run tag @s add ftptig
execute if score .random random matches 0 as @a[tag=ftpt] at @s run tag @s add ftptig
execute as @a[tag=rftpt] at @s run tag @s add ftptig

#start rr
execute as @a[tag=rr, tag=!seeker] run tag @s add ripper
execute as @a[tag=rrr, tag=!seeker] run tag @s add ripper

#hit powerups
execute if score .random random matches 0 run setblock 53 22 260 minecraft:redstone_block
execute if score .random random matches 1 run setblock 53 22 258 minecraft:redstone_block


function has:relocator/onlyone