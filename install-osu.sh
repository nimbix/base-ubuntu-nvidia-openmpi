#!/bin/sh

cd /tmp && curl http://mvapich.cse.ohio-state.edu/download/mvapich/osu-micro-benchmarks-${OSU_VERSION}.tar.gz|tar xzf -

cd /tmp/osu-micro-benchmarks-${OSU_VERSION} && \
    ./configure CC=/usr/bin/mpicc \
        --enable-cuda --with-cuda-include=/usr/local/cuda/include \
        --with-cuda-libpath=/usr/local/cuda/lib64 && \
    make -j2 && \
    make install
cd /tmp &&
    rm -rf /tmp/osu-micro-benchmarks-${OSU_VERSION}
