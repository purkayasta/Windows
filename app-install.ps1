Import-Module .\modules\custom-winget-packages.psm1;
Import-Module .\modules\packages.psm1;

Write-Host "Installing packages from winget....."
foreach ($app in GetRecommendedApplications) {
    Write-Host "Installing: $app"
    winget install --id $app --accept-package-agreements --accept-source-agreements --silent --no-upgrade --disable-interactivity --source winget
}

Write-Host "Installing Applicaiton with custom instructions.."
InstallVisualStudioCode


Write-Host "All the packages have been installed. Thanks, See you again. ✌️"
Write-Host "Its better to restart your machine now. 💻💪"

