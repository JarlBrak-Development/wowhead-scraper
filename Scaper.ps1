Param(
    [Parameter(Mandatory=$true)]
    [string]$functionName,
    [Parameter(Mandatory=$true)]
    [string]$spellID
)

$prefixes = @("de", "es", "fr", "it", "pt", "ru", "ko", "cn", "www")

foreach ($prefix in $prefixes)
{
    $siteName = "https://$prefix.wowhead.com/" + $spellID
    $site = Invoke-RestMethod -uri $siteName
    $pattern = '<h1 class="heading-size-1">(?<spell>.*)</h1>'
    $tempMatch = ($site | Select-String $pattern -AllMatches)
    $tempMatch = ([regex]$pattern).Matches($site)
    $spellName = ($tempMatch.Groups.Where{$_.Name -like 'spell'}).Value
    switch ($prefix)
    {
        "de" {
            Write-Output ('private static string ' + $functionName + '()') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('{') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('    switch (Language)') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('    {') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('        case "Deutsch":') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('            return "' + $spellName + '";') | Out-File -Append -FilePath  .\FunctionOutput.cs
        }
        "es" {
            Write-Output ('        case "Español":') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('            return "' + $spellName + '";') | Out-File -Append -FilePath  .\FunctionOutput.cs
        }
        "fr" {
            Write-Output ('        case "Français":') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('            return "' + $spellName + '";') | Out-File -Append -FilePath  .\FunctionOutput.cs
        }
        "it" {
            Write-Output ('        case "Italiano":') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('            return "' + $spellName + '";') | Out-File -Append -FilePath  .\FunctionOutput.cs
        }
        "pt" {
            Write-Output ('        case "Português Brasileiro":') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('            return "' + $spellName + '";') | Out-File -Append -FilePath  .\FunctionOutput.cs
        }
        "ru" {
            Write-Output ('        case "Русский":') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('            return "' + $spellName + '";') | Out-File -Append -FilePath  .\FunctionOutput.cs
        }
        "ko" {
            Write-Output ('        case "한국어":') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('            return "' + $spellName + '";') | Out-File -Append -FilePath  .\FunctionOutput.cs
        }
        "cn" {
            Write-Output ('        case "简体中文":') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('            return "' + $spellName + '";') | Out-File -Append -FilePath  .\FunctionOutput.cs
        }
        "www" {
            Write-Output ('        default:') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('            return "' + $spellName + '";') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('    }') | Out-File -Append -FilePath  .\FunctionOutput.cs
            Write-Output ('}') | Out-File -Append -FilePath  .\FunctionOutput.cs
        }
    }
}

Write-Output ($functionName + '(),') | Out-File -Append -FilePath  .\FunctionList.cs

        