#!/usr/bin/env bash
pwd
export PYTHONPATH=$PYTHONPATH:/data/chenjie/github/DeepMASS2_GUI-main
#git remote add origin https://github.com/hcji/DeepMASS2_GUI
#git pull origin lkr_dev:lkr_dev
#git reset --hard origin/lkr_dev
#source activate deepmass2
lsof -i:5578 | grep 'TCP' | awk '{print $2}' | xargs kill -9
lsof -i:5579 | grep 'TCP' | awk '{print $2}' | xargs kill -9
python ./backend/gradio_app.py & python ./backend/register.py
