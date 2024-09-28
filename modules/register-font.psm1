
$fonts_directory = (New-Object -ComObject Shell.Application).Namespace(0x14);

function InstallFonts {
    param(
        [string]$fontLocation
    )
    Get-ChildItem $fontLocation\*.ttf -Recurse | ForEach-Object {
        $fileName = $_.Name;
        if (-not (Test-Path -Path "C:\Windows\fonts\$fileName")) {
            $fonts_directory.CopyHere($_.FullName);
        }
    }
    RestartFontServices;
}

function RestartFontServices {
    Write-Output "Stopping font services";
    Stop-Service -Name "FontCache", "FontCache3.0.0.0";

    # Delete all .dat files starting with “FontCache”.
    # C:\Windows\ServiceProfiles\LocalService\AppData\Local


    Start-Service -Name "FontCache", "FontCache3.0.0.0";
    Write-Output "Font cache refreshed... You are good to go!";
}