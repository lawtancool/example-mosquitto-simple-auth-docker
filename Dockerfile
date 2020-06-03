FROM eclipse-mosquitto:1.6.10@sha256:6ba2e25501e63acb3b765dcb93a469effc93a1179f3e40c53c979359cfe0eb9e

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
