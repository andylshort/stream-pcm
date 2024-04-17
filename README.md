# STREAM with PCM

* STREAM Benchmark from here: https://github.com/jeffhammond/STREAM
* MPI-enabled STREAM from here: https://www.cs.virginia.edu/stream/FTP/Code/Versions/stream_mpi.c
* Modified to add Intel PCM monitoring, only run Triad kernel

## Instructions

* Use `git clone --recurse-submodules https://github.com/andylshort/stream-pcm`
* Build pcm
* run `make stream_mpi_pcm`
* run `mpirun -n RANKS ./stream_mpi_pcm` as root

