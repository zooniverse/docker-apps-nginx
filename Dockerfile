FROM nginx

RUN mkdir -p /etc/nginx-sites/ /etc/nginx-root/ && touch /etc/nginx-root/index.html

ADD nginx.conf /etc/nginx.conf
