$apps =
'Obsidian.Obsidian',
'Notion.Notion',
'MoonchildProductions.PaleMoon',
'Mozilla.Firefox',
'Google.Chrome',
'Brave.Brave',
'SublimeHQ.SublimeText.4',
'JanDeDobbeleer.OhMyPosh',
'Git.Git',
'Insomnia.Insomnia',
'WinSCP.WinSCP'

function VisualStudioCodeCustomInstallation {
    Write-Host "🎈 Installing Visual Studio Code 🎈"
    winget install --id Microsoft.VisualStudioCode --override "/verysilent /suppressmsgboxes /tasks=!runCode,desktopicon,quicklaunchicon,addcontextmenufiles,addcontextmenufolders,associatewithfiles,addtopath" --silent --no-upgrade --accept-package-agreements --accept-source-agreements --disable-interactivity
}

# Install packages form winge

Write-Host "Installing packages from winget....."
foreach ($app in $apps) {
    Write-Host "Installing: $app"
    winget install --id $app --accept-package-agreements --accept-source-agreements --silent --no-upgrade --disable-interactivity --source winget
}
Write-Host "Installing Applicaiton with custom instruction.."
VisualStudioCodeCustomInstallation



Write-Host "All the packages have been installed. Thanks, See you again. ✌️"
Write-Host "Its better to restart your machine now. 💻💪"

