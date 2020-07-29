#!/bin/bash
# bash /home/engineer/loraserver-docker/certbot-auto renew --post-hook "bash /home/engineer/loraserver-docker/update.sh"
sudo certbot certonly --webroot --webroot-path=/var/www/html -d lora.hscc.csie.ncu.edu.tw
2
sudo certbot certonly --webroot --webroot-path=/var/www/html -d mqtt.hscc.csie.ncu.edu.tw
2
cp /etc/letsencrypt/live/lora.hscc.csie.ncu.edu.tw-0001/privkey.pem  /home/engineer/loraserver-docker/configuration/lora-app-server/certs
cp /etc/letsencrypt/live/lora.hscc.csie.ncu.edu.tw-0001/cert.pem  /home/engineer/loraserver-docker/configuration/lora-app-server/certs
cp /etc/letsencrypt/live/mqtt.hscc.csie.ncu.edu.tw/privkey.pem /home/engineer/loraserver-docker/configuration/mqtt/config
cp /etc/letsencrypt/live/mqtt.hscc.csie.ncu.edu.tw/cert.pem /home/engineer/loraserver-docker/configuration/mqtt/config
cp /etc/letsencrypt/live/mqtt.hscc.csie.ncu.edu.tw/chain.pem /home/engineer/loraserver-docker/configuration/mqtt/config

cd /home/engineer/loraserver-docker/
docker-compose down
docker-compose up
