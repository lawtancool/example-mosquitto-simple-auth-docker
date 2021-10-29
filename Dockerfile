FROM eclipse-mosquitto:1.6.15@sha256:e1d6c7ce212b98f86ca364f99b9ad831e6fea51e1d68637a32decdfa35cd8d7f

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
