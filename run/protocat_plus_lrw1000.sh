source activate zykycy
python ../main.py \
    --do_train \
    --do_test \
    --meta_batch_size 1 \
    --data_path /data/zhangyk/data \
    --max_epoch 50 \
    --gpu 0,1 \
    --gpu_space_require 45000 \
    --model_class ProtoCAT_Plus \
    --distance l2 \
    --lr_scheduler step step \
    --mm_list video audio \
    --dataset LRW1000 \
    --train_way 5 --val_way 5 --test_way 5 \
    --train_shot 1 --val_shot 1 --test_shot 1 \
    --train_query 8 --val_query 15 --test_query 15 \
    --logger_filename /z_logs \
    --temperature 64 \
    --lr 0.00001 \
    --step_size 5 \
    --cosine_annealing_lr_eta_min 0.000001 \
    --gamma 0.8 \
    --grad_scaler \
    --val_interval 1 \
    --test_interval 0 \
    --loss_fn F-cross_entropy \
    --init_weights /home/zhangyk/pre_trained_weights \
    --gfsl_train \
    --gfsl_test \
    --backend_type LSTM GRU \
    --acc_per_class \
    --epoch_verbose \
    --verbose
