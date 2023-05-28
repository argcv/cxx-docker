FROM ubuntu:22.04

RUN apt-get update \
    && apt-get --yes install \
    sudo build-essential cmake wget pkg-config \
    zlib1g curl unzip zip \
    && rm -rf /var/lib/apt/lists/*

RUN wget --progress=dot:giga http://fileserver.rcrai.com/build-tools/tools/bazel/bazel-5.2.0-linux-x86_64 \
    -O bazel && chmod +x bazel && mv bazel /bin
