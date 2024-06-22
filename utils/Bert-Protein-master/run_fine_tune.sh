# 设置可以使用的GPU
# export CUDA_VISIBLE_DEVICES=1
python ljy_run_classifier.py \
--do_eval False \
--do_save_model True \
--data_name AMPScan \
--batch_size 32 \
--num_train_epochs 50 \
--warmup_proportion 0.1 \
--learning_rate 2e-5 \
--using_tpu False \
--seq_length 128 \
--data_root ./dataset/1kmer_tfrecord/AMPScan/ \
--vocab_file ./vocab/vocab_1kmer.txt \
--init_checkpoint ./model/1kmer_model/model.ckpt \
--bert_config ./bert_config_1.json \
--save_path ./model/AMPScan_1kmer_model/model.ckpt