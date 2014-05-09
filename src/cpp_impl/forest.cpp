#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <cstddef>
#include <omp.h>

#include "forest.h"

void my_parallel_forest_analysis(float *res, float *samples, int num_samps, int samp_size,
                                bnode *forest_branches, lnode *forest_leaves, int num_trees, int depth) {
    float samples_sum = 0.0f;
    int leaf_set = (1<<(depth - 1));

    #pragma omp parallel for reduction(+:samples_sum) schedule(static,1)
    for (int i = 0; i < num_samps; i++){
        float sample_result = 0.0f;

        for (int j = 0; j < num_trees; j++) {
            int current_node = 1;
            int tree_offset = j * (1<<depth);
            int leaf_offset = j * leaf_set;

            float local_result= 0.0f;
            for (int k = 0; k < depth + 1; k++) {
                int node_index = tree_offset + current_node;
                if (k == depth){
                    lnode leaf = forest_leaves[leaf_offset + current_node - leaf_set];
                    float weight = leaf.weight;
                    float offset = leaf.offset;
                    int sampIdx = leaf.sampIdx;
                    local_result = samples[i * samp_size + sampIdx] * weight + offset;
                } else {
                    bnode branch = forest_branches[tree_offset + current_node];
                    float threshold = branch.threshold;
                    int sampIdx = branch.sampIdx;
                    float current = samples[i * samp_size + sampIdx];
                    current_node = (k == depth - 1) ? current_node : (current <= threshold) ? current_node << 1 : (current_node << 1) + 1;
                }
            }
            sample_result += local_result;
        }
        samples_sum += sample_result;
    }
    *res = samples_sum;
}

void parallel_forest_analysis(float *res, float *samples, int num_samps, int samp_size,
                                bnode *forest_branches, lnode *forest_leaves, int num_trees, int depth) {

    float samples_sum = 0;
    int leaf_set = (1<<(depth - 1));

    #pragma omp parallel for schedule(static,1)//reduction(+:samples_sum)
    for (int i = 0; i < num_samps * num_trees; i++){
        int tree_idx = i % num_trees;
        int samp_idx = i / num_trees;

        int current_node = 1;
        int tree_offset = tree_idx * (1<<depth);
        int leaf_offset = tree_idx * leaf_set;

        float local_result;

        for (int k = 0; k < depth + 1; k++) {
            int node_index = tree_offset + current_node;
                 if (k == depth){
                    lnode leaf = forest_leaves[leaf_offset + current_node - leaf_set];
                    float weight = leaf.weight;
                    float offset = leaf.offset;
                    int sampIdx = leaf.sampIdx;
                    local_result = samples[samp_idx * samp_size + sampIdx] * weight + offset;
                } else {
                    bnode branch = forest_branches[tree_offset + current_node];
                    float threshold = branch.threshold;
                    int sampIdx = branch.sampIdx;
                    float current = samples[samp_idx * samp_size + sampIdx];
                    current_node = (k == depth - 1) ? current_node : (current <= threshold) ? current_node << 1 : (current_node << 1) + 1;
                }
        }
        //samples_sum += local_result;
    }
    //*res = samples_sum;
}

void sequential_forest_analysis(float *res, float *samples, int num_samps, int samp_size,
                                bnode *forest_branches, lnode *forest_leaves, int num_trees, int depth) {
    float samples_sum = 0;
    int leaf_set = (1<<(depth - 1));

    float sample_result;
    for (int i = 0; i < num_samps * num_trees; i++){
        sample_result = 0.0f;

        int tree_idx = i % num_trees;
        int samp_idx = i / num_trees;

        int current_node = 1;
        int tree_offset = tree_idx * (1<<depth);
        int leaf_offset = tree_idx * leaf_set;

        float local_result;

        for (int k = 0; k < depth + 1; k++) {
            int node_index = tree_offset + current_node;
                 if (k == depth){
                    lnode leaf = forest_leaves[leaf_offset + current_node - leaf_set];
                    float weight = leaf.weight;
                    float offset = leaf.offset;
                    int sampIdx = leaf.sampIdx;
                    local_result = samples[samp_idx * samp_size + sampIdx] * weight + offset;
                } else {
                    bnode branch = forest_branches[tree_offset + current_node];
                    float threshold = branch.threshold;
                    int sampIdx = branch.sampIdx;
                    float current = samples[samp_idx * samp_size + sampIdx];
                    current_node = (k == depth - 1) ? current_node : (current <= threshold) ? current_node << 1 : (current_node << 1) + 1;
                }
        }
        //samples_sum += local_result;
    }
    //*res = samples_sum;
}


void my_sequential_forest_analysis(float *res, float *samples, int num_samps, int samp_size,
                                bnode *forest_branches, lnode *forest_leaves, int num_trees, int depth) {

    float samples_sum = 0.0f;
    int leaf_set = (1<<(depth - 1));

    for (int i = 0; i < num_samps; i++){
        float sample_result = 0.0f;

        for (int j = 0; j < num_trees; j++) {
            int current_node = 1;
            int tree_offset = j * (1<<depth);
            int leaf_offset = j * leaf_set;

            float local_result= 0.0f;
            for (int k = 0; k < depth + 1; k++) {
                int node_index = tree_offset + current_node;
                if (k == depth){
                    lnode leaf = forest_leaves[leaf_offset + current_node - leaf_set];
                    float weight = leaf.weight;
                    float offset = leaf.offset;
                    int sampIdx = leaf.sampIdx;
                    local_result = samples[i * samp_size + sampIdx] * weight + offset;
                } else {
                    bnode branch = forest_branches[tree_offset + current_node];
                    float threshold = branch.threshold;
                    int sampIdx = branch.sampIdx;
                    float current = samples[i * samp_size + sampIdx];
                    current_node = (k == depth - 1) ? current_node : (current <= threshold) ? current_node << 1 : (current_node << 1) + 1;
                }
            }
            sample_result += local_result;
        }
        //samples_sum += sample_result;
    }
    //*res = samples_sum;
}
