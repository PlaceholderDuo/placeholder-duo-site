# Placeholder Duo QR Landing Page - 2026-08-07

`#web #design #deployment #phase-production`

---

## Entry 1 — Project to date (2026-08-07)

*Log of the QR landing page ("Support Us") from initial build through today.*

### Objectives / Goals

- Create a single-page "Support Us" landing page reachable by scanning a printed QR code.
- Show all social media channels plus Venmo / Cash App tipping.
- Tapping the Venmo / Cash App buttons should open each app to **our profile / send-money screen**, not the app home screen.

### Work Completed

- Built a single static `index.html` (HTML + CSS, no build step) with:
  - Band logo, name, tip tagline.
  - "Tip Us" buttons: Venmo, Cash App.
  - "Follow Us" buttons: Facebook, Instagram, TikTok, YouTube.
  - Dark theme with automatic light-mode fallback for outdoor contrast.
- Hosted on **GitHub Pages**: public repo `PlaceholderDuo/placeholder-duo-site`, branch `main`, `deploy.sh` commits + pushes.
- One-time setup done: Pages source `main / (root)`; deploy SSH key `~/.ssh/id_ed25519_placeholder`.
- **2026-08-07:** Replaced broken Venmo / Cash App deep links with universal links.

### Changes / Decisions Made

- **Before:** Venmo used `venmo://paycharge?txn=pay&recipient=<user>`; Cash App used `cashapp://cash.app/$<tag>`.
- **Problem:** Both custom URL schemes stopped working (Venmo dropped them in 2024). Tapping opened the apps but landed on the **home tab**, not the profile.
- **Fix:** Switched to **universal links**:
  - Venmo → `https://venmo.com/<user>` (opens in-app profile with Pay/Request button; web fallback works).
  - Cash App → `https://cash.app/$<tag>` (opens in-app pay screen; web fallback works).
- **Verified before committing:** `https://venmo.com/<user>` → HTTP 200; `https://venmo.com/<user>/send` → HTTP 404 (deliberately NOT used); `https://cash.app/$<tag>` → HTTP 200.
- Apple is deprioritizing custom URL schemes in favor of universal links; universal links are the reliable pattern going forward.

### Issues / Blockers

- `venmo://` and `cashapp://` custom schemes are dead as of 2024 — cannot pre-fill amount/note anymore; only profile-level deep linking is reliably possible.

### Next Steps / Action Items

- Replace remaining `placeholder` handle placeholders with real Venmo username / $cashtag / social handles if not already live.
- Run `./deploy.sh` to publish the link fix to GitHub Pages.
- Optionally re-test the two buttons on a physical iPhone and an Android device after deploy.

### Links / References

- Live site: `https://placeholderduo.github.io/` (GitHub Pages)
- Repo: `PlaceholderDuo/placeholder-duo-site`
- Deploy: `./deploy.sh` (commits + pushes to `main`)

### Highlights / Notes & Lessons Learned

- **Custom URL schemes are fragile for third-party apps; use universal (https) links when the app supports them** — they route to the app when installed and fall back to a web page when not.
- Venmo's `/send` route 404s — keep the plain profile universal link.
- QR code itself encodes only the page URL, so button-link fixes never require regenerating the printed QR.

---

### Edits / Updates

- [2026-08-07] Initial entry created; documented build, deployment, and the Venmo / Cash App universal-link fix.