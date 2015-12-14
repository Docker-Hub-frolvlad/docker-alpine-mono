FROM frolvlad/alpine-glibc:3.2

RUN apk add --update --virtual=build-dependencies wget ca-certificates tar xz && \
    wget "https://www.archlinux.org/packages/extra/x86_64/mono/download/" -O "/tmp/mono.pkg.tar.xz" && \
    tar -xJf "/tmp/mono.pkg.tar.xz" && \
    mozroots --import --ask-remove && \
    apk del build-dependencies && \
    rm /tmp/* /var/cache/apk/*
