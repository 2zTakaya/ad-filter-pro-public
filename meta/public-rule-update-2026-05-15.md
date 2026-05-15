# Public Rule Update - 2026-05-15

This update keeps the public rule set aligned with the mobile-first, low-false-positive policy.

## Added

- `ad.i-mobile.co.jp`
  - Added to `mobile-ad-sdk.txt`
  - Reason: i-mobile ad delivery endpoint that complements existing i-mobile coverage.

## Safety Guard Updates

- `graph.facebook.com`
  - Kept out of default blocking and protected via `sensitive-allowlist.txt`
  - Reason: commonly used for Facebook login / social integration flows.

- `linecorp.com`
  - Kept out of default blocking and protected via `sensitive-allowlist.txt`
  - Reason: can affect LINE-linked login and integration flows.

## Cautious Candidate

- `api.repro.io`
  - Added to `cautious-block.txt`
  - Reason: often tied to analytics or user-profile style APIs, so it should be reviewed before any default promotion.

## Notes

- The goal is to strengthen mobile ad/tracker blocking without increasing breakage in everyday apps.
- High-confidence rules remain the default path.
- Sensitive service domains stay protected from automatic blocking.
