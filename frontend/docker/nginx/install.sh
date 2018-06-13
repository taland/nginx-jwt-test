#!/usr/bin/env sh


NGINX_JWT_VERSION="1.0.1"


cd /tmp \
	&& curl -fSL https://github.com/auth0/nginx-jwt/archive/v${NGINX_JWT_VERSION}.tar.gz -o nginx-jwt-v${NGINX_JWT_VERSION}.tar.gz \
	&& tar xzf nginx-jwt-v${NGINX_JWT_VERSION}.tar.gz \
	&& cd nginx-jwt-${NGINX_JWT_VERSION} \
	&& ./build deps \
	&& mkdir -p /usr/local/openresty/jwt \
	&& cp -fr *.lua /usr/local/openresty/jwt \
	&& cp -fr lib/* /usr/local/openresty/jwt/
