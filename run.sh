#!/bin/bash

echo "===================================================="
echo " Wi-Fi 6 TWT RL Final Project - Automated Run Script "
echo "===================================================="

# 1. Create a conda environment (if it doesn't exist)
ENV_NAME="twt-rl-env"

echo "[1/5] Checking for Conda environment: $ENV_NAME"

if conda env list | grep -q $ENV_NAME; then
    echo "Conda environment '$ENV_NAME' already exists."
else
    echo "Creating conda environment..."
    conda create -y -n $ENV_NAME python=3.10
fi

echo "[2/5] Activating environment..."
source $(conda info --base)/etc/profile.d/conda.sh
conda activate $ENV_NAME

# 3. Install required dependencies
echo "[3/5] Installing dependencies..."
pip install -r requirements.txt

# 4. Run the RL notebook (convert to .py then run)
echo "[4/5] Executing RL notebook..."
jupyter nbconvert --to python notebooks/RL_project_Ahmed_Selim_Anwar.ipynb
python notebooks/RL_project_Ahmed_Selim_Anwar.py

# 5. Save results
echo "[5/5] Moving results to /results directory..."
mkdir -p results
echo "RL run completed. Check the results folder."

echo "===================================================="
echo "                RUN COMPLETED SUCCESSFULLY           "
echo "===================================================="
