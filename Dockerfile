FROM wordpress:latest

WORKDIR /var/www/html

COPY ./etc/docker/cmd.sh /usr/local/bin

ENTRYPOINT ["/usr/local/bin/cmd.sh"]
