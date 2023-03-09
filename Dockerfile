FROM alpine:3.17
RUN apk add --no-cache tailscale

RUN addgroup -g 10001 tailscale && \
  adduser -u 10001 -G tailscale -h /home/tailscale -D tailscale

USER tailscale
WORKDIR /home/tailscale