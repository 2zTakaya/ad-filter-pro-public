# Phase 2 Browser Validation - 2026-05-15

This note records the Phase 2 real-device browser validation for the public rule set.

## Scope

- Device: physical Android device
- Browser: Chrome incognito
- Categories:
  - EC / shopping
  - News / media
  - Blog / review
- Goal:
  - Confirm that high-volume ad and tracking domains are blocked without breaking basic browsing.
  - Decide whether Amazon advertising domains need additional public feed coverage.

## Result Summary

- Total new blocks observed during Phase 2: 117
- No critical rendering failures were observed.
- No site-wide access failures were observed.
- Basic interactions such as scrolling, menu opening, article navigation, and search result navigation remained usable.

## Domain Findings

### Covered by existing high-confidence feeds

- `securepubads.g.doubleclick.net`
  - Already covered directly in `ads-high-confidence.txt` and `mobile-ad-sdk.txt`.

- `stats.g.doubleclick.net`
  - Covered by the existing parent-domain rule `doubleclick.net`.
  - No extra explicit rule is needed because the app uses suffix matching.

- `www.googleadservices.com`
  - Covered by the existing parent-domain rule `googleadservices.com`.

- `c.amazon-adsystem.com`
  - Covered by the existing parent-domain rule `amazon-adsystem.com`.
  - Amazon product browsing and sale-page browsing remained usable in this test.

- `pixel-us-east.rubiconproject.com`
  - Covered by the existing parent-domain rule `rubiconproject.com`.

### Kept cautious

- `googletagmanager.com`
  - Very high block volume was observed.
  - No breakage was observed in this Phase 2 test set.
  - It remains in `cautious-block.txt` because some sites can depend on Google Tag Manager for page behavior.

## Decision

- No new high-confidence domain rule is required from this Phase 2 run.
- `amazon-adsystem.com` and `aax.amazon-adsystem.com` were added to `source/rules-source.csv` to align source metadata with the existing rule files.
- `googletagmanager.com` remains cautious rather than being promoted to a default high-confidence feed.

## Next Test Focus

- Search for remaining visible ads or popup behavior rather than already-covered high-volume domains.
- Collect unblocked-domain candidates from real browsing sessions.
- Re-test `googletagmanager.com` only when a site breakage report or a strong promotion reason appears.
