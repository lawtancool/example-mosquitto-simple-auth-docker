FROM eclipse-mosquitto:1.6.14@sha256:662e39d0062a365170fa78abeadb4b7dc19d6edbb6a26a883b5d2376c76844f8

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
