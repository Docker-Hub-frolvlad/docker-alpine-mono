[![Docker Stars](https://img.shields.io/docker/stars/frolvlad/alpine-mono.svg?style=flat-square)](https://hub.docker.com/r/frolvlad/alpine-mono/)
[![Docker Pulls](https://img.shields.io/docker/pulls/frolvlad/alpine-mono.svg?style=flat-square)](https://hub.docker.com/r/frolvlad/alpine-mono/)


Mono (C#) Docker image
======================

This image is based on Alpine Linux image, which is only a 5MB image, and contains
[Mono](http://www.mono-project.com/).

Download size of this image is only:

[![](https://images.microbadger.com/badges/image/frolvlad/alpine-mono.svg)](http://microbadger.com/images/frolvlad/alpine-mono "Get your own image badge on microbadger.com")

There are also legacy images of Mono 4.8, 5.0, and 5.4 based on
[glibc hack](https://github.com/gliderlabs/docker-alpine/issues/11):

`4.8-glibc` -
[![](https://images.microbadger.com/badges/image/frolvlad/alpine-mono:4.8-glibc.svg)](http://microbadger.com/images/frolvlad/alpine-mono:4.8-glibc "Get your own image badge on microbadger.com")

`5.0-glibc` -
[![](https://images.microbadger.com/badges/image/frolvlad/alpine-mono:5.0-glibc.svg)](http://microbadger.com/images/frolvlad/alpine-mono:5.0-glibc "Get your own image badge on microbadger.com")

`5.4-glibc` -
[![](https://images.microbadger.com/badges/image/frolvlad/alpine-mono:5.4-glibc.svg)](http://microbadger.com/images/frolvlad/alpine-mono:5.4-glibc "Get your own image badge on microbadger.com")


Usage Example
-------------

```bash
$ echo 'using System; class MainClass { public static void Main (string[] args) { Console.WriteLine ("Hello World"); } }' > qq.mono
$ docker run --rm -v "$(pwd)":/mnt frolvlad/alpine-mono sh -c "mcs -out:/mnt/qq.exe /mnt/qq.mono && mono /mnt/qq.exe"
```

Once you have run these commands you will have `qq.exe` mono-executable in your
current directory, and you will get printed 'Hello World' from Mono!
