# Research Round - 2026-05-14

Purpose: strengthen the mobile-first starter feed using public information and
official SDK/product documentation categories, without copying third-party
filter-list contents.

## Reviewed Public Sources

- Google AdMob / Google Mobile Ads SDK documentation
- Unity Ads Android SDK documentation
- AppLovin MAX Android SDK documentation
- Unity LevelPlay / ironSource Android SDK documentation
- Branch Android SDK documentation
- AppsFlyer SDK documentation
- Kochava / Singular / BidMachine public SDK/product documentation
- Public Japanese mobile ad network pages for i-mobile and Zucks
- Public Japanese mobile ad network pages for nend and AMoAd
- Google AdMob mediation ad-source lists
- AppLovin MAX supported network lists
- Public Android SDK documents for Chartboost, Digital Turbine, BidMachine,
  InMobi, and other mediation partners

## Applied Curation Rule

Add domains only when the service is independently identifiable as one of:

- mobile ad SDK
- mobile ad mediation or ad network
- attribution / install measurement
- analytics / beacon / audience measurement
- DNS-over-HTTPS resolver

Do not import any third-party blocklist as source material.

## Notes

Japanese mobile advertising candidates were treated carefully. Corporate or
registration pages are not automatically blocked. Only ad/API-style hosts were
added when they are commonly associated with SDK/ad delivery usage.

Some candidates should remain in `cautious-block.txt` until observed in real
Android traffic and confirmed not to break app behavior.

## 2026-05-14 Additional Expansion

The second pass focused on networks that appear in Google AdMob mediation
documentation and AppLovin MAX supported-network documentation. The expansion
adds more SDK/API/ad-serving style hosts for:

- AppLovin
- Unity Ads
- ironSource / Supersonic / DT Exchange/Fyber
- Vungle / Liftoff
- InMobi
- Pangle
- Mintegral
- Tapjoy
- Chartboost
- Start.io
- BidMachine
- Ogury
- Moloco
- Japanese mobile ad networks such as i-mobile, Zucks, AdStir, maio,
  Ad Generation, fluct, Geniee-related hosts, nend, and AMoAd

Medium-confidence networks that are common in mediation but more likely to
overlap with broad first-party services were placed in
`mobile-ad-sdk-candidates.txt` rather than enabled by default.
