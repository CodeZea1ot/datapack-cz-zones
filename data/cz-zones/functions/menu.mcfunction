tellraw @s {"text":"*** Manage Zones ***","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click the options below to manage your zones","color":"gold"}]}}

#Add New Zone
tellraw @s {"text":"[ Add New Zone ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function cz-zones:zones/add_new"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to add a new zone at your location","color":"dark_green"}]}}

#Remove Nearby Zones
tellraw @s {"text":"[ Remove Nearby Zones ]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function cz-zones:zones/remove_nearby"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to remove all zones within 2 blocks of your location","color":"red"}]}}

#Remove All Zones
tellraw @s {"text":"[ Remove All Zones ]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function cz-zones:zones/remove_all"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to remove all zones in your world. Cannot be undone!","color":"red"}]}}

tellraw @s {"text":"*** Queries ***","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click the options below to perform various queries","color":"gold"}]}}

#Verify if your are in a zone
tellraw @s {"text":"[ Verify if you are in a zone ]","color":"gold","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function cz-zones:players/tests/is_in_zone"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to verify if you are currently in a zone","color":"gold"}]}}

tellraw @s {"text":"*** Global Settings ***","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click the options below to toggle global settings","color":"gold"}]}}

#Toggle show menu on reload
execute if score $cz-zones-reload-menu cz_bool matches 0 run tellraw @s {"text":"[ Enable Show Menu On Reload ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function cz-zones:settings/enable/show_menu_on_reload"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable menu to creative mode players on reload","color":"dark_green"}]}}
execute if score $cz-zones-reload-menu cz_bool matches 1 run tellraw @s {"text":"[ Disable Show Menu On Reload ]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function cz-zones:settings/disable/show_menu_on_reload"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable menu to creative mode players on reload","color":"red"}]}}

