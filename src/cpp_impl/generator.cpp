#include <cstdlib>
#include <ctime>
#include <stdio.h>


#include "generator.h"

#define MAXFLOAT .9f

void generateRandomForest(bnode *forest_branches, lnode *forest_leaves, int num_trees, int depth, int samp_size){
    srand (static_cast <unsigned> (time(0)));
    //generate completely random branches
    for (int i = 0; i < (1<<depth) * num_trees; i++) {
        bnode *b = &forest_branches[i];
        b->threshold = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/MAXFLOAT));
        b->sampIdx = (rand() % samp_size);
    }

    //generate completely random leaves
    for (int i = 0; i < (1<<(depth-1)) * num_trees; i++) {
        lnode *l = &forest_leaves[i];
        l->weight = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/MAXFLOAT));
        l->offset = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/MAXFLOAT));
        l->sampIdx = (rand() % samp_size);

    }
}

void generateRandomSamples(float *samples, int num_samps, int samp_size){
    for (int i = 0; i < num_samps * samp_size; i++){
        samples[i] = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/MAXFLOAT));
    }
}

