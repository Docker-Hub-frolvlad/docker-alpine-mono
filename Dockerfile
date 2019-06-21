FROM frolvlad/alpine-glibc:alpine-3.10

RUN apk add --no-cache --virtual=.build-dependencies wget ca-certificates tar xz && \
    wget "https://archive.archlinux.org/packages/m/mono/mono-5.20.1.19-1-x86_64.pkg.tar.xz" -O "/tmp/mono.pkg.tar.xz" && \
    tar -xJf "/tmp/mono.pkg.tar.xz" && \
    cert-sync /etc/ssl/certs/ca-certificates.crt && \
    apk del .build-dependencies && \
    rm /tmp/*
