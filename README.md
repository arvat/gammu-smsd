# Gammu sms docker image
This container will forward all incoming sms from 3g dongle to specific url. Useful tool for E2E testing if sms was received.

First in the `receive_sms.sh` file add the forwarding url

## Build image
```
docker build -t service_gammu .
```
## Run image
```
docker run -i --device=/dev/ttyUSB0 -d service_gammu
```
