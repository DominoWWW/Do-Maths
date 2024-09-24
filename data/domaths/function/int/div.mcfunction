#> Parameters: a, b, output
$scoreboard players set a doMaths $(a)
$scoreboard players set b doMaths $(b)
$scoreboard players set c doMaths $(a)
execute store result storage domaths:div q int 1 run scoreboard players operation a doMaths /= b doMaths
execute store result storage domaths:div m int 1 run scoreboard players operation b doMaths *= a doMaths
execute store result storage domaths:div r int 1 run scoreboard players operation c doMaths -= b doMaths
$return run data get storage domaths:div $(output) 1
#> Outputs: quotient, multiple, remainder