FROM eclipse-mosquitto:1.6.9@sha256:2f96254c4238b9a39da96b670a33b32c2f26889d1d71704f2ed3a6e1f7669598

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
