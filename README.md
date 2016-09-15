[![Docker Stars](https://img.shields.io/docker/stars/frolvlad/alpine-mono.svg?style=flat-square)](https://hub.docker.com/r/frolvlad/alpine-mono/)
[![Docker Pulls](https://img.shields.io/docker/pulls/frolvlad/alpine-mono.svg?style=flat-square)](https://hub.docker.com/r/frolvlad/alpine-mono/)


Mono (C#) Docker image
======================

This image is based on Alpine Linux image, which is only a 5MB image, and contains
[Mono](http://www.mono-project.com/).

Download size of this image is only:

[![](https://images.microbadger.com/badges/image/frolvlad/alpine-mono.svg)](http://microbadger.com/images/frolvlad/alpine-mono "Get your own image badge on microbadger.com")

WARNING: This mono was compiled for Arch Linux and is ported to Alpine via
[glibc hack](https://github.com/gliderlabs/docker-alpine/issues/11)! Ideally,
Mono package should be added to Alpine repo, but I don't have much time now.


Usage Example
-------------

```bash
$ echo 'using System; class MainClass { public static void Main (string[] args) { Console.WriteLine ("Hello World"); } }' > qq.mono
$ docker run --rm -v "$(pwd)":/mnt frolvlad/alpine-mono sh -c "mcs -out:/mnt/qq.exe /mnt/qq.mono && mono /mnt/qq.exe"
```

Once you have run these commands you will have `qq.exe` mono-executable in your
current directory, and you will get printed 'Hello World' from Mono!
