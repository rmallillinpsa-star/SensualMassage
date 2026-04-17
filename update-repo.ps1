Set-Location "C:\Users\PHNID\Downloads\SensualMassage-main\SensualMassage-main"

git add .

$status = git status --porcelain
if (-not $status) {
    Write-Host "No changes to commit."
    git fetch origin main
    git pull --rebase origin main
    git push origin main
    exit
}

git commit -m "Update website files"
git fetch origin main
git pull --rebase origin main
git push origin main
