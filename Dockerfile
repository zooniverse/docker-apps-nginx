FROM zooniverse/nginx

RUN mkdir -p /etc/nginx-sites/

ADD nginx.conf /etc/nginx/nginx.conf
