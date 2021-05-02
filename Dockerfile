FROM almalinux/almalinux:8
LABEL maintainer "Aaron Guise <aaron@guise.net.nz>"

RUN \
    echo "skip_missing_names_on_install=False" >> /etc/yum.conf && \
    dnf update -y && \
    dnf install -y epel-release && \
    dnf install -y gcc git python3 python3-devel python3-pip python3-virtualenv openssl-devel python3-libselinux sudo nmap-ncat bind-utils && \
    dnf clean all && \
    rm -rf /var/cache/yum/*

ENV SHELL /bin/bash