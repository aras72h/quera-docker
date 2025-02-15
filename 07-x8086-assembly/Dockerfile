FROM registry.gitlab.com/qio/standard/ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server passwd sudo man-db nasm libc6-dev-i386 curl wget vim-tiny

WORKDIR /workspace

CMD ["bin/bash"]