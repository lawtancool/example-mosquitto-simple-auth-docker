FROM eclipse-mosquitto:1.6.14@sha256:6655eb93f20a7b4955ec8e738c7bdce3bc727bf5b10588eeb7005576fe3d7bc9

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
