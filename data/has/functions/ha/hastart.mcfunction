scoreboard players set Map map 8
time set midnight
setblock -603 22 452 redstone_wire
execute as @a at @s run tag @p remove bh
execute as @a at @s run tag @p remove snh
execute as @a at @s run tag @p remove psy
execute as @a at @s run tag @p add tri
recipe take @a minecraft:bone_meal

function has:gamestart

# tp players
tp @a[tag=!spec] -528.5 33.00 462.5 110.9 -7.5

# start timer
scoreboard players set Timer Timer 390
scoreboard players set @a start 8

# give power ups
execute if score Timer Timer matches 360 at @a run setblock -513 22 443 minecraft:redstone_block
#setblock -513 22 443 minecraft:air

# ambient
function has:ha/haam
