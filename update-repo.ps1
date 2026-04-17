Set-Location "C:\Users\PHNID\Downloads\SensualMassage-main\SensualMassage-main"

git add .

$status = git status --porcelain
if (-not $status) {
    Write-Host "No changes to commit."
    exit
}

git commit -m "Update website files"
git push origin main
