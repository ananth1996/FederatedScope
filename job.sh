#!/bin/sh
#SBATCH --job-name=cikm22cup
#SBATCH --account=project_2005865
#SBATCH --time=32:00:00
#SBATCH --mem=10G
#SBATCH --partition=gpusmall
#SBATCH --gres=gpu:a100:1
#SBATCH --nodes=1
#SBATCH -c 2


export PATH="/projappl/project_2005865/cikm22competition/fs/bin:$PATH"
srun  python federatedscope/main.py --cfg federatedscope/gfl/baseline/fedavg_gin_minibatch_on_cikmcup.yaml --client_cfg federatedscope/gfl/baseline/fedavg_gin_minibatch_on_cikmcup_per_client.yaml
