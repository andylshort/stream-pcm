# set STREAMING_STORES to never, auto, or always depending on if want streaming stores
STREAMING_STORES = never
FLAGS = -O3 -qopenmp -DTUNED -DSTREAM_ARRAY_SIZE=112000000 -DNTIMES=100 -mcmodel=medium -xSAPPHIRERAPIDS -qopt-streaming-stores=$(STREAMING_STORES)

CC = icx
MPI_CC = mpiicx
CFLAGS = $(FLAGS)

FC = ifx
FFLAGS = $(FLAGS)


PCM_LINK_FLAGS = -ldl -Wl,-rpath=pcm/build/lib -Lpcm/build/lib -lpcm -lstdc++ \
	-DUSE_PCM -DPCM_DYNAMIC_LIB

all: stream_f stream_c

stream_f: stream.f mysecond.o
	$(FC) $(FFLAGS) -c stream.f -o stream_f.o
	$(FC) $(FFLAGS) stream_f.o mysecond.o -o $@

stream_c: stream.c
	$(CC) $(CFLAGS) stream.c -o $@

stream_mpi_c: stream_mpi.c
	$(MPI_CC) $(CFLAGS) stream_mpi.c -o $@

stream_pcm: stream_pcm.c pcm.o
	$(CC) $(CFLAGS) stream_pcm.c pcm.o -o $@ $(PCM_LINK_FLAGS)

stream_mpi_pcm: stream_mpi_pcm.c pcm.o
	$(MPI_CC) $(CFLAGS) stream_mpi_pcm.c pcm.o -o $@ $(PCM_LINK_FLAGS)

mysecond.o: mysecond.c
	$(CC) $(CFLAGS) -c $^

pcm.o: pcm.cpp
	icpx -O3 \
	-DUSE_PCM -DPCM_DYNAMIC_LIB \
	-c pcm.cpp -fPIC -o pcm.o \
	-Ipcm/src \
	$(PCM_LINK_FLAGS)

clean:
	rm -f stream_f stream_c stream_mpi_c *.o stream_pcm stream_mpi_pcm

# an example of a more complex build line for the Intel icc compiler
stream.icc: stream.c
	icc -O3 -xCORE-AVX2 -ffreestanding -qopenmp -DSTREAM_ARRAY_SIZE=80000000 -DNTIMES=20 stream.c -o stream.omp.AVX2.80M.20x.icc
