FROM nginx:${VERSION}-alpine

COPY index.html /usr/share/nginx/html/

ARG VERSION=1.15.0

VOLUME /data
EXPOSE 80
