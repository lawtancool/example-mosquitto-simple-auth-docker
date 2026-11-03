#!/bin/ash

set -e

if ( [ -z "${MOSQUITTO_USERNAME}" ] || [ -z "${MOSQUITTO_PASSWORD}" ] ); then
  echo "MOSQUITTO_USERNAME or MOSQUITTO_PASSWORD not defined"
  exit 1
fi

# remove existing passwordfile to avoid rehashing existing password and breaking it
rm -f passwordfile || true
# create mosquitto passwordfile
touch passwordfile
mosquitto_passwd -b passwordfile $MOSQUITTO_USERNAME $MOSQUITTO_PASSWORD

# fix permissions
chown mosquitto:mosquitto /mosquitto/log/mosquitto.log
chmod 0700 /mosquitto/log/mosquitto.log

chown mosquitto:mosquitto passwordfile
chmod 0700 passwordfile

exec "$@"
