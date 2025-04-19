$extensionsFile = "$env:USERPROFILE\.local\share\chezmoi\AppData\Roaming\Code\User\extensions.json"

if (Test-Path $extensionsFile) {
    $extensions = Get-Content $extensionsFile | ConvertFrom-Json

    foreach ($ext in $extensions.recommendations) {
        Write-Host "Installando estensione: $ext"
        code --install-extension $ext
    }
} else {
    Write-Host "Il file $extensionsFile non è stato trovato."
}
