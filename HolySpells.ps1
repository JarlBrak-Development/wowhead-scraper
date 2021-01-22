$data = @(
    @(
        [PSCustomObject]@{
            function = "AngelicFeather_SpellName";
            spellID = "spell=121536"
        },
        [PSCustomObject]@{
            function = "Apotheosis_SpellName";
            spellID = "spell=200183"
        },
        [PSCustomObject]@{
            function = "BindingHeal_SpellName";
            spellID = "spell=32546"
        },
        [PSCustomObject]@{
            function = "CircleofHealing_SpellName";
            spellID = "spell=204883"
        },
        [PSCustomObject]@{
            function = "DesperatePrayer_SpellName";
            spellID = "spell=19236"
        },
        [PSCustomObject]@{
            function = "DivineHymn_SpellName";
            spellID = "spell=64843"
        },
        [PSCustomObject]@{
            function = "DivineStar_SpellName";
            spellID = "spell=110744"
        },
        [PSCustomObject]@{
            function = "DispelMagic_SpellName";
            spellID = "spell=528"
        },
        [PSCustomObject]@{
            function = "Fade_SpellName";
            spellID = "spell=586"
        },
        [PSCustomObject]@{
            function = "FlashHeal_SpellName";
            spellID = "spell=2061"
        },
        [PSCustomObject]@{
            function = "GuardianSpirit_SpellName";
            spellID = "spell=47788"
        },
        [PSCustomObject]@{
            function = "Halo_SpellName";
            spellID = "spell=120517"
        },
        [PSCustomObject]@{
            function = "Heal_SpellName";
            spellID = "spell=2060"
        },
        [PSCustomObject]@{
            function = "HolyFire_SpellName";
            spellID = "spell=14914"
        },
        [PSCustomObject]@{
            function = "HolyNova_SpellName";
            spellID = "spell=132157"
        },
        [PSCustomObject]@{
            function = "HolyWordChastise_SpellName";
            spellID = "spell=88625"
        },
        [PSCustomObject]@{
            function = "HolyWordSalvation_SpellName";
            spellID = "spell=265202"
        },
        [PSCustomObject]@{
            function = "HolyWordSanctify_SpellName";
            spellID = "spell=34861"
        },
        [PSCustomObject]@{
            function = "HolyWordSerenity_SpellName";
            spellID = "spell=2050"
        },
        [PSCustomObject]@{
            function = "LeapofFaith_SpellName";
            spellID = "spell=73325"
        },
        [PSCustomObject]@{
            function = "PowerInfusion_SpellName";
            spellID = "spell=10060"
        },
        [PSCustomObject]@{
            function = "PowerWordFortitude_SpellName";
            spellID = "spell=21562"
        },
        [PSCustomObject]@{
            function = "PowerWordShield_SpellName";
            spellID = "spell=17"
        },
        [PSCustomObject]@{
            function = "PrayerofHealing_SpellName";
            spellID = "spell=596"
        },
        [PSCustomObject]@{
            function = "PrayerofMending_SpellName";
            spellID = "spell=33076"
        },
        [PSCustomObject]@{
            function = "Purify_SpellName";
            spellID = "spell=527"
        },
        [PSCustomObject]@{
            function = "Renew_SpellName";
            spellID = "spell=139"
        },
        [PSCustomObject]@{
            function = "ShadowWordDeath_SpellName";
            spellID = "spell=32379"
        },
        [PSCustomObject]@{
            function = "ShadowWordPain_SpellName";
            spellID = "spell=589"
        },
        [PSCustomObject]@{
            function = "Smite_SpellName";
            spellID = "spell=585"
        },
        [PSCustomObject]@{
            function = "SymbolofHope_SpellName";
            spellID = "spell=64901"
        },
        [PSCustomObject]@{
            function = "WrathfulFaerie_SpellName";
            spellID = "spell=342132"
        },
        [PSCustomObject]@{
            function = "WeakenedSoul_SpellName";
            spellID = "spell=6788"
        },
        [PSCustomObject]@{
            function = "FlashConcentration_SpellName";
            spellID = "spell=336266"
        },
        [PSCustomObject]@{
            function = "SurgeofLight_SpellName";
            spellID = "spell=109186"
        },
        [PSCustomObject]@{
            function = "ResonantWords_SpellName";
            spellID = "spell=337947"
        },
        [PSCustomObject]@{
            function = "FaeGuardians_SpellName";
            spellID = "spell=327661"
        },
        [PSCustomObject]@{
            function = "BoonoftheAscended_SpellName";
            spellID = "spell=325013"
        },
        [PSCustomObject]@{
            function = "Mindgames_SpellName";
            spellID = "spell=323673"
        },
        [PSCustomObject]@{
            function = "AscendedBlast_SpellName";
            spellID = "spell=325315"
        },
        [PSCustomObject]@{
            function = "AscendedNova_SpellName";
            spellID = "spell=325020"
        },
        [PSCustomObject]@{
            function = "UnholyNova_SpellName";
            spellID = "spell=324724"
        }
    )
)

foreach ($item in $data)
{
    .\Scaper.ps1 -functionName $item.function -spellID $item.spellID
}