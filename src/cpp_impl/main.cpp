#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <string>
#include <getopt.h>

#include "CycleTimer.h"
#include "forest.h"
#include "generator.h"

#include <cmath>

void usage() {
    printf("Program Options:\n");
    printf("  -n  --tree<N>        Number of trees in the forest\n");
    printf("  -d  --depth <D>      Tree Depth for the forest\n");
    printf("  -m  --sampleSize <S> Each Sample has S data elements\n");
    printf("  -s  --samples <N>    Use N Samples\n");
    printf("  -t  --threads <N>    Use T threads\n");
    printf("  -?  --help           This message\n");
}

bool almost_equals(float f, float g, float epsilon){
    return (abs(f - g)) < epsilon;
}

int main(int argc, char** argv) {

    int  num_threads = -1;
    int  num_trees = -1;
    int  num_samps = -1;
    int  samp_size = -1;
    int  depth = -1;

    // parse commandline options ////////////////////////////////////////////
    int opt;
    static struct option long_options[] = {
        {"threads", 1, 0, 't'},
        {"trees", 1, 0, 'n'},
        {"depth", 1, 0, 'd'},
        {"samples", 1, 0, 's'},
        {"ssize", 1, 0, 'm'},
        {"help", 0, 0, '?'},
        {0 ,0, 0, 0}
    };

    while ((opt = getopt_long(argc, argv, "t:n:d:s:m:?", long_options, NULL)) != EOF) {
        switch (opt) {
        case 't':
        {
            num_threads = atoi(optarg);
            break;
        }
        case 'n':
        {
            num_trees = atoi(optarg);
            break;
        }
        case 'd':
        {
            depth = atoi(optarg);
            break;
        }
        case 's':
        {
            num_samps = atoi(optarg);
            break;
        }
        case 'm':
        {
            samp_size = atoi(optarg);
            break;
        }
        case '?':
        default:
            usage();
            return 1;
        }
    }

    if (depth == -1 || num_trees == -1 || num_samps == -1 || samp_size == -1) {
        usage();
        return 1;
    }

    printf("----------------------------------------------------------\n");
    printf("OMP Max system threads = %d\n", omp_get_max_threads());
    if (num_threads > 0)
        omp_set_num_threads(num_threads);
    printf("OMP will use at most %d threads.\n", omp_get_max_threads());
    printf("----------------------------------------------------------\n");

    printf("Loading forest\n");
    bnode forest_branches[num_trees * (1<<depth)];
    lnode forest_leaves[num_trees * (1<<(depth-1))];
    generateRandomForest(forest_branches, forest_leaves, num_trees, depth, samp_size);

    printf("Finished Generating Samples\n");

    float samples[num_samps * samp_size];
    generateRandomSamples(samples, num_samps, samp_size);

    float seq_sum;
    float par_sum;

    #define ITER_CYCLE 1

    double start_time = CycleTimer::currentSeconds();
    for (int i = 0; i < ITER_CYCLE; i++)
        my_parallel_forest_analysis(&seq_sum, samples, num_samps, samp_size, forest_branches, forest_leaves, num_trees, depth);
    double end_time = CycleTimer::currentSeconds();
    double speed_seq_rfc = end_time - start_time;
    printf("Sequential Forest: %.9f sec\n", speed_seq_rfc);
    printf("SeqSum: %f\n",seq_sum);

    generateRandomForest(forest_branches, forest_leaves, num_trees, depth, samp_size);
    generateRandomSamples(samples, num_samps, samp_size);
/*
    double s_start_time = CycleTimer::currentSeconds();
    for (int i = 0; i < ITER_CYCLE; i++)
        parallel_forest_analysis(&par_sum, samples, num_samps, samp_size, forest_branches, forest_leaves, num_trees, depth);
    double s_end_time = CycleTimer::currentSeconds();
    double speed_par_rfc = s_end_time - s_start_time;
    printf("Parallel Forest: %.9f sec\n", speed_par_rfc);
    printf("Speedup from Top Down: %.3fx\n", speed_seq_rfc/speed_par_rfc);

    if (!(almost_equals(seq_sum, par_sum, (static_cast <float> (num_samps)) * 0.01f))){
        printf("Results differ. %f, %f \n", seq_sum, par_sum);
    } else {
        printf("All results agree.\n");
    }*/
    return 0;
}
