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