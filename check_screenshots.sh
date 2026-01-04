#!/bin/bash

# Screenshot Addition Helper Script
# This script will help you add your screenshots to the repository

echo "🖼️  Smart Waste App - Screenshot Addition Helper"
echo "=================================================="
echo ""

# Check if we're in the right directory
if [ ! -d "smart_waste_app/screenshots/user" ]; then
    echo "❌ Error: Please run this script from /Users/rajaswamy.s/Waste"
    echo "   Current directory: $(pwd)"
    exit 1
fi

echo "✅ You're in the correct directory"
echo ""

# List what we need
echo "📋 Required Screenshots (7 total):"
echo ""
echo "1. home_dashboard.png - Main home screen with greeting and stats"
echo "2. home_scrolled.png - Home scrolled to show recycling process"
echo "3. activity_stats.png - Activity stats and rewards screen"
echo "4. profile.png - User profile with account info"
echo "5. settings.png - Settings main screen"
echo "6. settings_support.png - Settings scrolled to support section"
echo "7. request_pickup.png - Request pickup form"
echo ""

# Check existing screenshots
cd smart_waste_app/screenshots/user/
existing=$(ls -1 *.png 2>/dev/null | wc -l | tr -d ' ')

if [ "$existing" -eq 0 ]; then
    echo "📸 Current status: No screenshots added yet"
    echo ""
    echo "👉 Next steps:"
    echo "   1. Locate your screenshots (iPhone Photos app or Mac Desktop)"
    echo "   2. Transfer them to your Mac if needed"
    echo "   3. Copy or move them to: $(pwd)"
    echo "   4. Rename them according to the list above"
    echo "   5. Run: git add *.png && git commit -m 'Add user screenshots' && git push"
else
    echo "📸 Current status: $existing screenshots already added"
    echo ""
    echo "Existing files:"
    ls -1 *.png 2>/dev/null
    echo ""
    
    missing=$((7 - existing))
    if [ $missing -gt 0 ]; then
        echo "⚠️  Still need $missing more screenshots"
    else
        echo "✅ All screenshots added!"
    fi
fi

echo ""
echo "📚 For detailed instructions, see:"
echo "   smart_waste_app/screenshots/user/ADD_SCREENSHOTS.md"
echo ""
