FROM eclipse-mosquitto:1.6.8@sha256:c191987c6aaebea7680738ec6bdcc8a6ab0b53760cec5633546fc40025d88824

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
