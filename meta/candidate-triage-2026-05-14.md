# Candidate Triage - 2026-05-14

Scope: `mobile-ad-sdk-candidates.txt` plus full-log extracted domains.

## Promoted to Default Block

Reason: ad/measurement purpose is clear from hostname semantics and repeated
real-device observations.

- `ogads-pa.clients6.google.com`
- `d-cache.microad.jp`
- `yads.yjtag.yahoo.co.jp`
- `edge.ads.twitch.tv`
- `www.adsensecustomsearchads.com`
- `ad.poly.admatrix.jp`
- `aid.send.microad.jp`
- `cdn.microad.jp`
- `ep1.adtrafficquality.google`
- `img.polymorphicads.jp`

Promoted to tracker feed:

- `beacon.watch.impress.co.jp`

## Keep as Candidates

Reason: likely ad-tech but still broader or less deterministic.

- `adjoe.io`, `prod.adjoe.zone`
- `apodeal.com`, `api.apodeal.com`, `bidder.apodeal.com`
- `gum.criteo.com`
- `audience.network`, `graph.facebook.com`, `connect.facebook.net`
- `chocolateplatform.com`, `ads.chocolateplatform.com`
- `improvedigital.com`, `ad.360yield.com`
- `indexexchange.com`, `htlb.casalemedia.com`
- `linecorp.com`, `ads.line.me`, `adnetwork.line.me`
- `nexxen.com`, `unrulymedia.com`
- `api.pubnative.net`, `cdn.pubnative.net`, `hybid.pubnative.net`
- `superawesome.com`, `ads.superawesome.tv`
- `vpon.com`, `tw-api.vpon.com`, `jp-api.vpon.com`
- `yandexadexchange.net`, `mobile.yandexadexchange.net`, `adsdk.yandex.ru`
- `yieldone.com`
- `spadsync.com`, `a.pemsrv.com`, `s.pemsrv.com`, `fam-ad.com`
- `deliver.ptgncdn.com`, `video.sacdnssedge.com`
- `static.trafficjunky.com`, `media.trafficjunky.net`
- `tsyndicate.com`, `lcdn.tsyndicate.com`

## Removed as Duplicates

These already exist in default feeds and should not stay in candidates:

- `pubnative.net`
- `verve.com`
