# base-ubuntu-nvidia-openmpi
nvidia/cuda + cuDNN based image with OpenMPI including GPUdirect support

As this is the only MPI library in this image, OpenMPI is installed with prefix /usr, so there is no need to explicitly set ${LD_LIBRARY_PATH} in order to use mpirun
