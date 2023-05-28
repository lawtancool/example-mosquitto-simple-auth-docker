FROM eclipse-mosquitto:1.6.15@sha256:c9007ecf0e35a14035ef2ad8209aa589bfbd2c67d77b94daf97e98fd2e5ec571

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
