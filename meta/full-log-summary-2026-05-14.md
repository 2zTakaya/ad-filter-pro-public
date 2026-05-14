# Full Log Summary - 2026-05-14

Source: full blocked-domain aggregation from the connected Android test device
(`domain_logs`, all available rows, no top-N limit).

## Totals

- blocked domains: 161
- blocked hits total: 1779
- source breakdown:
  - `domain_rule`: 1113 hits / 18 domains
  - `tracker`: 666 hits / 143 domains

## Key Observations

- Most high-volume blocks are already covered by current high-confidence mobile
  SDK and ad/tracker feeds.
- A smaller group of ad-like domains appeared repeatedly but was not yet listed
  in official feeds or candidate feeds.
- These were exported for review and then added to
  `mobile-ad-sdk-candidates.txt` as pending candidates.

## Newly Added Candidate Domains from Full Log

- `ogads-pa.clients6.google.com`
- `d-cache.microad.jp`
- `yads.yjtag.yahoo.co.jp`
- `edge.ads.twitch.tv`
- `www.adsensecustomsearchads.com`
- `ad.poly.admatrix.jp`
- `aid.send.microad.jp`
- `beacon.watch.impress.co.jp`
- `cdn.microad.jp`
- `ep1.adtrafficquality.google`
- `img.polymorphicads.jp`

## Review Safety Notes

Keep these in candidate status until one of:

- official SDK/network documentation confirms ad/measurement-only purpose
- repeat observations across apps/sessions show low breakage risk
- no allow-list actions and no app-functional regressions are observed

Do not auto-promote broad CDN/auth/social API hosts.
