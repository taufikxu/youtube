#! /usr/bin/env bash

model=DbofModel
CUDA_VISIBLE_DEVICES=2 python train.py --model=$model --train_data_pattern="/mfs/shiyu/yt8m/train/train*" --train_dir=./Results/$model --frame_features=True --feature_names="rgb" --batch_size 128 # --base_learning_rate 0.001 # --num_epochs 500 --export_model_steps 7000 --clip_gradient_norm 8
