MODEL_DIR=./Results/
CUDA_VISIBLE_DEVICES=0 python train.py --model=LogisticModel --train_dir=$MODEL_DIR/video_level_logistic_model --regularization_penalty 0.01 --clip_gradient_norm 5 --num_epochs 100 --batch_size 20480 --export_model_steps 500
