FROM buildpack-deps:stretch

ARG JRE_VER=9.0.4

COPY serverjre-${JRE_VER}_linux-x64_bin.tar.gz /

RUN set -x \
 && mkdir -p /opt \
 && cd /opt       \
 && tar -xzf /serverjre-${JRE_VER}_linux-x64_bin.tar.gz \
 && mv jdk-${JRE_VER} jdk-9    \
 && chown -R root:root jdk-9   \
 && cd /                       \
 && tar -cJf rootfs.tar.xz opt \
 && rm -rf /opt

