# BASE Image
FROM debian:buster-slim

RUN apt-get update
RUN apt-get install -y nginx
#CMD nginx -g 'daemon off;'
RUN rm /var/log/nginx/access.log && ln -s /dev/stdout /var/log/nginx/access.log
RUN rm /var/log/nginx/error.log && ln -s /dev/stderr /var/log/nginx/error.log

COPY ./etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./etc/nginx/api_gateway.conf /etc/nginx/api_gateway.conf
RUN mkdir /etc/nginx/api_conf.d
COPY ./etc/nginx/api_conf.d/api_backend.conf /etc/nginx/api_conf.d/api_backend.conf
#COPY ./etc/nginx/api_conf.d/warehouse_api_simple.conf /etc/nginx/api_conf.d/warehouse_api_simple.conf
COPY ./etc/nginx/api_conf.d/warehouse_api_precise.conf /etc/nginx/api_conf.d/warehouse_api_precise.conf
COPY ./etc/nginx/api_conf.d/api_json_errors.conf /etc/nginx/api_conf.d/api_json_errors.conf

CMD ["/usr/sbin/nginx","-g","daemon off;"]
