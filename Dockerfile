FROM eclipse-mosquitto:1.6.13@sha256:aa5d456dbb3d4aea23b927b6214c71cfed3a1e0b42ca7d5efc159a122839fa73

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
