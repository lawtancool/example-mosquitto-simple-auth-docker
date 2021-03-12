FROM eclipse-mosquitto:1.6.14@sha256:4851fb5d6adb9e894e82aa84c5982a5aae7b95673d940a92c1b0942f75f654c6

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
