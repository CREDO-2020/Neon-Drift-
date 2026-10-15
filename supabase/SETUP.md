# Supabase setup for Neon Drift

1. Open your active Supabase project and go to **Project Settings → API Keys**.
2. Copy the **Project URL** and the **publishable key** (or legacy anon key).
3. Paste those values into `supabase-config.js`. Never use a `service_role` or secret key in browser code.
4. In **SQL Editor**, run the contents of `supabase/schema.sql`.
5. In **Authentication → URL Configuration**, add your deployed game URL to the allowed redirect/site URLs.
6. Enable email/password authentication. Email confirmation may be enabled, depending on your project settings.
7. If the browser reports that tables are not exposed, open **Integrations → Data API** and expose `driver_saves` and `leaderboard_entries`.

The account UI and leaderboard use Supabase Auth and the browser client. Row-level security restricts cloud saves to their owner; leaderboard rows are public to read and each signed-in user can only write their own row. A browser-only game cannot fully prevent score cheating: competitive ranked play should submit runs to a server/Edge Function that validates scores.

Until an active project and its URL/key are configured, the game stays playable in offline/local-save mode.
