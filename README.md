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
- Four selectable neon track palettes, optional synthesized sound effects and looping synth music
- Smoother drift trails and bonus coin effects
- Driver Cloud page with Supabase email/password accounts, leaderboard, and manual cloud-save sync (requires setup)

## Deploy with GitHub Pages
1. Open the repository on GitHub and choose **Settings → Pages**.
2. Under **Build and deployment**, select **Deploy from a branch**.
3. Choose branch **main** and folder **/(root)**, then save.
4. Wait for the Pages deployment to finish; the published URL appears in Settings → Pages.

## Supabase cloud features
1. Follow [`supabase/SETUP.md`](supabase/SETUP.md).
2. Add your Project URL and publishable key to `supabase-config.js`.
3. Run [`supabase/schema.sql`](supabase/schema.sql) in your Supabase SQL Editor.
4. Open `cloud.html` to create/sign in to an account, view the leaderboard, upload or restore a browser save, and submit your local best score.

The account, leaderboard, and cloud-save features remain disabled until you configure an active Supabase project. Never put a service-role or secret key in browser code. The browser client can protect ownership with RLS, but client-submitted scores can still be cheated; ranked competitive play should validate runs server-side.
