# These are used in the Resource Entity definition, within the "textures" section.

# development_resource_packs\Display Block\entity\item.entity.json

#"variant_0": "textures/items/acacia_chest_boat",

$counter = 0
Get-ChildItem -Path "C:\GitHub\bedrock-samples\resource_pack\textures\items" -File -Recurse | 
    Where-Object { $_.Extension -eq ".png" } | 
    ForEach-Object {
        $variant = "variant_$counter"
        $relativePath = $_.FullName.Substring(("C:\GitHub\bedrock-samples\resource_pack\textures\items").Length + 1) -replace '\\', '/'
        $texturePath = $relativePath -replace '\.png$', ''
        $result = "`"$variant`": `"textures/items/$texturePath`","
        $counter++
        [PSCustomObject]@{ Result = $result }
    } | Select-Object -ExpandProperty Result
