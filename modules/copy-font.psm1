function CopyFont {
    param (
        [string]$fileName,
        [string]$destinationPath
    )
    Write-Host "Files: $fileName .ttf";
    Write-Host "Destination: $destinationPath";

    Copy-Item -Path $fileName+'.ttf' -Destination $destinationPath -Recurse;

    Write-Host "Copying successfull.";
}
