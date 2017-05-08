#! /usr/bin/env bash

model=LstmModel
CUDA_VISIBLE_DEVICES=0 python train.py --model=$model --train_data_pattern="/mfs/shiyu/yt8m/train/train*" --train_dir=./Results/$model --frame_features=True --feature_names="rgb, audio" --feature_sizes="1024, 128" --batch_size 128  --base_learning_rate 0.001 --num_epochs 7 --export_model_steps 20000 --clip_gradient_norm 4
