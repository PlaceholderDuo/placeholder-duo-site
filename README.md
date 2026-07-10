# Placeholder Duo — Landing Page

QR code landing page for Placeholder Duo. Single static HTML file on GitHub Pages.

## Quick Deploy

```bash
./deploy.sh
```

That's it. Git adds all changes, commits, pushes to `main`. GitHub Pages auto-deploys (~1 min).

## One-Time Setup (already done)

1. **Repo**: `PlaceholderDuo/placeholder-duo-site` (public)
2. **Pages**: Settings → Pages → Source: `Deploy from branch` → `main` / `/ (root)`
3. **SSH key**: `~/.ssh/id_ed25519_placeholder` added to GitHub (Settings → SSH Keys)

## Project Location

```
~/Documents/bands/placeholder/web/
├── index.html       # Landing page
├── logo.png         # Band logo
├── deploy.sh        # Deploy script
└── README.md        # This file
```

## Editing

Open `index.html` — everything is in one file: HTML + CSS. No build step needed.

### Placeholders to Replace

| What | Search for | Replace with |
|------|-----------|-------------|
| Venmo link | `venmo.com/placeholderduo` | Your Venmo handle |
| Cash App link | `cash.app/$placeholderduo` | Your Cash App tag |
| Instagram link | `instagram.com/placeholderduo` | Your handle |
| TikTok link | `tiktok.com/@placeholderduo` | Your handle |
| YouTube link | `youtube.com/@placeholderduo` | Your handle |
| Facebook link | `facebook.com/placeholderduo` | Your handle |
| Band name | `Placeholder Duo` | Actual band name |
| Logo | `logo.png` | New logo file |

Copy a `.btn--secondary` block in `index.html`, swap the SVG, href, and label.
