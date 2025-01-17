# display timer
title @a actionbar {"score":{"name":"Timer","objective":"Timer"}}

# timer commands
scoreboard players add Timer seconds 1
scoreboard players set Timer secM 20
execute if score Timer seconds >= Timer secM run scoreboard players remove Timer Timer 1
execute if score Timer seconds >= Timer secM run scoreboard players reset Timer seconds

# timer ping after 30s
execute if score Timer Timer matches 454 at @a run execute if score Timer seconds matches 1 run playsound minecraft:block.note_block.pling master @a
execute if score Timer Timer matches 453 at @a run execute if score Timer seconds matches 1 run playsound minecraft:block.note_block.pling master @a
execute if score Timer Timer matches 452 at @a run execute if score Timer seconds matches 1 run playsound minecraft:block.note_block.pling master @a
execute if score Timer Timer matches 451 at @a run execute if score Timer seconds matches 1 run playsound minecraft:block.note_block.pling master @a
execute if score Timer Timer matches 450 at @a run execute if score Timer seconds matches 1 run playsound minecraft:entity.ender_dragon.growl master @a

# give power ups after 30s
execute if score Timer Timer matches 450 at @a run setblock 58 22 262 minecraft:redstone_block
execute if score Timer Timer matches 450 at @a run setblock 58 22 262 minecraft:air

# timer stop
execute if score Timer Timer matches ..0 run function has:md/mdstop

