#include <dlfcn.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <fstream>

#ifdef USE_PCM
#include "cpucounters.h"

using namespace pcm;

static SystemCounterState before;
static SystemCounterState after;
static std::ofstream csv_file;
static int iteration;
static PCM* m;

extern "C" {
    typedef struct {
        uint64 bytesRead;
        uint64 bytesWritten;
        double ipc;
        uint64 cycles;
        double l2CacheHitRatio;
        double l3CacheHitRatio;
    } pcm_result;
}

extern "C"
void pcm_init()
{
    // Accessing program() seems to be necessary to program PMU
    // to start tracking cache hits/misses, etc.
    // TODO: Is this documented officially?
    m = PCM::getInstance();
    printf("Program: %d\n",m->program());
    printf("Cores: %d\n",m->getNumCores());

    csv_file.open("pcm_measurements.csv", std::ios::out);
    csv_file << "iteration,bytesRead,bytesWritten,ipc,cycles,l2CacheHitRatio,l3CacheHitRatio\n";
    csv_file.close();

    iteration = 0;
}

extern "C"
void pcm_start()
{
    before = m->getSystemCounterState();
}

extern "C"
void pcm_stop()
{
    after = m->getSystemCounterState();

    pcm_result current_result;
    current_result.bytesRead = getBytesReadFromMC(before, after);
    current_result.bytesWritten = getBytesWrittenToMC(before, after);
    current_result.ipc = getIPC(before, after);
    current_result.cycles = getCycles(before, after);
    current_result.l2CacheHitRatio = getL2CacheHitRatio(before, after);
    current_result.l3CacheHitRatio = getL3CacheHitRatio(before, after);

    /*
    std::cout << "Bytes Read: " << current_result.bytesRead << "\n";
    std::cout << "Bytes Written: " << current_result.bytesWritten << "\n";
    printf("IPC: %f\n", current_result.ipc);
    std::cout << "Cycles: " << current_result.cycles << "\n";
    printf("L2 cache hit ratio: %f\n", current_result.l2CacheHitRatio);
    printf("L3 cache hit ratio: %f\n", current_result.l3CacheHitRatio);

    csv_file.open("pcm_measurements.csv", std::ios::out | std::ios::app);
    csv_file << ++iteration << ",";
    csv_file << current_result.bytesRead << ",";
    csv_file << current_result.bytesWritten << ",";
    csv_file << current_result.ipc << ",";
    csv_file << current_result.cycles << ",";
    csv_file << current_result.l2CacheHitRatio << ",";
    csv_file << current_result.l3CacheHitRatio;
    csv_file << "\n";
    csv_file.close();
    */
}
#endif
