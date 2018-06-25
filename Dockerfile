FROM nginx:1.15.0-alpine

COPY index.html /usr/share/nginx/html/

VOLUME /data
EXPOSE 80