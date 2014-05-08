#ifndef __RAND_CREATION_H_
#define __RAND_CREATION_H_

#include "forest.h"

void generateRandomForest(bnode *forest_branches, lnode *forest_leaves, int num_trees, int depth, int samp_size);
void generateRandomSamples(float *samples, int num_samps, int samp_size);

#endif
