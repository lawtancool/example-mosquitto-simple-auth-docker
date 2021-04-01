FROM eclipse-mosquitto:1.6.14@sha256:cb9e7f16a32d15f434857e6263483ea6ad0c212a0e914442d318ab86ab83a096

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
