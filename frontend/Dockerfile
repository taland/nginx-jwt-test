FROM openresty/openresty:alpine

ENV JWT_SECRET="strong secret key!"

WORKDIR /app
COPY . /app

RUN apk add --no-cache bash openssl curl
RUN ./docker/nginx/install.sh
COPY ./docker/nginx/nginx.conf.template /usr/local/openresty/nginx/conf/nginx.conf

EXPOSE 80
