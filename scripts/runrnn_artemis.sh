#!/bin/bash
#SBATCH --job-name=run_rnn
#SBATCH --output=/home/cg610/Desktop/inferring_inference_scripts/results/run_rnn_%j.out
#SBATCH --error=/home/cg610/Desktop/inferring_inference_scripts/results/run_rnn_%j.err
#SBATCH --time=04:00:00
#SBATCH --mem=16G
#SBATCH --gres=gpu:1
#SBATCH --partition=sussexneuro

# -------------------------
# Load or activate your Python environment
# -------------------------
source /home/cg610/Desktop/inferring_inf_env/bin/activate

# -------------------------
# Move to the notebook/script directory
# -------------------------
cd /home/cg610/Desktop/inferring_inference_scripts

# -------------------------
# Run the Python script
# -------------------------
python /home/cg610/Desktop/inferring_inference_scripts/notebooks/TrainTAPbrain_on_sampling_data.py
