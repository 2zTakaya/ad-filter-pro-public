# Starter Expansion Notes

## Practical Position

The starter feed should be stronger than a tiny demo list, but it should not try
to clone AdGuard/EasyPrivacy coverage. For a personal/small-team app, the most
realistic path is:

- mobile-first high-confidence domains
- independently reviewed SDK/vendor endpoints
- conservative DNS blocking
- optional user custom subscriptions for power users
- local smart suggestions to fill per-device gaps

## Public Lists

Public does not automatically mean freely reusable in a paid app. Many popular
lists are GPL, CC BY-SA, custom licensed, or intended for personal/noncommercial
use. Do not bulk import them into the default official feed.

Use public lists only for:

- discovering which categories matter
- seeing common false-positive patterns
- prioritizing independent research

## Good Starter Sources

Prefer:

- official SDK documentation
- vendor domains visible in SDK setup docs
- domains observed in our own Android test traffic
- app/browser traffic reproduced by the project owner
- security vendor reports where factual domain use is allowed

## Mobile-Only Advantage

Because the app does not target PC, we can ignore large desktop-only classes and
spend rule budget on:

- mobile ad mediation
- attribution/install measurement
- app ad SDK telemetry
- mobile pop-up/redirect ad networks
- mobile browser trackers

This keeps the rule set smaller and more relevant.

