CUDA_VISIBLE_DEVICES=0 python inference.py --output_file=/home/haosheng/youtube/Results/predictions_BiLSTMCropLN.csv --input_data_pattern='/home/yinpeng/yt8m/test/test*' --train_dir='./Results/BiLstmCropLN/' --frame_features=True --feature_names="rgb, audio" --feature_sizes="1024, 128" --batch_size=280 --num_readers=8 --crop=True --crop_interval=5