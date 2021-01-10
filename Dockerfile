FROM eclipse-mosquitto:1.6.12@sha256:d10fcd6ae2a17ab285befff6d1465100ac3e6cbae977a7f0daf81e5c1f00167f

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
