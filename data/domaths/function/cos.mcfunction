#> Parameters: input
summon marker ~ ~ ~ {Tags:[domaths.temp, domaths.trigonometry.start]}
$execute as @n[tag=domaths.trigonometry.start] at @s run tp @s ~ ~ ~ ~$(input) ~
execute as @n[tag=domaths.trigonometry.start] at @s run summon marker ^1 ^ ^ {Tags:[domaths.temp, domaths.trigonometry.end]}

data modify storage domaths:cos cosStart set from entity @n[tag=domaths.trigonometry.start] Pos[0]
data modify storage domaths:cos cosEnd set from entity @n[tag=domaths.trigonometry.end] Pos[0]

execute store result score a doMaths run data get storage domaths:cos cosStart 1000000000
execute store result score b doMaths run data get storage domaths:cos cosEnd 1000000000
scoreboard players operation a doMaths -= b doMaths
execute store result storage domaths:cos cos double 0.000000001 run scoreboard players get a doMaths
return run data get storage domaths:cos cos 1

kill @e[tag=domaths.temp, limit=2]