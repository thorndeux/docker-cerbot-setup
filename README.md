# Certbot docker setup
Obtain an initial Letsencrpyt SSL certificate for a domain.

## Credits
Adjusted and simplified from [original concept by Oussama Jarrousse](https://blog.jarrousse.org/2022/04/09/an-elegant-way-to-use-docker-compose-to-obtain-and-renew-a-lets-encrypt-ssl-certificate-with-certbot-and-configure-the-nginx-service-to-use-it/)

## Usage
- Clone repository
- Create folder `/etc/letsencrypt` on host
- Make sure `setup.sh` is executable
- Run `./setup.sh <mydomain.com> <myemail@email.com>` with your respective domain name and email address