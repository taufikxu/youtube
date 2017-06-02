#! /usr/bin/env bash

model=$1
python train.py --model=$model --train_data_pattern="/data/yt8m" \
    --train_dir="./Results/$model$2" --frame_features=True --feature_names="rgb, audio" \
    --batch_size 128 --feature_size="1024, 128" --base_learning_rate=0.001 ${@:3}
