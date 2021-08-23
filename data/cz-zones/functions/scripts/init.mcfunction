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



#Install all required scoreboard objectives
function cz-zones:scripts/install

#init message
tellraw @a [{"text":"Protected Zones by Code_Zealot installed and running","color":"yellow"}]

#Init Settings
scoreboard players set $cz-zones-reload-menu cz_bool 1
scoreboard players set $cz-zones-particles cz_bool 1

#Initialized = true
scoreboard players set $cz-zones-init cz_bool 1
