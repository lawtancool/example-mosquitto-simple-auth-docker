FROM eclipse-mosquitto:1.6.7@sha256:a92b72d7bfe7b0c227d88af3ca4ea3229fa420a050d9c14c3c74e83a666e7b20

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
