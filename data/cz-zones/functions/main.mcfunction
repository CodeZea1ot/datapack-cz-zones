###################################################################
#                                                                 #
# This Datapack was generated using a tool created by Code_Zealot #
#                                                                 #
#     Website: https://codezealot.com                             #
#     Channel: https://youtube.com/CodeZealot                     #
#     Twitter: @CodeZealotTuts                                    #
#                                                                 #
# --------------------------------------------------------------- #
#                         DATAPACK INFO                           #
# --------------------------------------------------------------- #
#                                                                 #
#     Author: Code_Zealot                                         #
#     URL: Listed Above                                           #
#                                                                 #
###################################################################

#If boolean objectives do not exist, create them
scoreboard objectives add cz_bool dummy
scoreboard objectives add cz_toggle dummy

#Run init.mcfunction, unless it has already been run
execute unless score $cz-zones-init cz_bool matches 1 run function cz-zones:scripts/init















#set to survival
#title @a[gamemode=!survival,tag=!in_cz_zone] actionbar {"text":"Leaving protected zone","color":"gold"}
gamemode survival @a[tag=!in_cz_zone,gamemode=!creative,gamemode=!spectator]
scoreboard players add @a cz_zone_tick 0
scoreboard players add @a[scores={cz_zone_tick=0..}] cz_zone_tick 1
tag @a[scores={cz_zone_tick=20}] remove in_cz_zone
scoreboard players set @a[scores={cz_zone_tick=21..}] cz_zone_tick 0



#10 block protection
#set to adventure
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if entity @e[tag=cz_zone_10,distance=..10] run gamemode adventure @s
execute as @a at @s if entity @e[tag=cz_zone_10,distance=..10] run tag @s add in_cz_zone

#100 block protection
#set to adventure
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if entity @e[tag=cz_zone_100,distance=..100] run gamemode adventure @s
execute as @a at @s if entity @e[tag=cz_zone_100,distance=..100] run tag @s add in_cz_zone

#1000 block protection
#set to adventure
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if entity @e[tag=cz_zone_1000,distance=..1000] run gamemode adventure @s
execute as @a at @s if entity @e[tag=cz_zone_1000,distance=..1000] run tag @s add in_cz_zone

#5000 block protection
#set to adventure
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if entity @e[tag=cz_zone_5000,distance=..5000] run gamemode adventure @s
execute as @a at @s if entity @e[tag=cz_zone_5000,distance=..5000] run tag @s add in_cz_zone