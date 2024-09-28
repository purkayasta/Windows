Import-Module .\modules\custom-winget-packages.psm1;

$apps =
'Git.Git',
'GitHub.cli',
'Obsidian.Obsidian',
'Notion.Notion',
'TheBrowserCompany.Arc',
'Mozilla.Firefox',
'Google.Chrome',
'Brave.Brave',
'SublimeHQ.SublimeText.4',
'JanDeDobbeleer.OhMyPosh',
'Insomnia.Insomnia',
'WinSCP.WinSCP',
'Termius.Termius',
'Microsoft.PowerToys',
'Microsoft.Sysinternals.ZoomIt',
'Microsoft.Sysinternals.TCPView',
'Fork.Fork',
'DevToys-app.DevToys'

# Install packages form winget

Write-Host "Installing packages from winget....."
foreach ($app in $apps) {
    Write-Host "Installing: $app"
    winget install --id $app --accept-package-agreements --accept-source-agreements --silent --no-upgrade --disable-interactivity --source winget
}

Write-Host "Installing Applicaiton with custom instructions.."
InstallVisualStudioCode


Write-Host "All the packages have been installed. Thanks, See you again. ✌️"
Write-Host "Its better to restart your machine now. 💻💪"

