Reinforcement Learning–based TWT Scheduling for Energy-Efficient Wi-Fi 6 Uplink

Final Project – CS 5325.001
Author: Ahmed Selim Anwar

This repository contains the complete implementation, experiment pipeline, and evaluation for an offline Reinforcement Learning (RL) system that learns energy-efficient Target Wake Time (TWT) duty-cycle decisions for IEEE 802.11ax (Wi-Fi 6) uplink.
The RL agents (DQN, Dueling DQN, PPO) are trained using real ns-3 simulation logs rather than a synthetic environment, ensuring realistic behavior.

The final project includes:

A reproducible RL training pipeline

Baseline Wi-Fi 6 analysis (throughput, latency, energy)

Comparisons between RL agents and baseline policies

Exploratory plots, tables, and analysis for TWT behavior

📁 Repository Structure
wifi6-twt-rl-final-project/
│
├── notebooks/
│   ├── RL_project_Ahmed_Selim_Anwar.ipynb        # Main RL notebook (training + evaluation)
│   ├── wns3DutyCyclePlotting.ipynb               # Baseline duty-cycle plots
│   └── wns3VaryLoadPlotting.ipynb                # Baseline load variation plots
│
├── data/
│   ├── wns3DutyCycleResults.log                  # ns-3 duty-cycle simulation data
│   ├── wns3DutyCycleScript.sh
│   ├── wns3VaryLoadResults.log                   # ns-3 vary-load results
│   ├── wns3VaryLoadScript.sh
│   └── wns3VaryLoadListOfSims.txt
│
├── results/
│   ├── plots/                                    # All figures exported from notebooks
│
├── requirements.txt
└── README.md

⚙️ Setup Instructions
1. Create a Python environment (recommended: Python 3.10)

Option A – pip
pip install -r requirements.txt

Option B – conda
conda create -n wifi6-twt-rl python=3.10
conda activate wifi6-twt-rl
pip install -r requirements.txt

🚀 How to Run the Project
1. Train RL Agents (Main Notebook)

Open:
notebooks/RL_project_Ahmed_Selim_Anwar.ipynb

This notebook performs:
1. Parsing ns-3 log data
2. Building an offline RL environment
3. Training
    a. DQN
    b. Dueling DQN
    c. PPO
4. Logging training curves
5. Evaluating learned policies on:
    a. Energy consumption
    b. Latency
6. Generating comparison bar charts & RL improvement plots
7. Saving all figures automatically in results/plots/


2. Run Baseline Wi-Fi 6 Plots

These notebooks reproduce the original ns-3 system behavior:

notebooks/wns3DutyCyclePlotting.ipynb
notebooks/wns3VaryLoadPlotting.ipynb


They show:
1. Duty Cycle vs Throughput
2. Duty Cycle vs Latency
3. Duty Cycle vs Energy
4. Load vs Performance Metrics

These are used for analysis and comparison with RL.


🔍 Reproducibility Notes

. All RL experiments rely on offline log interaction, ensuring deterministic state transitions.
. Random seeds are fixed for every episode to enable reproducible results.
. All RL-generated plots (reward curves, energy curves, losses, bar charts) are exported to /results/plots/.
. The project follows the course requirements:
  . clean repo
  . reproducible environment
  . one-command run via Jupyter
  . structured results + discussion


📊 Results Summary (Short Overview)

The RL system learns duty-cycle settings that significantly reduce energy consumption compared to:

1. Random policy
2. Fixed duty-cycle (0.1)
3. Baseline (pre-training values)

All three RL agents show improvements, with PPO and Dueling DQN performing strongest in general across multiple seeds.
Full detailed analysis is inside the Project Report and the main notebook.


📜 License

This repository is released under the MIT license for academic use.
Ns-3 log data belongs to its respective authors and is used only for coursework.