# Ad Filter Pro Rules

Original DNS-level protection rules for Ad Filter Pro.

This repository is designed for lightweight DNS protection:

- ads
- trackers
- mobile ad SDK traffic
- phishing/scam/dangerous domains
- DoH resolver bypass support
- sensitive allowlist safety guard

The first product target is Android/mobile. Desktop-specific adware, browser
extension, enterprise tracking, and PC-only telemetry rules are intentionally
lower priority.

## Important Policy

These feeds are independently curated. Do not copy, convert, mirror, or re-host
third-party filter lists such as AdGuard, EasyList, EasyPrivacy, or similar
projects.

Public filter lists may be reviewed only to understand general categories,
industry patterns, and common false-positive risks. Rules must be accepted based
on independent review.

## Format

Feeds are simple DNS-level domain lists.

Supported lines:

```text
! comment
example.com
||tracker.example.com^
0.0.0.0 ads.example.com
```

The preferred public format is one domain per line with comments for sections.

## Files

- `rules/ads-high-confidence.txt`
- `rules/trackers-high-confidence.txt`
- `rules/mobile-ad-sdk.txt`
- `rules/popup-high-confidence.txt`
- `rules/dangerous-strict.txt`
- `rules/dangerous-standard.txt`
- `rules/phishing-scam.txt`
- `rules/doh-resolvers.txt`
- `rules/cautious-block.txt`
- `rules/sensitive-allowlist.txt`

## Confidence

- `critical`: known dangerous or malicious
- `high`: safe to block by default in balanced mode
- `medium`: strong mode or suggestion only
- `low`: research/candidate only

Default feeds should contain only `critical` and `high` confidence domains.

## Mobile-First Curation

Because Ad Filter Pro is not planned for PC at this stage, starter coverage
should focus on:

- mobile ad SDKs and mediation networks
- mobile attribution and install measurement
- browser ad exchanges commonly seen on mobile sites
- scam/pop-up ad networks commonly seen during mobile browsing
- DoH resolver hosts that can bypass DNS protection

Avoid spending early effort on:

- Windows/macOS telemetry
- desktop browser extension endpoints
- enterprise SaaS analytics unless seen frequently on mobile
- large generic block categories that increase false positives

## Public Contents

This repository contains only public feed files and the manifest needed by
clients. Non-feed working files are managed outside this public repository.
