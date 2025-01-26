# Pull-Script (pull.ps1)
$repoPath = "C:\Dein\Pfad"

# Wechsel zum Repository-Verzeichnis
Set-Location -Path $repoPath

# Git Pull ausführen
Write-Host "Pulling changes from remote repository..." -ForegroundColor Green
git pull
if ($LASTEXITCODE -eq 0) {
    Write-Host "Pull successful!" -ForegroundColor Green
} else {
    Write-Host "Pull failed!" -ForegroundColor Red
}