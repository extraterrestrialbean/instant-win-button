scoreboard players enable @a give_button
execute as @a[scores={give_button=1..},gamemode=creative] run function winbutton:give_button
execute as @a[scores={give_button=1..},gamemode=creative] run tellraw @a [{selector: "@a[scores={give_button=1..},gamemode=creative]",},{text:" gave themselves a Win Button!"}]
execute as @a[scores={give_button=1..},gamemode=!creative] run tellraw @s {text:"Only creative mode players can use this command!",color:"red"}
scoreboard players reset @a[scores={give_button=1..}] give_button