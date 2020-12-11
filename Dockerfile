FROM eclipse-mosquitto:1.6.12@sha256:e1a8d7b90e5406be456d3f5f7f8941b69ea85e6506d596e310da7a87e6d9e57f

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
