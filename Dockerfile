ARG VERSION=1.15.0
FROM nginx:${VERSION}-alpine

COPY index.html /usr/share/nginx/html/

VOLUME /data
EXPOSE 80
