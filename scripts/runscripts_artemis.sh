#!/bin/bash
#SBATCH --output=/home/cg610/Desktop/inferring_inference_scripts/results/run_nb_%j.out
#SBATCH --error=/home/cg610/Desktop/inferring_inference_scripts/results/run_nb_%j.err
#SBATCH --job-name=run_nb
#SBATCH --time=02:00:00
#SBATCH --partition=sussexneuro
#SBATCH --mem=8G
# add GPUs or nodes if needed, e.g. --gres=gpu:1

# Load or activate your environment
source ~/Desktop/inferring_inf_env/bin/activate

# Move to notebook directory
cd /home/cg610/Desktop/inferring_inference_scripts

# Execute notebook (safe to write to a separate output file)
~/Desktop/inferring_inf_env/bin/python -m nbconvert --to notebook --execute --output results/output.ipynb \
  --ExecutePreprocessor.exclude_tags={'no_execute'} --ExecutePreprocessor.timeout=-1 --ExecutePreprocessor.allow_errors=True --ExecutePreprocessor.kernel_name=inferring_inf_env notebooks/TrainTAPbrain_on_sampling_data.ipynb
