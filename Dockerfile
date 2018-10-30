FROM nginx:1.13-alpine

RUN mkdir /data

RUN apk update && apk add paxctl && paxctl -c $(which nginx) && paxctl -p -e -m -r -x -s $(which nginx)

COPY cert.pem /data/cert.pem
COPY cert.key /data/cert.key
COPY nginx.conf /etc/nginx/nginx.conf
