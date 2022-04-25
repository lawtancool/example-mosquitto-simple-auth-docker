FROM eclipse-mosquitto:1.6.15@sha256:9244133e01a0d44177918c08794fc7ece53d5de9a218f3bdf4d1ef3e926f8a74

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
