FROM eclipse-mosquitto:1.6.14@sha256:a7f643614a52a5f132c59e0900715f2da667532d05151e61f133578f0101bfbd

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
