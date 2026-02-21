#!/bin/bash
# ─────────────────────────────────────────────────────────────────
# Quantumleap Insights — GitHub + Netlify Auto-Deploy Setup
# Run this once from your terminal. Takes ~2 minutes.
# ─────────────────────────────────────────────────────────────────

set -e

REPO_NAME="quantumleap-website"
GITHUB_USER="YOUR_GITHUB_USERNAME"   # ← replace this

echo "📁 Creating local repo folder..."
mkdir -p ~/quantumleap-website && cd ~/quantumleap-website

echo "⬇️  Downloading site files..."
# Copy the 3 files you downloaded from Claude into this folder, then run:
# (Or paste the files manually into ~/quantumleap-website)

echo "🔧 Initializing git..."
git init
git checkout -b main
git config user.email "insights@quantumleap.llc"
git config user.name "Babith Bhoopalan"
git add -A
git commit -m "Initial deploy: homepage + FSI AI ROI Assessment"

echo "🚀 Creating GitHub repo and pushing..."
gh repo create $REPO_NAME --public --source=. --remote=origin --push

echo ""
echo "✅ Done! Your repo is live at:"
echo "   https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "👉 Next: Connect to Netlify (see instructions below)"
