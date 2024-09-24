summon marker ~ ~ ~ {Tags:[domaths.temp, domaths.trigonometry.start]}
$execute as @n[tag=domaths.trigonometry.start] at @s run tp @s ~ ~ ~ ~$(input) ~
execute as @n[tag=domaths.trigonometry.start] at @s run summon marker ^1 ^ ^ {Tags:[domaths.temp, domaths.trigonometry.end]}

data modify storage domaths:trigonometry sinStart set from entity @n[tag=domaths.trigonometry.start] Pos[2]
data modify storage domaths:trigonometry sinEnd set from entity @n[tag=domaths.trigonometry.start] Pos[2]

data modify storage domaths:trigonometry cosStart set from entity @n[tag=domaths.trigonometry.start] Pos[0]
data modify storage domaths:trigonometry cosEnd set from entity @n[tag=domaths.trigonometry.start] Pos[0]

kill @e[tag=domaths.temp, limit=2]