FROM eclipse-mosquitto:2.0.10@sha256:683189aaaf01240fe4ba3c0b3262704c4a3910c7293162e22e8f43a319fc9ed8

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
