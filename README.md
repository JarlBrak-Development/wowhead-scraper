# wowhead-scraper
1. Install the latest PowerShell 7
2. Add your data to FunctionCreate.ps1

![](https://i.imgur.com/8Bwetqh.png)

3. Run .\FunctionCreate.ps1 in a PowerShell 7 console
4. Copy over your cs functions from FunctionOutput.cs to your rotation
![](https://i.imgur.com/oCBegHV.png)

5. Add ```Settings.Add(new Setting("Game Client Language", new List<string>(){"English", "Deutsch", "Español", "Français", "Italiano", "Português Brasileiro", "Русский", "한국어", "简体中文"}, "English"));``` to your LoadSettings() method
6. Add ```Language = GetDropDown("Game Client Language");``` to your Initialize() method
7. Add ```private static string Language = "English";``` to the top of your rotation
8. Add the new spell methods to your spell lists. This should be done in the Initialization method like the following images.
![](https://i.imgur.com/aJeL482.png)
