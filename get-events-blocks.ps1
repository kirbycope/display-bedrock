# These are used in the Behavior Entity definition, within the "events" section.

# development_behavior_packs\Display Block\entities\block.behavior.json

#"acacia_trapdoor": {
#    "add": {
#        "component_groups": [
#            "display:acacia_trapdoor"
#        ]
#    }
#},

Get-ChildItem -Path "C:\GitHub\bedrock-samples\resource_pack\textures\blocks" -File -Recurse | 
    Where-Object { $_.Extension -eq ".png" } | 
    ForEach-Object {
        $relativePath = $_.FullName.Substring(("C:\GitHub\bedrock-samples\resource_pack\textures\blocks").Length + 1) -replace '\\', '/'
        $texturePath = $relativePath -replace '\.png$', ''
        $displayName = $texturePath.Split('/')[-1] # Assuming the display name is the last part of the path
        $result = @"
"$displayName": {
    "add": {
        "component_groups": [
            "display:$displayName"
        ]
    }
},
"@
        $result
    }