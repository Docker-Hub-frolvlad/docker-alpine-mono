FROM frolvlad/alpine-glibc:3.2

RUN apk add --update wget ca-certificates tar xz && \
    cd /tmp && \
    wget "https://www.archlinux.org/packages/extra/x86_64/mono/download/" -O mono.pkg.tar.xz && \
    cd / && \
    tar xJf /tmp/mono.pkg.tar.xz && \
    mozroots --import --ask-remove && \
    apk del wget ca-certificates tar xz && \
    rm /tmp/* /var/cache/apk/*
