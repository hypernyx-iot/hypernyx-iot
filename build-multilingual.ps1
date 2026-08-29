# Build script for multilingual Hypernyx site
# Builds both English and Persian versions simultaneously

Write-Host "Building Hypernyx multilingual site..." -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Clear previous build
if (Test-Path "_site") {
    Remove-Item -Path "_site" -Recurse -Force
    Write-Host "Cleared previous build" -ForegroundColor Yellow
}

# Install dependencies
Write-Host "Installing dependencies..." -ForegroundColor Yellow
bundle install

Write-Host ""
Write-Host "Building site with both languages..." -ForegroundColor Yellow
bundle exec jekyll build

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "Build completed successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "Generated directories:" -ForegroundColor Cyan
Write-Host "  - _site/en/  (English)" -ForegroundColor White
Write-Host "  - _site/fa/  (Persian/Farsi - RTL)" -ForegroundColor White
Write-Host "========================================" -ForegroundColor Green
