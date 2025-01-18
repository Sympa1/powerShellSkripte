# Push-Script (push.ps1)
$repoPath = "C:\Dein\Pfad"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Wechsel zum Repository-Verzeichnis
Set-Location -Path $repoPath

# Status überprüfen
$status = git status --porcelain
if ($status) {
    Write-Host "Changes detected. Preparing to commit and push..." -ForegroundColor Yellow
    
    # Alle Änderungen stagen
    git add .
    
    # Commit erstellen
    git commit -m "Automatic commit at $timestamp"
    
    # Push durchführen
    Write-Host "Pushing changes to remote repository..." -ForegroundColor Green
    git push
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Push successful!" -ForegroundColor Green
    } else {
        Write-Host "Push failed!" -ForegroundColor Red
    }
} else {
    Write-Host "No changes to commit." -ForegroundColor Blue
}