# Real Device Log Review - 2026-05-14

Device log source: local `domain_logs` database copied from the connected test
device via `run-as`. Only blocked domain names, counts, sources, and timestamps
were reviewed.

## Top Observations

High-frequency blocked domains included:

- `app-measurement.com` - 251 hits
- `googleads.g.doubleclick.net` - 150 hits
- `www.googletagmanager.com` - 110 hits
- `telemetry.sdk.inmobi.com` - 85 hits
- `o-sdk.mediation.unity3d.com` - 61 hits
- `unif-id.ssp.inmobi.com` - 47 hits
- `gw1.mediation.unity3d.com` - 47 hits
- `api16-access-wf-sg.pangle.io` - 43 hits

## Promoted to mobile-ad-sdk

Promoted because they are vendor/SDK-style hosts from known mobile ad SDK or
mediation families and were observed in real traffic:

- Unity Ads / mediation:
  - `o-sdk.mediation.unity3d.com`
  - `gw1.mediation.unity3d.com`
  - `i-adq.mediation.unity3d.com`
  - `i-sdk.mediation.unity3d.com`
  - `cdn.iads.unity3d.com`
  - `ae.iads.unity3d.com`
- Pangle:
  - `api16-access-wf-sg.pangle.io`
  - `api16-dual-event-sg2.pangle.io`
  - `api16-access-ttp.tiktokpangle.us`
  - `api16-access-ttp-b.tiktokpangle.us`
- InMobi:
  - `unif-id.ssp.inmobi.com`
- Mintegral / Rayjump:
  - `configure-tcp.rayjump.com`
  - `policy-tcp.rayjump.com`
  - `configure-tcp-android.mtgglobals.com`
  - `check-tcp.rayjump.com`
  - `lazy-tcp.rayjump.com`
  - `pok.mintegral.net`

## Kept as Candidates

These appeared in logs and look ad-related, but need more review before default
blocking because they may be broad ad networks, adult-ad infrastructure, or
site-specific delivery hosts:

- `spadsync.com`
- `a.pemsrv.com`
- `s.pemsrv.com`
- `fam-ad.com`
- `deliver.ptgncdn.com`
- `video.sacdnssedge.com`
- `static.trafficjunky.com`
- `media.trafficjunky.net`
- `tsyndicate.com`
- `lcdn.tsyndicate.com`

## Not Promoted

Examples intentionally not promoted:

- `whoami.akamai.net`: diagnostic/CDN-related, not an ad SDK.
- `cdn.jsdelivr.net`: shared CDN, high false-positive risk.
- `api.twitter.com`, `platform.twitter.com`, `chat-ws.x.com`: app/social
  functionality risk.
- `seal.digicert.com`: certificate/trust badge related, not ad SDK.
- `connect.facebook.net`, `graph.facebook.com`: broad platform/login/share
  overlap, candidate-only at most.
