$data = @(
    @(
        [PSCustomObject]@{
            function = "SpiritofRedemption_SpellName";
            spellID = 20711
        }
    )
)

foreach ($item in $data)
{
    .\Scaper.ps1 -functionName $item.function -spellID $item.spellID
}