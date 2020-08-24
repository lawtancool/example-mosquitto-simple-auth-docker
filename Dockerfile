FROM eclipse-mosquitto:1.6.12@sha256:ef81c454d4e48f80896292c7e5346aa6fcceef03216fccacce747bd61b1204f6

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
