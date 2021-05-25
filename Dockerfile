FROM ubuntu:18.04

LABEL maintainer="Mahdi Imani <imani.mahdi@gmail.com>" \
      license="MIT"

WORKDIR /app

ARG DEB_COMPILERS="g++-8 g++-9 g++-10"
ARG EXTRA_CLANG_COMPILERS="9 10 11 12"

RUN echo "Installing required packages " \
      && export DEBIAN_FRONTEND=noninteractive  \
      && apt-get update \
      && apt-get install -y \
            g++ \
            gcc \
            wget \
            curl \
            libstdc++6 \
            libstdc++11 \
            build-essential \
            manpages-dev \
            llvm \
            clang-format \
            clang-tidy \
            clang-tools \
            clang \
            clangd \
            libc++-dev \
            libc++1 \
            libc++abi-dev \
            libc++abi1 \
            libclang-dev \
            libclang1 \
            liblldb-dev \
            libllvm-ocaml-dev \
            libomp-dev \
            libomp5 \
            lld \
            lldb \
            llvm-dev \
            llvm-runtime \
            llvm python-clang \
            gnupg2 \
            lsb-release \
            apt-utils \
            software-properties-common \
      && apt-get autoremove --purge -y \
      && apt-get autoclean -y \
      && rm -rf /var/cache/apt/*
