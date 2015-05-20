FROM zooniverse/nginx:stable

RUN mkdir -p /etc/nginx-sites/ && touch /etc/nginx-deny.conf

ADD nginx.conf /etc/nginx/nginx.conf
