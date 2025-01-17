tellraw Wonderbread470 {"text":"Hide and Seek datapack loaded", "color":"green"}
title @a times 10 30 10

#tickmin
schedule clear has:tickmin
schedule function has:tickmin 60s

# scoreboard objectives
scoreboard objectives add spawn trigger
scoreboard objectives add mons trigger
scoreboard objectives add Timer dummy
scoreboard objectives add Seekers dummy
scoreboard objectives add Hiders dummy
scoreboard objectives add seconds dummy
scoreboard objectives add secM dummy
scoreboard objectives add map dummy
scoreboard objectives add start dummy
scoreboard objectives add outBounds dummy
scoreboard objectives add tiar dummy
scoreboard objectives add rlcCntDwn dummy
scoreboard players set one Timer 1
scoreboard players set two Timer 2
scoreboard players set thrty Timer 30
scoreboard players set outBounds outBounds 210


# teams
team add seeker
team modify seeker color dark_red
team modify seeker nametagVisibility never
team modify hider prefix "[Seeker] "
scoreboard objectives setdisplay sidebar Seekers

team add hider
team modify hider color green
team modify hider nametagVisibility never
team modify hider prefix "[Hider] "

# abillities
execute as @a[tag=!ss,tag=!kc, tag=!blp, tag=!reloc, tag=!ftpt,tag=!rr] at @s run function has:abilities/seekerseeker
execute as @a[tag=!tri,tag=!bh, tag=!snh, tag=!psy, tag=!sbb] at @s run function has:abilities/triangluate