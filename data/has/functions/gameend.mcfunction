execute if score .playerCount playerCount matches ..1 run tag @a[tag=ogSeeker] remove ogSeeker

clear @a
effect clear @a
kill @e[type=item,tag=stm]

function has:relocator/onlyonestop

# who won
execute if entity @a[tag=hider] run title @a title {"text":"Hiders Win!", "color":"green"}
execute unless entity @a[tag=hider] run title @a title {"text":"Seekers Win!", "color":"dark_red"}

# clear tags
tag @a remove hidsec
tag @a remove seeker
tag @a remove hider
tag @a remove ftptig
tag @a remove ripper
tag @e remove tping
tag @e remove tpto

# clear teams
team leave @a

# clear portals
kill @e[type=minecraft:armor_stand,tag=portalO]
kill @e[type=minecraft:armor_stand,tag=portalC]

# clear scores
scoreboard players reset @a Seekers
scoreboard players reset Map map
scoreboard players reset @a portalTime
scoreboard players reset @a tpTime
scoreboard players set Timer Timer 1
scoreboard players set Timer seconds 1

# anti hit
effect give @a minecraft:weakness 99999 255 true

#stop hitpowerups
execute if score .random random matches 0 run setblock 53 22 260 air
execute if score .random random matches 1 run setblock 53 22 258 air

# ranmap cont
execute if score ranmapcont ranmapcont matches 1 run function has:ranmap