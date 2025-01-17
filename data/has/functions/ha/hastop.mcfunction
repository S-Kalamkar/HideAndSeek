tp @a 120.5 54 239.5
function has:gameend
setblock -603 22 452 air

# clear scores
scoreboard players reset @a close
scoreboard players reset @a JS
scoreboard players reset @a jsChance



# tp players

schedule clear has:ha/haam 
setblock -513 22 443 minecraft:air