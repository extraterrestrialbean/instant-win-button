scoreboard players enable @a give_button
execute as @a[scores={give_button=1..},gamemode=creative] run function winbutton:give_button
execute as @a[scores={give_button=1..},gamemode=creative] run tellraw @a [{selector: "@a[scores={give_button=1..},gamemode=creative]",},{translate:"tellraw.winbutton.give_button.success",fallback:" gave themself an Instant Win Button"}]
execute as @a[scores={give_button=1..},gamemode=!creative] run tellraw @s {translate:"tellraw.winbutton.give_button.failure.notcreative",fallback:"Only creative mode players can use this command!",color:"red"}
scoreboard players reset @a[scores={give_button=1..}] give_button