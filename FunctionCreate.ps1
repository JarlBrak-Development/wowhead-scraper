$data = @(
    @(
        [PSCustomObject]@{
            function = "Healthstone_SpellName";
            spellID = "item=5512"
        },
        [PSCustomObject]@{
            function = "PotionofSpectralIntellect_SpellName";
            spellID = "item=171273"
        },
        [PSCustomObject]@{
            function = "SpiritualManaPotion_SpellName";
            spellID = "item=171268"
        }
    )
)

foreach ($item in $data)
{
    .\Scaper.ps1 -functionName $item.function -spellID $item.spellID
}