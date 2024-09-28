
# Expand-Archive -Path C:\a.zip -DestinationPath C:\a

function Unzip {
    param (
        [string]$sourcePath,
        [string]$destinationPath
    )
    Write-Host "Source Path: $sourcePath";
    Write-Host "Destination Path: $destinationPath";
    Expand-Archive -Path $sourcePath -DestinationPath $destinationPath
}