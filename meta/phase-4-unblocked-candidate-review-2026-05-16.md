# Phase 4 / 4.5 Unblocked Candidate Review - 2026-05-16

This note records the Phase 4 and Phase 4.5 review focused on unblocked-domain discovery.

## Scope

- Device: physical Android device
- Browser: Chrome incognito
- Protection: ON
- Goal:
  - Find domains that were not blocked but appeared frequently during browsing.
  - Avoid immediate promotion unless evidence is strong and breakage risk is low.

## Data Quality Notes

- Phase 4 produced broad browsing logs, but the final report and candidate CSV were incomplete.
- Phase 4.5 used a smaller 9-case run with before/after snapshots.
- UI XML extraction for `unblockedCandidateDomain` was unreliable in both runs.
- Device DB `domain_logs` was used as supporting evidence.

## Phase 4.5 Summary

- Today blocked count increased from `1530` to `1781`.
- Delta: `+251`
- Ads increased from `851` to `894`.
- Trackers increased from `5690` to `5902`.
- Dangerous increased from `44` to `46`.

The test confirmed continued blocking activity, but the unblocked-candidate extraction path needs improvement before rules are promoted automatically.

## Cautious Candidates

These domains look like analytics, tag management, experimentation, or measurement endpoints. They should not be promoted directly to high-confidence feeds yet.

- `assets.adobedtm.com`
  - Adobe tag-management endpoint.
  - Similar breakage risk profile to tag managers.

- `ping.chartbeat.net`
  - Chartbeat analytics/measurement endpoint.
  - Common on news and media sites.

- `www.clarity.ms`
  - Microsoft Clarity analytics/session behavior endpoint.
  - Useful privacy target, but Microsoft ecosystem domains should be reviewed carefully.

- `logx.optimizely.com`
  - Optimizely experimentation/analytics endpoint.
  - Blocking can affect A/B test paths or page behavior.

## Observation Candidates

These appeared in DB-level unblocked traffic or previous candidate notes, but need more source attribution before rule movement.

- `beacons.gcp.gvt2.com`
- `beacons.gvt2.com`
- `beacons2.gvt2.com`
- `beacons3.gvt2.com`
- `beacons4.gvt2.com`
- `beacons5.gvt2.com`
  - High-volume Google beacon-style traffic.
  - Keep under observation because broad Google infrastructure rules can cause unexpected compatibility issues.

- `dmp.im-apps.net`
  - DMP/adtech-looking traffic.
  - Needs repeated evidence tied to visible ads or tracker-heavy pages.

- `mssdk22-normal-alisg.tiktokv.com`
- `tys9m3-launches.appsflyersdk.com`
  - SDK/attribution-looking traffic.
  - Keep as observation candidates until source behavior is clearer.

## Exclusion-Leaning Domains

These are not good default blocking candidates for a lightweight, hard-to-break DNS protection app.

- `www.google.com`
- `www.gstatic.com`
- `fonts.gstatic.com`
- `fonts.googleapis.com`
- `accounts.google.com`
- `play.googleapis.com`
- `cdn.ampproject.org`
- `connect.facebook.net`
- `www.facebook.com`
- `youtubei.googleapis.com`

Reason:
- These are platform, authentication, CDN, font, app-service, video, or social integration domains.
- Blocking them by default is likely to cause visible breakage or degraded compatibility.

## Decision

- No new default high-confidence rule was promoted from Phase 4 / 4.5.
- No new cautious-block rule was added from this review.
- The next improvement should focus on reliable DB-based before/after candidate extraction rather than UI XML scraping.

## Next Analysis Requirements

- Capture a DB snapshot before and after a test run.
- Compute `is_blocked=0` domain deltas using `hit_count`.
- Filter out known platform/CDN/auth domains before presenting candidates.
- Cross-check parent-domain coverage from existing public feeds.
- Promote only domains that are both repeated and tied to visible ads, tracking, or unwanted behavior.
