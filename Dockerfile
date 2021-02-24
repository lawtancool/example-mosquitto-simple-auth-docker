FROM eclipse-mosquitto:1.6.13@sha256:2139260e11a97b262979ff2f8454be08b715677341943d61ab226f69106a4756

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
