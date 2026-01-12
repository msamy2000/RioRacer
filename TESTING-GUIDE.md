# Testing the Chrome Extension Locally

## Load Unpacked Extension

1. **Open Chrome Extensions Page**
   - Navigate to `chrome://extensions/`
   - OR: Menu (⋮) → Extensions → Manage Extensions

2. **Enable Developer Mode**
   - Toggle the **Developer mode** switch in the top-right corner

3. **Load the Extension**
   - Click **Load unpacked**
   - Navigate to: `C:\Users\emosamy\Antigravity\RioRacer\extension`
   - Click **Select Folder**

4. **Test the Extension**
   - Look for "Dog vs. Street" in your extensions list
   - The extension icon should appear in Chrome's toolbar
   - Click the icon → Game opens in a new tab!

## What to Verify

✅ **Icon Click**: Opens game in new tab (not popup)  
✅ **Full Screen**: Game uses entire tab viewport  
✅ **Firebase**: Leaderboard loads and shows same scores as website  
✅ **Graphics**: All assets (dog, obstacles, background) load correctly  
✅ **Gameplay**: Jump, collision, score work as expected  
✅ **Version**: Bottom-right shows "v1.4.5"  

## Troubleshooting

### Extension Won't Load
- **Error**: "Manifest file is missing or unreadable"
  - **Fix**: Verify `extension/manifest.json` exists

### Game Doesn't Open
- **Check**: Browser console for errors (F12)
- **Verify**: `background.js` syntax is correct

### Assets Don't Load
- **Check**: All files copied to `extension/graphics/`
- **Fix**: Re-run `build-extension.ps1`

### Firebase Doesn't Work
- **Check**: Network tab shows requests to `firestore.googleapis.com`
- **Verify**: Internet connection active
- **Note**: CSP might block Firebase - check manifest `host_permissions`

## Next Steps

Once local testing passes:
1. Run `build-extension.ps1` to create zip file
2. Upload `rioracer-extension-v1.4.5.zip` to Chrome Web Store
3. Wait 1-3 days for review
4. Extension goes live!
