execute as @s at @s if entity @e[tag=cz_zone,distance=..2] run data merge entity @e[tag=cz_zone,distance=..2,limit=1] {CustomNameVisible:1b}



execute as @s if entity @e[tag=cz_zone,distance=..2] run function cz-zones:gui/clear

execute unless entity @e[tag=cz_zone,distance=..2] run function cz-zones:gui/messages/nearby_zone_fail

execute as @s if entity @e[tag=cz_zone,distance=..2] run tellraw @s {"text":"CZ Zone succesfully revealed.","color":"dark_green"}
execute as @s if entity @e[tag=cz_zone,distance=..2] run function cz-zones:sounds/success
function cz-zones:gui/offer_menu