# Candidate Review - 2026-05-15

This note records the next round of rule expansion based on public vendor docs and the current mobile-app policy.

## Added to cautious blocking

- `api.karte.io`
  - KARTE for App / engagement and analytics endpoint.
  - Useful signal, but not safe enough for default high-confidence blocking.

- `sentry.io`
- `ingest.sentry.io`
  - Sentry error-reporting and ingest hosts.
  - Telemetry value is clear, but breakage risk is non-trivial for apps using crash monitoring.

- `notify.bugsnag.com`
- `sessions.bugsnag.com`
  - BugSnag error and session reporting hosts.
  - Strong privacy signal, but still best kept in cautious mode first.

- `browser-intake-datadoghq.com`
- `http-intake.logs.datadoghq.com`
- `http-encrypted-intake.logs.datadoghq.com`
  - Datadog RUM / log intake hosts.
  - High-value telemetry targets, but the impact surface is wider than plain ad delivery.

## Held back for now

- `api.yapp.li`
  - Yappli is an app platform / app infrastructure domain.
  - Blocking by default is too risky because it can break app rendering or app-specific flows.

- Braze and SmartBeat related hosts
  - Good analysis candidates, but the host set should be validated from stronger runtime evidence before promotion.

## Policy notes

- Default high-confidence feeds remain reserved for ad and tracker infrastructure with low breakage risk.
- Monitoring / crash-reporting domains are useful targets, but cautious mode is the right first step.
- When runtime logs show repeated, non-sensitive hits, candidates can later be reviewed for promotion.

## Afternoon device log review (2026-05-15)

Review window:
- `2026-05-15 12:00` to `16:59` (JST), real device DB snapshot.

Key finding:
- Site-access failures were concentrated in tracker-domain blocking, not in explicit ad-only domains.

Mitigation applied:
- Moved these from `trackers-high-confidence` to `cautious-block`:
  - `app-measurement.com`
  - `google-analytics.com`
  - `googletagmanager.com`

New formal candidates from unblocked traffic:
- `yads.c.yimg.jp`
- `assets.adobedtm.com`
- `tck.lmadps.jp`
- `img.lmadps.jp`
- `beacons.gcp.gvt2.com`
- `beacons.gvt2.com`
- `beacons2.gvt2.com`
- `beacons3.gvt2.com`
- `beacons4.gvt2.com`
- `beacons5.gvt2.com`
