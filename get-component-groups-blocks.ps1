# These are used in the Behavior Entity definition, within the "component_groups" section.

# development_behavior_packs\Display Block\entities\block.behavior.json

#"display:acacia_trapdoor" : {
#    "minecraft:variant": {
#        "value": 0
#    }
#},

$counter = 0
Get-ChildItem -Path "C:\GitHub\bedrock-samples\resource_pack\textures\blocks" -File -Recurse | 
    Where-Object { $_.Extension -eq ".png" } | 
    ForEach-Object {
        $relativePath = $_.FullName.Substring(("C:\GitHub\bedrock-samples\resource_pack\textures\blocks").Length + 1) -replace '\\', '/'
        $texturePath = $relativePath -replace '\.png$', ''
        $displayName = $texturePath.Split('/')[-1] # Assuming the display name is the last part of the path
        $result = @"
"display:$displayName" : {
    "minecraft:variant": {
        "value": $counter
    }
},
"@
        $counter++
        $result
    }
