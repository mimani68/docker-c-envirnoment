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
            libstdc++6 \
            libstdc++11 \
            build-essential \
            manpages-dev \
            gnupg2 \
            lsb-release \
            apt-utils \
            software-properties-common \
      && apt-get autoremove --purge -y \
      && apt-get autoclean -y \
      && rm -rf /var/cache/apt/*

# ENTRYPOINT [ "/usr/bin/g++-10" ]
