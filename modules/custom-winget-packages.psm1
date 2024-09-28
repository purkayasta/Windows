
function InstallVisualStudioCode {
    Write-Host "🎈 Installing Visual Studio Code 🎈"
    try {
        winget install --id Microsoft.VisualStudioCode --override "/verysilent /suppressmsgboxes /tasks=!runCode,desktopicon,quicklaunchicon,addcontextmenufiles,addcontextmenufolders,associatewithfiles,addtopath" --silent --no-upgrade --accept-package-agreements --accept-source-agreements --disable-interactivity
        Write-Host "✅ Visual Studio Code installed successfully."
    } catch {
        Write-Host "❌ Installation failed: $_"
    }
}



Export-ModuleMember -Function InstallVisualStudioCode
