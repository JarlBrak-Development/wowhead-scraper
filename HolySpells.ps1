$data = @(
    @(
        [PSCustomObject]@{
            function = "AngelicFeather_SpellName";
            spellID = "spell=121536"
        },
        [PSCustomObject]@{
            function = "Apotheosis_SpellName";
            spellID = "spell=200183"
        }
    )
)

foreach ($item in $data)
{
    .\Scaper.ps1 -functionName $item.function -spellID $item.spellID
}