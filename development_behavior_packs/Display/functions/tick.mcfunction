# Platform 01 - Move from Point A to Point B
execute as @e[tag=Platform01,scores={p01d=1}] at @s run tp @s ~ ~ ~0.1

# Platform 01 - Change direction from Point B to Point A
execute as @e[tag=Platform01,scores={p01d=1}] at @s if entity @e[tag=B,r=1] run scoreboard players set @e[tag=Platform01] p01d 0

# Platform 01 - Move from Point B to Point A
execute as @e[tag=Platform01,scores={p01d=0}] at @s run tp @s ~ ~ ~-0.1

# Platform 01 - Change direction from Point A to Point B
execute as @e[tag=Platform01,scores={p01d=0}] at @s if entity @e[tag=A,r=1] run scoreboard players set @e[tag=Platform01]  p01d 1
