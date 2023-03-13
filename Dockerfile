FROM alpine:3.17
RUN apk add --no-cache tailscale

RUN addgroup -g 10001 tailscale && \
  adduser -u 10001 -G tailscale -h /home/tailscale -D tailscale
# RUN mkdir -p /home/tailscale/state && chown tailscale:tailscale /home/tailscale/state
# USER tailscale
WORKDIR /home/tailscale
COPY ./docker-entrypoint.sh .
ENTRYPOINT [ "/home/tailscale/docker-entrypoint.sh" ]
EXPOSE 8088
VOLUME [ "/home/tailscale/state" ]