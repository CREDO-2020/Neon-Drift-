create table if not exists public.driver_saves (
  user_id uuid primary key references auth.users(id) on delete cascade,
  save_data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
create table if not exists public.leaderboard_entries (
  user_id uuid primary key references auth.users(id) on delete cascade,
  display_name text not null default 'Driver' check (char_length(display_name) between 1 and 24),
  high_score integer not null default 0 check (high_score >= 0 and high_score <= 100000000),
  coins_earned integer not null default 0 check (coins_earned >= 0 and coins_earned <= 10000000),
  car_id text not null default 'pulse' check (car_id in ('pulse','viper','spectre','phantom')),
  updated_at timestamptz not null default now()
);
alter table public.driver_saves enable row level security;
alter table public.leaderboard_entries enable row level security;
revoke all on public.driver_saves from anon, authenticated;
grant select, insert, update, delete on public.driver_saves to authenticated;
grant select on public.leaderboard_entries to anon, authenticated;
grant insert, update on public.leaderboard_entries to authenticated;
create policy "driver_saves_select_own" on public.driver_saves for select to authenticated using ((select auth.uid()) = user_id);
create policy "driver_saves_insert_own" on public.driver_saves for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "driver_saves_update_own" on public.driver_saves for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "driver_saves_delete_own" on public.driver_saves for delete to authenticated using ((select auth.uid()) = user_id);
create policy "leaderboard_public_read" on public.leaderboard_entries for select to anon, authenticated using (true);
create policy "leaderboard_insert_own" on public.leaderboard_entries for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "leaderboard_update_own" on public.leaderboard_entries for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
