# These are used in the Resource Entity Render Controller(s).
# Generates a list of Texture.variants using the provided `max` value.
# `get-component-groups-blocks.ps1` will output the variants and their values. Use the last value as the mas (below).

$max = 1089 # Blocks
#$max = 644 # Items

for ($i = 0; $i -le $max; $i++) {
    "`"Texture.variant_$i`","
}
