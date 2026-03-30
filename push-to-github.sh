#!/bin/bash
# ════════════════════════════════════════════════
# Sellsuki AMS — Push to GitHub
# Run this script AFTER unzipping Sellsuki-AMS.zip
# ════════════════════════════════════════════════

set -e

REPO_URL="https://github.com/mmonsicha/Sellsuki-AMS.git"
BRANCH="main"

echo "📦 Sellsuki AMS — GitHub Push Script"
echo "======================================"

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
  echo "❌ Error: Run this script from inside the sellsuki-ams/ folder"
  exit 1
fi

# Initialize git if not already
if [ ! -d ".git" ]; then
  git init
  git branch -m main
fi

# Set remote
git remote remove origin 2>/dev/null || true
git remote add origin "$REPO_URL"

# Stage & commit if there are uncommitted changes
git add -A

if git diff --cached --quiet; then
  echo "✅ Nothing new to commit — pushing existing commits"
else
  git commit -m "feat: Sellsuki Auth UI with DS audit log

- All screens use Sellsuki Design System tokens
- Replaced SVG logo with official Sellsuki_Logo.png (88x88)
- Fixed: elevation-sm only (was elevation-md)
- Fixed: bg-page = Gray-50 #f9fafb (DS standard)
- Fixed: disabled primary button = Sky-200 (muted blue)
- Added DESIGN_SYSTEM_LOG.md with full component/token audit

Screens: Sign In, Password, Sign Up, Email Verify,
         Forgot PW, Forgot Sent, Social Confirm, Profile/Logout

DS components: DSButton (7 variants), DSInput, FormField,
               Divider, Avatar, ConfirmDialog, Card"
fi

echo ""
echo "Pushing to $REPO_URL ..."
git push -u origin "$BRANCH" --force

echo ""
echo "Done! View at: https://github.com/mmonsicha/Sellsuki-AMS"
