#ifndef _FOREST_H
#define _FOREST_H

  typedef struct branch_data bnode;
  typedef struct leaf_data lnode;

  struct branch_data {
      float threshold;
      int sampIdx;
  };

  struct leaf_data {
      float weight;
      float offset;
      int sampIdx;
  };

void parallel_forest_analysis(float *res, float *samples, int n_samps, int n_samp_size,
                              bnode *forest_branches, lnode *forest_leaves, int num_trees, int depth);
void sequential_forest_analysis(float *res, float *samples, int n_samps,int n_samp_size,
                                bnode *forest_branches, lnode *forest_leaves, int num_trees, int depth);





#endif


