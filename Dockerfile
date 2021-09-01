FROM eclipse-mosquitto:1.6.15@sha256:c0b1de00c4094d619c3aa499a6202d8f54e122620a3861e5b20d9c8893047bdf

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
