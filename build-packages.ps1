# RioRacer Distribution Package Builder
# Creates ZIP files for itch.io and Newgrounds

Write-Host "Building RioRacer distribution packages..." -ForegroundColor Cyan

# Create dist directory
New-Item -ItemType Directory -Path "dist" -Force | Out-Null

# Files to include
$files = @(
    "index.html",
    "style.css",
    "script.js",
    "manifest.json",
    "sw.js",
    "robots.txt",
    "sitemap.xml",
    "gfx_*"
)

# Create itch.io package
Write-Host "`nCreating itch.io package..." -ForegroundColor Yellow
Compress-Archive -Path $files -DestinationPath "dist/rioracer-itchio.zip" -Force
Write-Host "✓ Created: dist/rioracer-itchio.zip" -ForegroundColor Green

# Create Newgrounds package (Same content as itch.io, just for clarity)
Write-Host "`nCreating Newgrounds package..." -ForegroundColor Yellow
Compress-Archive -Path $files -DestinationPath "dist/rioracer-newgrounds.zip" -Force
Write-Host "✓ Created: dist/rioracer-newgrounds.zip" -ForegroundColor Green

Write-Host "`nPackages ready in ./dist/" -ForegroundColor Cyan
Write-Host "See distribution_guide.md for upload instructions." -ForegroundColor White
