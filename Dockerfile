FROM eclipse-mosquitto:1.6.13@sha256:744459be6fc4b53723c3ce42f266f5bc3aefc2fb9ab6ad0df2bcb971fc9abdf2

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
