FROM eclipse-mosquitto:1.6.15@sha256:5a5df5af30ef37d083e49e5bd506cbd79b14738f74921b92775aa6bd0e30022f

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
