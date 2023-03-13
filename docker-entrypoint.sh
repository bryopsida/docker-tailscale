#!/usr/bin/env sh
tailscaled \
  --outbound-http-proxy-listen "localhost:8080" \
  --socks5-server "localhost:2080" \
  --statedir "/home/tailscale/state" \
  --port 32500 \
  --tun "userspace-networking"