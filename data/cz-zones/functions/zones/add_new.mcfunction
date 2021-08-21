summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["cz_zone","cz_zone_10"],CustomName:'{"text":"CZ Zone","color":"green"}'}

execute as @s if entity @e[tag=cz_zone,distance=..10] run forceload add ~ ~
execute as @s if entity @e[tag=cz_zone,distance=..10] run tellraw @s {"text":"CZ Zone succesfully added to your world.","color":"red"}