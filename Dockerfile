FROM eclipse-mosquitto:1.6.12@sha256:7554e4f05739e0ce57baf331930d4e16d14f25c1ff6fb5309618ac556560e49a

COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
