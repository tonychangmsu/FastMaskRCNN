#!/bin/bash
#SBATCH --job-name=maskrcnn-train
#SBATCH --output=/scratch/lz62/FastMaskRCNN/output/train_output.txt
#SBATCH --time=01:00:00
#SBATCH --workdir=/scratch/lz62/FastMaskRCNN
# requesting 1 GPU core
#SBATCH --gres=gpu:tesla:1
# requesting more memory (the amount is in megabytes)
#SBATHC --mem=32000

### Generation annotations
python download_and_convert_data.py

### Compile libraries
cd libs
make
cd ..

### Train
python train/train.py

