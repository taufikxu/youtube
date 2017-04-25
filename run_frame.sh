#! /usr/bin/env bash

model=FrameLevelLogisticModel
python train.py --model=$model --train_data_pattern="/mfs/shiyu/yt8m/train/train*" --train_dir="./Results/$model" --frame_features=True --feature_names="rgb" --batch_size 64
