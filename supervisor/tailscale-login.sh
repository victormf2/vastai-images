#!/bin/bash

set -e

SOCK=/var/run/tailscale/tailscaled.sock

echo "Waiting for tailscaled..."
until [ -S "$SOCK" ]; do
  sleep 1
done

echo "Bringing tailscale up..."

tailscale up \
  --auth-key="$TAILSCALE_AUTHKEY" \
  --login-server=https://headscale.prigas.dev \
  --hostname=vast

echo "Tailscale ready"

# keep process alive so supervisor doesn't restart it
tail -f /dev/null