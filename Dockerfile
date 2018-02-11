FROM alpine:3.7

RUN apk add --no-cache mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    apk add --update --no-cache ca-certificates && \
    cert-sync /etc/ssl/certs/ca-certificates.crt && \
    apk del ca-certificates
