# Neon Drift — Midnight Circuit

A playable neon arcade racer built with vanilla JavaScript and the HTML Canvas API. No build step or external libraries are required.

## Play locally
1. Clone or download this repository.
2. Open `index.html` in a modern browser, or use VS Code Live Server.
3. Click **START ENGINE** (or press Space).

## Controls
- **← / →** or **A / D** — steer
- **Shift** — drift to earn bonus coins
- **P** — pause/resume
- **Space** — start or restart
- On touch screens, use the on-screen steering and drift controls.

## Features
- Neon city circuit with animated road markings and glowing effects
- Traffic obstacles, collision detection, coin pickups, particle effects
- Distance score, saved high score, and persistent coin balance
- Four unlockable cars at 0, 1,500, 5,000, and 12,000 high score
- Upgrade shop: turbo scoring, coin magnet, and shield
- Responsive layout and mobile touch controls
- Local progress saved in the browser using localStorage

## Deploy with GitHub Pages
1. Open the repository on GitHub and choose **Settings → Pages**.
2. Under **Build and deployment**, select **Deploy from a branch**.
3. Choose branch **main** and folder **/(root)**, then save.
4. Wait for the Pages deployment to finish; the published URL appears in Settings → Pages.

## Supabase
The game works without a backend. At present, progress is saved locally in each browser. Supabase is not connected yet; adding accounts, cross-device saves, and online leaderboards can be a separate phase. Never place a Supabase service-role key in browser code.
