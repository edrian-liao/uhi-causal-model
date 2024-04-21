#!/bin/bash

#SBATCH --mail-user=edrianpaul.liao@duke.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --output=./bootstrap.out
#SBATCH --error=./bootstrap.err

source ~/.bashrc
conda activate research

python ../bootstrap_coefficients.py \
    --data_dir ../data/boston/ \
    --output_dir ../results/bootstrap/ \
    --num_blocks 50 \
    --l2_alpha 1 \
    --ndvi_ls 26 \
    --albedo_ls 8 \
    --gp_noise 1e-4 \
    --gp_constant_1 0.5 \
    --gp_constant_2 3e-7 \
    --gp_length_scale 115 \
    --gp_sigma_0 0.1 \
    --iterate \
    --log_level INFO
