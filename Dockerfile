FROM alpine:3.12
RUN apk add --update --no-cache avahi

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

#VOLUME /etc/avahi

COPY avahi-config/avahi-daemon.conf /etc/avahi
COPY avahi-config/services /etc/avahi/services/

ENTRYPOINT ["/entrypoint.sh"]
