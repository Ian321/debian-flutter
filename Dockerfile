FROM debian:latest

ENV DEBIAN_FRONTEND="noninteractive"
ENV DEBCONF_NONINTERACTIVE_SEEN="true"
ENV PATH="/opt/flutter/bin:${PATH}"

RUN apt-get update
RUN apt-get install -y clang cmake curl git libgtk-3-dev libblkid-dev ninja-build pkg-config unzip wget xz-utils zip
RUN git clone -b master --depth 1 https://github.com/flutter/flutter.git /opt/flutter
RUN flutter precache
