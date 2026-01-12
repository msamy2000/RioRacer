# Dog vs. Street - Chrome Extension

## Quick Links
- **Website**: https://msamy2000.github.io/rioracer/
- **Extension**: Load from `extension/` folder

## Extension Installation (Testing)

### Load Unpacked (For Local Testing)
1. Open Chrome and go to `chrome://extensions/`
2. Enable **Developer mode** (top right toggle)
3. Click **Load unpacked**
4. Select the `extension` folder
5. Click the extension icon in toolbar to play!

### Build for Distribution
```powershell
# Run the build script
.\build-extension.ps1

# This creates: rioracer-extension-v1.4.5.zip
```

### Upload to Chrome Web Store
1. Go to [Chrome Web Store Developer Dashboard](https://chrome.google.com/webstore/devconsole)
2. Pay $5 one-time developer fee (if first time)
3. Click **New Item**
4. Upload `rioracer-extension-v1.4.5.zip`
5. Fill in store listing details
6. Submit for review (1-3 days)

## Version Synchronization

Both website and extension use version **1.4.5**:
- `index.html` → Shows `v1.4.5` in version tag
- `extension/manifest.json` → `"version": "1.4.5"`

When updating:
1. Make changes to main files
2. Test on website (GitHub Pages auto-deploys)
3. Run `build-extension.ps1` to package
4. Upload new version to Chrome Web Store

## Firebase Leaderboard

Both versions share the **same** Firebase database:
- Website players and extension players see the **same** Top 10
- Global competition across all platforms!

## Files

### Extension-Specific
- `extension/manifest.json` - Chrome extension configuration
- `extension/background.js` - Click handler (opens new tab)
- `extension/icons/` - Extension icons (16px, 48px, 128px)

### Shared Files (Copied from Root)
- `extension/index.html` - Game page
- `extension/style.css` - Styles
- `extension/script.js` - Game logic + Firebase
- `extension/graphics/` - All game assets

## Icon Customization

Current icons use the game cover as placeholder. For better branding:
1. Create square icons at 16px, 48px, and 128px
2. Save as PNG with transparency
3. Replace files in `extension/icons/`
4. Rebuild with `build-extension.ps1`
