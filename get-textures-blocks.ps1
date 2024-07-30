# These are used in the Resource Entity definition, within the "textures" section.

# development_resource_packs\Display Block\entity\block.entity.json

#"variant_0": "textures/blocks/acacia_trapdoor",

$counter = 0
Get-ChildItem -Path "C:\GitHub\bedrock-samples\resource_pack\textures\blocks" -File -Recurse | 
    Where-Object { $_.Extension -eq ".png" } | 
    ForEach-Object {
        $variant = "variant_$counter"
        $relativePath = $_.FullName.Substring(("C:\GitHub\bedrock-samples\resource_pack\textures\blocks").Length + 1) -replace '\\', '/'
        $texturePath = $relativePath -replace '\.png$', ''
        $result = "`"$variant`": `"textures/blocks/$texturePath`","
        $counter++
        [PSCustomObject]@{ Result = $result }
    } | Select-Object -ExpandProperty Result
