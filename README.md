![Display](/display-bedrock.png)

# display-bedrock
Display Blocks and Items for Minecraft Bedrock Edition.

## Installation
1. Download the [mcaddon](https://github.com/kirbycope/display-bedrock/raw/main/display-bedrock.mcaddon)
1. Double-click the `.mcaddon` file
1. Edit world
   - Activate the Behavior pack
   - Activate the Resource pack

## Tips
1. Type `/summon display:block ~ ~ ~ ~ ~ ` to see the suggestions.
1. Type `/summon display:item ~ ~ ~ ~ ~ ` to see the suggestions.
1. When summoning, replace `~ ~ ~ ~ ~` with ` ~ ~ ~ 0 ~` or ` ~ ~ ~ 90 ~` to rotate with the grid.
1. You can teleport the "block" or "item" and rotate it, try `teleport @e[​type=display:block] ~ ~ ~ ~90 ~90`.

## Usage
To summon a "cobblestone" block, run `summon display:block` (cobblestone is the default texture).
To summon a "stone" block, run `summon display:block ~ ~ ~ ~ ~ stone` (stone is an event that turns the block to stone).

To summon an "apple" item, run `summon display:item` (apple is the default texture).
To summon a "diamond" item, run `summon display:item ~ ~ ~ ~ ~ diamond`.

To scale a block to 1/10th, run `event entity @e[​type=display:block] scale_0.1`.
To scale an item to 100% (50% is the default), run `event entity @e[​type=display:item] scale_1.0`.

To add collision to a block, run `event entity @e[​type=display:block] add_collision`.
To add collision to an item, run `event entity @e[​type=display:item] add_collision`.

## Floating Platform Demo

Place two armor stands and tag one "A" and the other "B". Stand between them and run `function summon-cobblestone-platform`. The platform should move between the two armor stands.

## Tiny House Demo
Run `function summon-tiny-house`.
