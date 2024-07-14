#!/bin/sh

# Replace placeholders in the Caddyfile template
envsubst </etc/caddy/Caddyfile.template >/etc/caddy/Caddyfile

# Start Caddy
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
