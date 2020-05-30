FROM alpine:3.11

# Install openvpn
RUN apk --no-cache --no-progress add curl openvpn net-tools iptables shadow && \
    groupadd -r vpn

COPY openvpn.sh /usr/local/bin/openvpn.sh

VOLUME ["/config"]

WORKDIR /config
ENTRYPOINT ["openvpn.sh"]