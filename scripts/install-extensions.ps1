$extensionsFile = "$env:USERPROFILE\.local\share\chezmoi\dot_AppData\Roaming\Code\Userextensions.json"

if (Test-Path $extensionsFile) {
    $extensions = Get-Content $extensionsFile | ConvertFrom-Json

    foreach ($ext in $extensions.recommendations) {
        Write-Host "Installando estensione: $ext"
        code --install-extension $ext
    }
} else {
    Write-Host "Il file $extensionsFile non è stato trovato."
}
