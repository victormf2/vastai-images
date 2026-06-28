#!/bin/bash

set -e

echo "Waiting for tailscaled..."

until tailscale status >/dev/null 2>&1; do
  sleep 1
done

echo "Bringing tailscale up..."

tailscale up \
  --auth-key="$TAILSCALE_AUTHKEY" \
  --login-server=https://headscale.prigas.dev

echo "Tailscale ready"

# keep process alive so supervisor doesn't restart it
tail -f /dev/null