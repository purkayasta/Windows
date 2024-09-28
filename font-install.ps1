Write-Host "Installing font with the help of OhMyPosh 🎈"

$fonts =
'CascadiaCode',
'CodeNewRoman',
'ComicShannsMono',
'FiraCode',
'GeistMono',
'Monaspace',
'Recursive',
'SourceCodePro',
'Meslo'

foreach ($font in $fonts) {
    oh-my-posh.exe font install $font
    Write-Host '---'
}