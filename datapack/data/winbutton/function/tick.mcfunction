scoreboard players enable @a give_button
execute as @a[scores={give_button=1..},gamemode=creative] run function winbutton:give_button
execute as @a[scores={give_button=1..},gamemode=creative] run tellraw @a [{selector: "@a[scores={give_button=1..},gamemode=creative]",},{text: " gave themselves a Win Button!"}]
scoreboard players reset @a[scores={give_button=1..},gamemode=creative] give_button