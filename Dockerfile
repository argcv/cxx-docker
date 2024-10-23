FROM ubuntu:24.04

RUN export DEBIAN_FRONTEND=noninteractive; \
    apt-get update && \
    apt-get --yes install \
    --no-install-recommends ca-certificates && \
    apt-get update && \
    apt-get --yes install \
    sudo build-essential nasm \
    wget curl pkg-config cmake \
    zlib1g unzip zip && \
    rm -rf /var/lib/apt/lists/*
