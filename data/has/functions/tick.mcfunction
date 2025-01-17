# timer
execute if score Map map matches 0 run function has:gf/gftimer
execute if score Map map matches 1 run function has:zoo/zootimer
execute if score Map map matches 2 run function has:at/attimer
execute if score Map map matches 3 run function has:ct/cttimer
execute if score Map map matches 4 run function has:ms/mstimer
execute if score Map map matches 5 run function has:ph/phtimer
execute if score Map map matches 6 run function has:es/estimer
execute if score Map map matches 7 run function has:as/astimer
execute if score Map map matches 8 run function has:ha/hatimer
execute if score Map map matches 9 run function has:fa/fatimer
execute if score Map map matches 10 run function has:md/mdtimer

# tag/hit commands
execute as @a[tag=!seeker,nbt={HurtTime:10s}, tag=!ftptig, tag=!invince] at @s run function has:hit

# seeker/hide speed
execute if score Timer Timer >= thrty Timer run effect give @a[tag=seeker] minecraft:speed 6000 1 true
execute if score Timer Timer >= one Timer run effect give @a[tag=hider] minecraft:speed 6029 0 true

# game end when all tagged
execute if score Timer Timer >= two Timer run execute if score Map map matches 0 unless entity @a[tag=hider] run function has:gf/gfstop
execute if score Timer Timer >= two Timer run execute if score Map map matches 1 unless entity @a[tag=hider] run function has:zoo/zoostop
execute if score Timer Timer >= two Timer run execute if score Map map matches 2 unless entity @a[tag=hider] run function has:at/atstop
execute if score Timer Timer >= two Timer run execute if score Map map matches 3 unless entity @a[tag=hider] run function has:ct/ctstop
execute if score Timer Timer >= two Timer run execute if score Map map matches 4 unless entity @a[tag=hider] run function has:ms/msstop
execute if score Timer Timer >= two Timer run execute if score Map map matches 5 unless entity @a[tag=hider] run function has:ph/phstop
execute if score Timer Timer >= two Timer run execute if score Map map matches 6 unless entity @a[tag=hider] run function has:es/esstop
execute if score Timer Timer >= two Timer run execute if score Map map matches 7 unless entity @a[tag=hider] run function has:as/asstop
execute if score Timer Timer >= two Timer run execute if score Map map matches 8 unless entity @a[tag=hider] run function has:ha/hastop
execute if score Timer Timer >= two Timer run execute if score Map map matches 9 unless entity @a[tag=hider] run function has:fa/fastop
execute if score Timer Timer >= two Timer run execute if score Map map matches 10 unless entity @a[tag=hider] run function has:md/mdstop

# seeker seeker
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone"}}] run effect give @a[tag=seeker] minecraft:glowing 3 1 true
kill @e[type=item,nbt={Item:{id:"minecraft:redstone"}}]

# kachow
execute as @e[type=item,nbt={Item:{id:"minecraft:sugar"}}] store result score @s UUID1 run data get entity @s Thrower[0]
execute as @a store result score @s UUID1 run data get entity @s UUID[0]
execute as @a if score @s UUID1 = @e[type=item,nbt={Item:{id:"minecraft:sugar"}},limit=1,sort=nearest] UUID1 run effect give @s speed 5 4 true 
kill @e[type=item,nbt={Item:{id:"minecraft:sugar"}}]

# blooper
execute as @e[type=item,nbt={Item:{id:"minecraft:ink_sac"}}] run tag @a[tag=seeker] add seekblop
execute as @a[tag=seekblop] at @s run effect give @s blindness 7 2 true
kill @e[type=item,nbt={Item:{id:"minecraft:ink_sac"}}]
tag @a[tag=seekblop] remove seekblop

# relocator
execute as @e[type=item,nbt={Item:{id:"minecraft:magma_cream"}}] store result score @s UUID1 run data get entity @s Thrower[0]
execute as @a store result score @s UUID1 run data get entity @s UUID[0]
execute as @a if score @s UUID1 = @e[type=item,nbt={Item:{id:"minecraft:magma_cream"}},limit=1,sort=nearest] UUID1 run tag @s[tag=hider] add relocing
execute as @a if score @s UUID1 = @e[type=item,nbt={Item:{id:"minecraft:magma_cream"}},limit=1,sort=nearest] UUID1 run schedule function has:relocator/relocator 15s
execute as @a if score @s UUID1 = @e[type=item,nbt={Item:{id:"minecraft:magma_cream"}},limit=1,sort=nearest] UUID1 run scoreboard players set @s rlcCntDwn 16
execute as @a if score @s UUID1 = @e[type=item,nbt={Item:{id:"minecraft:magma_cream"}},limit=1,sort=nearest] UUID1 run function has:relocator/countdown
kill @e[type=item, nbt={Item:{id:"minecraft:magma_cream"}}]

# first try pt. 2 
execute as @a[tag=ftptig, tag=!seeker] at @s unless entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:totem_of_undying", Count:1b, tag:{display:{Name:'{"text":"First Try pt. 2"}'}}}]}] run clear @s minecraft:totem_of_undying
execute as @a[tag=ftptig, tag=!seeker] at @s unless entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:totem_of_undying", Count:1b, tag:{display:{Name:'{"text":"First Try pt. 2"}'}}}]}] run replaceitem entity @s weapon.offhand minecraft:totem_of_undying{display:{Name:'{"text":"First Try pt. 2"}'}}
execute as @a[tag=ftptig, tag=!seeker, nbt={HurtTime:10s}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 1 1.5 1 .05 100 force
execute as @a[tag=ftptig, tag=!seeker, nbt={HurtTime:10s}] at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1
execute as @a[tag=ftptig, tag=!seeker, nbt={HurtTime:10s}] at @s run tag @s add invince
execute as @a[tag=ftptig, tag=!seeker, nbt={HurtTime:10s}] at @s run schedule function has:clearinvince 5s 
execute as @a[tag=ftptig, tag=!seeker, nbt={HurtTime:10s}] at @s run effect give @s minecraft:invisibility 5 1 true
execute as @a[tag=ftptig, tag=!seeker, nbt={HurtTime:10s}] at @s run tag @s remove ftptig
execute as @a[tag=!ftptig] at @s if score Timer Timer matches 2.. run clear @s minecraft:totem_of_undying

# rift ripper
execute as @e[type=item, nbt={Item:{id:"minecraft:popped_chorus_fruit"}}] at @s if entity @s[nbt={OnGround:1b}] run function has:portal
execute as @e[type=minecraft:armor_stand,tag=portalO] at @s run particle minecraft:dust .7 0 1 1 ~ ~1.5 ~ .01 .5 .3 1 15 force

execute as @e[type=item, nbt={Item:{id:"minecraft:phantom_membrane"}}] at @s if entity @s[nbt={OnGround:1b}] run function has:portal
execute as @e[type=minecraft:armor_stand,tag=portalC] at @s run particle minecraft:dust .7 .7 .7 1.5 ~ ~1.5 ~ .01 .5 .3 1 15 force

execute as @a[tag=ripper] at @s if score @s UUID1 = @e[type=minecraft:armor_stand,tag=portalC,limit=1,sort=random] portalThrower run scoreboard players add @s portalTime 1
# execute as @a[tag=ripper] at @s if score @s portalTime matches 300.. run function has:portalkill

scoreboard players add @a[tag=ripper] tpTime 1
scoreboard players add @a[tag=seeker] tpTime 1
execute as @a[tag=ripper,scores={tpTime=40..}] at @s if score @s UUID1 = @e[type=minecraft:armor_stand,tag=portalO,distance=...5,limit=1,sort=nearest] portalThrower run function has:portaltp 
execute as @a[tag=ripper,scores={tpTime=40..}] at @s if score @s UUID1 = @e[type=minecraft:armor_stand,tag=portalC,distance=...5,limit=1,sort=nearest] portalThrower run function has:portaltpt
execute as @a[tag=seeker,scores={tpTime=40..}] at @s if entity @e[type=minecraft:armor_stand,tag=portalO,distance=...5] run function has:portaltp 
execute as @a[tag=seeker,scores={tpTime=40..}] at @s if entity @e[type=minecraft:armor_stand,tag=portalC,distance=...5] run function has:portaltpt

# triangulator
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}}] run tag @r[tag=hider] add hidsec
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}}] run execute at @a[tag=seeker] run tp @p[tag=seeker] ~ ~ ~ facing entity @p[tag=hidsec]
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}}] run title @p[tag=hidsec] title [{"text":"THEY KNOW WHERE YOU ARE", "color":"dark_red"}]
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}}] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~
kill @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}}]
tag @a[tag=hidsec] remove hidsec

# bhop
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit_foot"}}] store result score @s UUID1 run data get entity @s Thrower[0]
execute as @a store result score @s UUID1 run data get entity @s UUID[0]
execute as @a if score @s UUID1 = @e[type=item,nbt={Item:{id:"minecraft:rabbit_foot"}},limit=1,sort=nearest] UUID1 run effect give @s jump_boost 5 3 true 
kill @e[type=item,nbt={Item:{id:"minecraft:rabbit_foot"}}]

# sneak 100
execute as @e[type=item,nbt={Item:{id:"minecraft:feather"}}] store result score @s UUID1 run data get entity @s Thrower[0]
execute as @a store result score @s UUID1 run data get entity @s UUID[0]
execute as @a if score @s UUID1 = @e[type=item,nbt={Item:{id:"minecraft:feather"}},limit=1,sort=nearest] UUID1 run effect give @s minecraft:invisibility 7 3 true
kill @e[type=item,nbt={Item:{id:"minecraft:feather"}}]

# psychedelics
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"}}] run function has:shroom
kill @e[type=item,nbt={Item:{id:"minecraft:warped_fungus"}}]

#stasis mine
execute as @e[type=item,nbt={Item: {id: "minecraft:end_crystal"}}] run tag @s add stm
execute as @e[type=item, tag=stm] run data merge entity @s {PickupDelay:18000s}
execute as @e[type=item,tag=stm] at @s if entity @a[distance=..4, tag=hider] as @a[distance=..4, tag=hider] at @s run tag @s add statsised
execute as @a[tag=statsised] run function has:stasis

# sugar crash
execute as @e[type=item,nbt={Item:{id:"minecraft:cookie"}}] run effect give @a[tag=seeker] minecraft:blindness 5 255 true
execute as @e[type=item,nbt={Item:{id:"minecraft:cookie"}}] run effect give @a[tag=seeker] minecraft:slowness 5 0 true
execute as @e[type=item,nbt={Item:{id:"minecraft:cookie"}}] run effect give @a[tag=seeker] minecraft:nausea 15 255 true
kill @e[type=item,nbt={Item:{id:"minecraft:cookie"}}]

# ecolocation
execute as @e[type=item,nbt={Item:{id:"minecraft:bone"}}] run effect give @a[tag=seeker] minecraft:blindness 3 255 true
execute as @e[type=item,nbt={Item:{id:"minecraft:bone"}}] run effect give @a[tag=hider,limit=2, sort=nearest] minecraft:glowing 3 0 true
kill @e[type=item,nbt={Item:{id:"minecraft:bone"}}]

# jingle bells
execute as @e[type=item,nbt={Item:{id:"minecraft:bell"}}] at @p[tag=hider] run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 
kill @e[type=item,nbt={Item:{id:"minecraft:bell"}}]

# space station gravity
execute as @a[tag=!fix] run attribute @s[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] forge:entity_gravity base set .04
execute as @a[tag=!fix] unless entity @s[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] unless entity @s[x=140, y=22, z=361, dx=-63, dy=100, dz=-54] run attribute @s forge:entity_gravity base set .08

# oat ability
execute as @e[x=60, y=28, z=271, dx=-3, dy=4,] run scoreboard players reset @s tiar
execute as @e[x=60, y=28, z=272, dx=-3, dy=4, dz=5] run scoreboard players add @s tiar 1
execute as @e if score @s tiar < @e[x=60, y=28, z=272, dx=-3, dy=4, dz=5, limit=1] tiar run tp 59. 28 271
execute if entity @e[scores={tiar=1000..}] run tp @a[scores={tiar=1000..}] 59. 28 271

# esb ladder
effect give @a[x=-217, y=29, z=277, dy=135] minecraft:levitation 1 7 true
effect clear @a[x=-217, y=29, z=278, dy=135]
effect clear @a[x=-216, y=29, z=277, dy=135]

# triggers
#spawn
scoreboard players enable @a[tag=admin] spawn
tp @a[scores={spawn=1..}] 123.5 34.00 239.5
scoreboard players reset @a[scores={spawn=1..}] spawn

#monster
scoreboard players enable @a[tag=admin] mons
effect give @a[scores={mons=1..}] minecraft:invisibility 999999 255 true
team join NoTag @a[scores={mons=1..}]
scoreboard players reset @a[scores={mons=1..}] mons

#tbc
scoreboard players enable Wonderbread470 tbc
tellraw @a[name=Wonderbread470,scores={tbc=1..}] ["",{"score":{"name":"timebread","objective":"x"}}," ",{"score":{"name":"timebread","objective":"y"}}," ",{"score":{"name":"timebread","objective":"z"}}]
scoreboard players reset @a[scores={tbc=1..}] tbc

#tnt on/off
scoreboard players enable @a[tag=admin] tnt
execute if score @a[tag=admin,limit=1] tnt matches 1.. as @e[type=tnt,nbt={Fuse:1s}] at @s run kill @s


#heartbeat off
scoreboard players enable @a[tag=admin] hbo
execute as @a[scores={hbo=1..}] run setblock -603 22 452 air
scoreboard players reset @a[scores={hbo=1..}] hbo

# air ship floating
execute as @a[x=-599,y=95,z=497,dx=-151,dy=-31,dz=-80, tag=!fix] run effect give @s minecraft:levitation 10 3 true
execute as @a[x=-599,y=101,z=497,dx=-151,dy=121,dz=-80, tag=!fix] run effect clear @s levitation
execute as @a[x=-599,y=95,z=497,dx=-151,dy=-31,dz=-80, tag=!fix] run scoreboard players add @s outBounds 1
execute as @a[x=-599,y=95,z=497,dx=-151,dy=-31,dz=-80,limit=1, tag=!fix] if score @s outBounds >= outBounds outBounds run tp @s[tag=!fix] -648.57 106.00 463.48
execute as @a[x=-599,y=95,z=497,dx=-151,dy=-31,dz=-80,limit=1, tag=!fix] if score @s outBounds >= outBounds outBounds run effect give @s[tag=!fix] blindness 4 255
execute as @a[scores={outBounds=210..}] run scoreboard players reset @s outBounds

# torney
execute if entity @a[x=137, y=34, z=251,dx=-.1] as @a[x=137, y=34, z=251,dx=-.1] at @s run tp @s 123.5 37.5 239.5
effect give @a[x=123, y=37, z=239, dx=0, dy=0, dz=0] minecraft:levitation 1 2
tp @a[x=123, y=41, z=239, dx=0, dy=0, dz=0] 120.5 54 239.5
execute as @a[x=123, y=51, z=239, dx=0, dy=0, dz=0] run tp @s 123.5 35 239.5

# floating heads
execute if entity @e[x=135, y=33., z=236, dy=0, type=armor_stand] run effect give 07805940-fccd-4fd6-8ac6-0edbc579e528 minecraft:levitation 1 0
execute if entity @e[x=135, y=33, z=243, dy=0, type=armor_stand] run effect give e434c034-7f5b-4138-90bd-1a04102bd1fa minecraft:levitation 1 0


# horror
execute if score @a[limit=1] start matches 8 run function has:ha/hajst

# random map
execute if entity @a[x=123, y=33, z=269.5, dx=1,tag=!rvoted] run function has:ranmapstart

# minecart
execute as @e[x=-225,y=32,z=523,dx=0,dy=0,dz=0] at @s run tp @s -196 107 431
execute as @a[x=-225,y=32,z=522,dx=0,dy=1,dz=0] at @s run effect give @s blindness 2 1 true
execute as @e[x=-155,y=107,z=436,dx=0,dy=0,dz=0] run tp -227 32 504
execute as @a[x=-156,y=107,z=436,dx=0,dy=1,dz=0] at @s run effect give @s blindness 2 1 true

# dolphin grace
execute as @a at @s if block ~ ~ ~ water run effect give @s minecraft:dolphins_grace 1 1 true

# coords
execute as @a at @s store result score @s x run data get entity @s Pos[0]
execute as @a at @s store result score @s y run data get entity @s Pos[1]
execute as @a at @s store result score @s z run data get entity @s Pos[2]

#reset random pwrups
execute as @a at @s run tag @s[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] remove rtri
execute as @a at @s run tag @s[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] remove rss
execute as @a at @s run tag @s[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] remove rbh
execute as @a at @s run tag @s[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] remove rkc
execute as @a at @s run tag @s[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] remove rblp
execute as @a at @s run tag @s[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] remove rsnh
execute as @a at @s run tag @s[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] remove rpsy
execute as @a at @s run tag @s[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] remove rreloc

# stop ranmap
execute if entity @a[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] run scoreboard players reset ranmapcont ranmapcont
execute if entity @a[x=164, y=21, z=286, dx=-62, dy=41, dz=-75] run scoreboard players set .random random 0

tellraw @a[tag=tickTest] {"text":"tick working"}