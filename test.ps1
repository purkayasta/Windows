Import-Module .\modules\packages.psm1;



foreach ($i in GetRecommandedApps)
{
    Write-Host $i
}