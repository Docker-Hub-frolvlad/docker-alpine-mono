FROM frolvlad/alpine-glibc:alpine-3.16

RUN apk add --no-cache --virtual=.build-dependencies wget ca-certificates tar zstd && \
    wget "https://archive.archlinux.org/packages/m/mono/mono-6.12.0.177-1-x86_64.pkg.tar.zst" -O "/tmp/mono.pkg.tar.zst" && \
    tar --use-compress-program=unzstd -xvf "/tmp/mono.pkg.tar.zst" && \
    cert-sync /etc/ssl/certs/ca-certificates.crt && \
    apk del .build-dependencies && \
    rm /tmp/*
