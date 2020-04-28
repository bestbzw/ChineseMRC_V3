source activate torch
export CUDA_VISIBLE_DEVICES=""
python run.py --data_dir /data/bzw/MRC/data/lic2020/demo \
    --model_name_or_path  /data/package/albert_base  \
    --output_dir albert_models \
    --model_type albert \
    --train_file demo_train_kw_tfidf.json \
    --predict_file demo_dev_kw_tfidf.json \
    --do_eval \
    --max_seq_length 256 \
    --per_gpu_eval_batch_size 32 \
    --per_gpu_train_batch_size 8 \
    --learning_rate 5e-5\
    --model_name robert_chinese_large\
    --num_train_epochs 3 \
    --split_doc \
    --overwrite_output_dir \
    --do_train
#    --evaluate_during_training \
#    --overwrite_output_dir \
#    --overwrite_cache \
#    --use_context_keyword \
    
