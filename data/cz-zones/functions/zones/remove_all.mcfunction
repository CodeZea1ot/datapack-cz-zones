execute as @e[tag=cz_zone] at @s run forceload remove ~ ~
kill @e[tag=cz_zone]

function cz-zones:gui/clear
tellraw @s {"text":"All CZ Zones succesfully removed from your world.","color":"dark_green"}
function cz-zones:sounds/success
function cz-zones:gui/offer_menu