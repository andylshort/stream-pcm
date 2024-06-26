#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <fstream>
#include <vector>

#ifdef USE_PCM
#include "cpucounters.h"
#include "utils.h"

using namespace pcm;

extern "C" {
    typedef struct {
        uint64 bytesRead;
        uint64 bytesWritten;
        double ipc;
        uint64 cycles;
        double l2CacheHitRatio;
        double l3CacheHitRatio;
    } pcm_result;

    static std::ofstream csv_file;
    static int iteration;
    static PCM* m;

    static SystemCounterState sysBefore, sysAfter;
    static std::vector<CoreCounterState> coreBefore, coreAfter;

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

    void pcm_start()
    {
        std::vector<SocketCounterState> globalDummySocketStates;
        m->getAllCounterStates(sysBefore, globalDummySocketStates, coreBefore);
    }

    void pcm_stop()
    {
        std::vector<SocketCounterState> globalDummySocketStates;
        m->getAllCounterStates(sysAfter, globalDummySocketStates, coreAfter);

        pcm_result current_result;
        current_result.bytesRead = getBytesReadFromMC(sysBefore, sysAfter);
        current_result.bytesWritten = getBytesWrittenToMC(sysBefore, sysAfter);
        current_result.ipc = getIPC(sysBefore, sysAfter);
        current_result.cycles = getCycles(sysBefore, sysAfter);
        current_result.l2CacheHitRatio = getL2CacheHitRatio(sysBefore, sysAfter);
        current_result.l3CacheHitRatio = getL3CacheHitRatio(sysBefore, sysAfter);

        std::cout << "Bytes Read: " << current_result.bytesRead / 100 << "\n";
        std::cout << "Bytes Written: " << current_result.bytesWritten / 100 << "\n";
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
    }
}
#endif
