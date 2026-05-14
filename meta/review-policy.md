# Review Policy

Before adding a domain:

1. Confirm it is DNS-blockable.
2. Confirm it is not an essential app backend.
3. Confirm it is not a broad CDN or shared infrastructure domain.
4. Classify it into one category.
5. Assign confidence.
6. Check whether it belongs in sensitive allowlist instead.

Default blocking requires `critical` or `high` confidence.

Medium confidence rules should go to `cautious-block.txt` and should not be
enabled by default.

