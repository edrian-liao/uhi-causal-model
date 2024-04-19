#!/bin/bash

#SBATCH --mail-user=edrianpaul.liao@duke.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --output=./f18.out
#SBATCH --error=./f18.err
#SBATCH --mem=64G

source ~/.bashrc
conda activate research

python ../../calc_optimal_weights.py \
    --data_dir ../../data/boston/ \
    --output_dir ../../results/cv/f18/ \
    --k_folds 5 \
    --k_folds_size 10 \
    --l2_alpha 5 \
    --gp_noise 1e-2 \
    --window_size 25 \
    --ndvi_ls_vals 1 30 \
    --albedo_ls_vals 1 20 \
    --gp_constant_1 0.5 \
    --gp_constant_2 3e-7 \
    --gp_length_scale 115 \
    --gp_sigma_0 0.1 \
    --max_iter 10 \
    --log_level INFO