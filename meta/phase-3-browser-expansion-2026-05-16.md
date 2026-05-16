# Phase 3 Browser Expansion - 2026-05-16

This note records the Phase 3 real-device browser test expansion.

## Scope

- Device: physical Android device
- Browser: Chrome incognito
- Test groups:
  - Japanese high-ad search keywords
  - Free / overseas / popup-heavy search keywords
  - News, blog, EC, and review sites

## Result Summary

- Tested items: 31
- New blocks observed in the session: about 550
- No site-wide access failures were detected.
- No critical white-screen or basic navigation failures were detected.
- High-volume sites included CNN, mybest, Hatena Blog, and overseas anime/movie search flows.

## Promotion Decisions

### Promoted to high-confidence ads

- `yads.c.yimg.jp`
  - Reason: repeatedly appeared in real-device browser tests and matches Yahoo Japan ad delivery behavior.
  - Moved from `mobile-ad-sdk-candidates.txt` to `ads-high-confidence.txt`.

### Added to cautious block

- `js.hs-analytics.net`
  - Reason: observed as a repeated unblocked analytics candidate in real-device browsing.
  - Kept cautious first because it is an analytics script host, not a pure ad delivery domain.

## Already Covered Candidates

- `ib.adnxs.com`
  - Already directly covered by `ads-high-confidence.txt`.

- `dpm.demdex.net`
  - Covered by parent-domain rule `demdex.net`.

- `stats.g.doubleclick.net`
  - Covered by parent-domain rule `doubleclick.net`.

## Held for Observation

- `mssdk22-normal-alisg.tiktokv.com`
- `tys9m3-launches.appsflyersdk.com`

These look like SDK/attribution-related traffic, but they need more evidence before default blocking.

## Follow-up Focus

- Test remaining visible ads and popup behavior rather than domains already covered by parent-domain rules.
- Review mybest and CNN manually when dangerous or tracker counts spike.
- Continue collecting unblocked candidates from real browsing sessions before promoting additional SDK-style hosts.
