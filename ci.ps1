# ci.ps1 - Quick git commit and push script

# Prompt user for commit message
$commitMessage = Read-Host -Prompt "Enter commit message"

# Check if message is empty
if ([string]::IsNullOrWhiteSpace($commitMessage)) {
    Write-Host "Error: Commit message cannot be empty!" -ForegroundColor Red
    exit 1
}

# Run git commands
Write-Host "`nAdding files..." -ForegroundColor Cyan
git add .

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: git add failed!" -ForegroundColor Red
    exit 1
}

Write-Host "Committing changes..." -ForegroundColor Cyan
git commit -m "$commitMessage"

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: git commit failed!" -ForegroundColor Red
    exit 1
}

Write-Host "Pushing to remote..." -ForegroundColor Cyan
git push

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: git push failed!" -ForegroundColor Red
    exit 1
}

Write-Host "`n✅ Successfully committed and pushed!" -ForegroundColor Green