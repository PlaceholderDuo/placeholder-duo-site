#!/usr/bin/env bash
set -euo pipefail

# Deploy Placeholder Duo landing page to GitHub Pages.
# Usage: ./deploy.sh

REPO="PlaceholderDuo/placeholder-duo-site"
BRANCH="main"

echo "→ Building (nothing to build — static site)..."
echo "→ Deploying to GitHub Pages..."

git add -A
git commit --allow-empty -m "Update landing page"
git push origin "$BRANCH"

echo "✓ Pushed to $REPO"
echo "  Live at: https://placeholderduo.github.io/$REPO/"
echo "  (Takes ~1 min for Pages to update)"
