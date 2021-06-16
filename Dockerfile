FROM eclipse-mosquitto:1.6.15@sha256:c5d17d67a185fe2a0db0e674fe14b90fb3106f6538062b2000449f770e706c8c

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
