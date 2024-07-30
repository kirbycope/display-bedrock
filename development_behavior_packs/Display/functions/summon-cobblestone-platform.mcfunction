# 🄰 🄱 🄲
# 🄳 🄴 🄵
# 🄶 🄷 🄸

# Platform 01 - Summon each "block"
summon display:block ~-1 ~ ~-1 0 ~ cobblestone
summon display:block ~ ~ ~-1 0 ~ cobblestone
summon display:block ~1 ~ ~-1 0 ~ cobblestone
summon display:block ~-1 ~ ~ 0 ~ cobblestone
summon display:block ~ ~ ~ 0 ~ cobblestone
summon display:block ~1 ~ ~ 0 ~ cobblestone
summon display:block ~-1 ~ ~1 0 ~ cobblestone
summon display:block ~ ~ ~1 0 ~ cobblestone
summon display:block ~1 ~ ~1 0 ~ cobblestone

# Platform 01 - Add each "block" to the "group"
execute positioned ~ ~ ~ run tag @e[r=2,type=display:block] add Platform01

# Add collision to the "blocks"
event entity @e[tag=Platform01] add_collision

# Add a scoreboard to track the platform's direction
scoreboard objectives add p01d dummy "Platform 01 Direction"

# Add the scoreboard to the platform
scoreboard players set @e[tag=Platform01] p01d 1
