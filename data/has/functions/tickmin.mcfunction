schedule function has:tickmin 60s
execute store result score .playerCount playerCount run execute if entity @a
execute as @a run spawnpoint @s 59 28 266 
effect give @a minecraft:saturation 999999 255 true