#!/bin/bash
# the script expects two arguments:
# - the domain name for which we are obtaining the ssl certificatee
# - the Email address associated with the ssl certificate
echo DOMAIN=$1 >> .env
echo EMAIL=$2 >> .env

# Get certificate
docker compose up -d nginx
docker compose up certbot
docker compose down

# some configurations for let's encrypt
curl -L --create-dirs -o /etc/letsencrypt/options-ssl-nginx.conf https://raw.githubusercontent.com/certbot/certbot/master/certbot-nginx/certbot_nginx/_internal/tls_configs/options-ssl-nginx.conf
openssl dhparam -out /etc/letsencrypt/ssl-dhparams.pem 2048