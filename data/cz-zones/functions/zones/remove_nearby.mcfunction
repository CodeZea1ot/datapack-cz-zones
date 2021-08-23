function cz-zones:gui/clear

execute unless entity @e[tag=cz_zone,distance=..2] run function cz-zones:gui/messages/nearby_zone_fail

execute if entity @e[tag=cz_zone,distance=..2] run tellraw @s {"text":"Zone(s) removed.","color":"red"}
execute if entity @e[tag=cz_zone,distance=..2] run function cz-zones:sounds/success

execute as @e[tag=cz_zone,distance=..2] at @s run forceload remove ~ ~
kill @e[tag=cz_zone,distance=..2]

function cz-zones:gui/offer_menu

