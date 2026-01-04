# How to Add Your Screenshots

## Quick Steps

You have 7 screenshots to add. Follow these steps:

### 1. Locate Your Screenshots
Your screenshots are likely in one of these locations:
- iPhone: Photos app → Screenshots album
- Simulator: Desktop (default save location)
- AirDrop: Downloads folder

### 2. Transfer to Mac
If screenshots are on your iPhone:
```bash
# Use AirDrop or connect via USB and import through Photos app
```

### 3. Rename and Copy Files

Open Terminal and run:

```bash
# Navigate to the user screenshots folder
cd /Users/rajaswamy.s/Waste/smart_waste_app/screenshots/user/

# If your screenshots are in Downloads, rename and copy them
# Replace IMG_XXXX with your actual file names

# Screenshot 1: Home dashboard
cp ~/Downloads/IMG_5314.PNG home_dashboard.png

# Screenshot 2: Home scrolled (recycling info)
cp ~/Downloads/IMG_5315.PNG home_scrolled.png

# Screenshot 3: Activity stats and rewards
cp ~/Downloads/IMG_5316.PNG activity_stats.png

# Screenshot 4: Profile screen
cp ~/Downloads/IMG_5317.PNG profile.png

# Screenshot 5: Settings main
cp ~/Downloads/IMG_5318.PNG settings.png

# Screenshot 6: Settings support section
cp ~/Downloads/IMG_5319.PNG settings_support.png

# Screenshot 7: Request pickup form
cp ~/Downloads/IMG_5320.PNG request_pickup.png
```

### 4. Verify Files
```bash
# Check that all files are there
ls -lh *.png

# You should see 7 PNG files
```

### 5. Commit to Git
```bash
# Go back to project root
cd /Users/rajaswamy.s/Waste

# Add the screenshots
git add smart_waste_app/screenshots/user/*.png

# Commit with a descriptive message
git commit -m "Add user interface screenshots for documentation"

# Push to GitHub
git push origin main
```

## Expected Files

After adding, you should have these files:
- ✅ home_dashboard.png (1170x2532)
- ✅ home_scrolled.png (1170x2532)
- ✅ activity_stats.png (1170x2532)
- ✅ profile.png (1170x2532)
- ✅ settings.png (1170x2532)
- ✅ settings_support.png (1170x2532)
- ✅ request_pickup.png (1170x2532)

## Alternative: Using Finder

1. Open Finder
2. Navigate to: `/Users/rajaswamy.s/Waste/smart_waste_app/screenshots/user/`
3. Drag and drop your screenshots from Photos/Downloads
4. Rename each file according to the list above
5. Use the git commands from step 5

## Troubleshooting

**Can't find screenshots?**
```bash
# Search for recent PNG files
find ~/Desktop ~/Downloads -name "*.PNG" -mtime -1
```

**Wrong file names?**
```bash
# Rename files in Terminal
cd /Users/rajaswamy.s/Waste/smart_waste_app/screenshots/user/
mv old_name.png new_name.png
```

**Need to resize?**
Your screenshots should already be the correct size from the device.

---

Once complete, your README will display all screenshots on GitHub! 🎉
