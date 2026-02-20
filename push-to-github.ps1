# PowerShell script to push to GitHub
# Run this script: Right-click -> Run with PowerShell

Write-Host "Pushing to GitHub..." -ForegroundColor Green

cd "c:\Users\HP\Desktop\Vera Cherni Catalao"

# Get GitHub token from GitHub CLI
$token = gh auth token

if ($token) {
    Write-Host "Token retrieved successfully" -ForegroundColor Green
    
    # Set remote URL with token
    git remote set-url origin "https://galzu369:$token@github.com/galzu369/vera-cherni-landing.git"
    
    # Push to GitHub
    Write-Host "Pushing files..." -ForegroundColor Yellow
    git push -u origin main
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "`nSuccess! Your code has been pushed to GitHub." -ForegroundColor Green
        Write-Host "Repository: https://github.com/galzu369/vera-cherni-landing" -ForegroundColor Cyan
    } else {
        Write-Host "`nPush failed. Please try using GitHub Desktop instead." -ForegroundColor Red
    }
} else {
    Write-Host "Could not retrieve GitHub token. Please run: gh auth login" -ForegroundColor Red
}
