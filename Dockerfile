FROM eclipse-mosquitto:1.6.14@sha256:d3cc62e864a0cf50329cf2539218bcba88f2a9017f74d2fb6eb4c068f6a8e7d7

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
