#! /usr/bin/env bash

python inference.py --output_file=$1/predictions$2.csv \
    --input_data_pattern='/mfs/shiyu/yt8m/test/test*' \
    --train_dir=$1 --frame_features=True --feature_names="rgb, audio" \
    --batch_size 128 --feature_size="1024, 128" ${@:3}

