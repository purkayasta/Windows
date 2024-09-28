
Import-Module .\modules\unzip.psm1;
Import-Module .\modules\register_font.psm1;

$pre_installed_font = "C:\Fonter\";

# Download the font files
# Unzip the font into a fixed location
# Install the fonts from that location

Get-Command -Name Unzip
Get-Command -Name InstallFonts


$base_url = "https://github.com/ryanoasis/nerd-fonts/releases/download/";
$version = "v3.0.2/"
$font_name = "CodeNewRoman"
$file_extension = ".zip"


# $download_location = "C:\Fonter\"

# detect the operating system
# take input from user.
# search from local downloadable files.
# if found then install from local cache.
# if not found search it from nerd font web url.
# download it in the cache folder.
# unzip and install from the cache folder.


function getDownloadableUrl {
    param ($url, $version, $name, $extension)
    # validation
    return $url + $version + $name + $extension
}

function getDestinationUrl {
    param ($location, $fontname, $extension)
    return $location + $fontname + $extension
}


$inputUrl = getDownloadableUrl $base_url $version $font_name $file_extension
Write-Output $inputUrl

$outputUrl = getDestinationUrl $download_location $font_name $file_extension
Write-Output $outputUrl



# Start-BitsTransfer -Source $inputUrl -Description $outputUrl
Invoke-WebRequest -Uri $inputUrl -OutFile $outputUrl