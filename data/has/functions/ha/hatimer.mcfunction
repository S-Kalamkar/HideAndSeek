# display timer
title @a actionbar {"score":{"name":"Timer","objective":"Timer"}}

# timer commands
scoreboard players add Timer seconds 1
scoreboard players set Timer secM 20
execute if score Timer seconds >= Timer secM run scoreboard players remove Timer Timer 1
execute if score Timer seconds >= Timer secM run scoreboard players reset Timer seconds

# timer ping after 30s
execute if score Timer Timer matches 364 at @a run execute if score Timer seconds matches 1 run playsound minecraft:block.note_block.pling master @a
execute if score Timer Timer matches 363 at @a run execute if score Timer seconds matches 1 run playsound minecraft:block.note_block.pling master @a
execute if score Timer Timer matches 362 at @a run execute if score Timer seconds matches 1 run playsound minecraft:block.note_block.pling master @a
execute if score Timer Timer matches 361 at @a run execute if score Timer seconds matches 1 run playsound minecraft:block.note_block.pling master @a
execute if score Timer Timer matches 360 at @a run execute if score Timer seconds matches 1 run playsound minecraft:entity.ender_dragon.growl master @a

# giver powers after 30s
execute if score Timer Timer matches 360 at @a run setblock -513 22 443 minecraft:redstone_block

# timer stop
execute if score Timer Timer matches ..0 run function has:ha/hastop

