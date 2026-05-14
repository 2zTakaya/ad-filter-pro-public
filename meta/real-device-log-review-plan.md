# Real Device Log Review Plan

Purpose: promote domains from device-specific block history into the official
mobile ad SDK feed without weakening the "hard to break" product concept.

## Candidate Extraction

Review the last 7 to 14 days of blocked DNS logs and extract domains that match
one or more of:

- blocked frequently across multiple apps
- classified as ad SDK / display ad / tracker
- never manually allowed
- not in sensitive allowlist
- not required for login, payment, maps, push, media playback, or core app sync

## Promotion Rules

Promote to `mobile-ad-sdk.txt` only when:

- the domain is clearly ad SDK / mediation / ad-serving traffic
- the same SDK/vendor is known from public documentation or common SDK usage
- blocking did not break the tested app's core function
- no user allow action exists for the domain

Keep in `mobile-ad-sdk-candidates.txt` when:

- the vendor is likely ad-related but the host is broad
- the domain may overlap with first-party app functionality
- only one app produced the traffic
- traffic purpose is unclear

Do not add when:

- it is a CDN shared by non-ad content
- it is auth/payment/push/maps/system traffic
- it belongs to banking, government, emergency, or payment flows
- it only appears once and has no supporting evidence

## Suggested Review Cadence

- weekly during beta
- monthly after release
- immediately after user reports broken apps

## Useful App UI Later

Later, add an export button for:

- recent blocked domains
- source/category/count
- last seen time
- allowlist status

This lets the project owner review candidates without collecting personal URLs
or full browsing history.
