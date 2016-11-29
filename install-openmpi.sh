#!/bin/sh

cd /tmp && curl https://www.open-mpi.org/software/ompi/v2.0/downloads/openmpi-${MPI_VERSION}.tar.bz2 |tar xjf -

cd /tmp/openmpi-${MPI_VERSION} && \
    ./configure --with-cuda=/usr/local/cuda --enable-mpi-thread-multiple \
        --with-wrapper-ldflags=-Wl,-rpath,/lib --enable-picky \
        --enable-orterun-prefix-by-default -disable-io-romio --prefix=/usr && \
    make -j2 && \
    make install
cd /tmp && \
    rm -rf /tmp/openmpi-${MPI_VERSION}
