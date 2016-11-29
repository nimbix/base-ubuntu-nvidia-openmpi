FROM nimbix/base-ubuntu-nvidia:8.0-cudnn5-devel
MAINTAINER Nimbix, Inc. <support@nimbix.net>

ENV MPI_VERSION 2.0.1

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    wget \
    libibverbs-dev \
    libibverbs1 \
    librdmacm1 \
    librdmacm-dev \
    rdmacm-utils \
    libibmad-dev \
    libibmad5 \
    byacc \
    libibumad-dev \
    libibumad3 \
    flex && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD ./install.sh /tmp/install.sh
RUN /bin/bash /tmp/install.sh && rm -rf /tmp/install.sh
