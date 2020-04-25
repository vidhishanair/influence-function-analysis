# influence
CUDA_VISIBLE_DEVICES='0' python -W ignore bert_influence.py --data_dir="data/" --bert_model="bert-base-uncased" --trained_model_dir="SA_tagger_output_bert_e3/" --max_seq_length=128 --train_batch_size=8 --seed=2019 --do_lower_case --num_train_samples=10000 --damping=3e-3 --lissa_repeat=1 --lissa_depth=0.25 --influence_on_decision --start_test_idx=1 --end_test_idx=50 --task="SA" --output_dir="SA_influence_output_bert_e3"

CUDA_VISIBLE_DEVICES='0' python -W ignore bert_influence.py --data_dir="data/" --bert_model="bert-base-uncased" --trained_model_dir="NLI_tagger_output_bert_e3/" --max_seq_length=128 --train_batch_size=8 --seed=2019 --do_lower_case --num_train_samples=10000 --damping=3e-3 --lissa_repeat=1 --lissa_depth=0.25 --influence_on_decision --start_test_idx=1 --end_test_idx=30 --task="NLI" --output_dir="NLI_influence_output_bert_e3"

# loo
for i in {1..50}
do
    CUDA_VISIBLE_DEVICES='0' python -W ignore bert_loo_tagger.py --data_dir="data/" --bert_model="bert-base-uncased" --max_seq_length=128 --do_train --do_test --train_batch_size=32 --eval_batch_size=1 --learning_rate=5e-5 --num_train_epochs=3 --warmup_proportion=0.1 --seed=2019 --do_lower_case --num_train_samples=10000 --task="SA" --output_dir="SA_loo_tagger_output_bert_e3_s19_c0/" --test_idx=$i --influence_file_dir="SA_influence_output_bert_e3" --loo_percentage=0.1
    CUDA_VISIBLE_DEVICES='0' python -W ignore bert_loo_tagger.py --data_dir="data/" --bert_model="bert-base-uncased" --max_seq_length=128 --do_train --do_test --train_batch_size=32 --eval_batch_size=1 --learning_rate=5e-5 --num_train_epochs=3 --warmup_proportion=0.1 --seed=2029 --do_lower_case --num_train_samples=10000 --task="SA" --output_dir="SA_loo_tagger_output_bert_e3_s29_c0/" --test_idx=$i --influence_file_dir="SA_influence_output_bert_e3" --loo_percentage=0.1
    CUDA_VISIBLE_DEVICES='0' python -W ignore bert_loo_tagger.py --data_dir="data/" --bert_model="bert-base-uncased" --max_seq_length=128 --do_train --do_test --train_batch_size=32 --eval_batch_size=1 --learning_rate=5e-5 --num_train_epochs=3 --warmup_proportion=0.1 --seed=2039 --do_lower_case --num_train_samples=10000 --task="SA" --output_dir="SA_loo_tagger_output_bert_e3_s39_c0/" --test_idx=$i --influence_file_dir="SA_influence_output_bert_e3" --loo_percentage=0.1
    CUDA_VISIBLE_DEVICES='0' python -W ignore bert_loo_tagger.py --data_dir="data/" --bert_model="bert-base-uncased" --max_seq_length=128 --do_train --do_test --train_batch_size=32 --eval_batch_size=1 --learning_rate=5e-5 --num_train_epochs=3 --warmup_proportion=0.1 --seed=2049 --do_lower_case --num_train_samples=10000 --task="SA" --output_dir="SA_loo_tagger_output_bert_e3_s49_c0/" --test_idx=$i --influence_file_dir="SA_influence_output_bert_e3" --loo_percentage=0.1
    CUDA_VISIBLE_DEVICES='0' python -W ignore bert_loo_tagger.py --data_dir="data/" --bert_model="bert-base-uncased" --max_seq_length=128 --do_train --do_test --train_batch_size=32 --eval_batch_size=1 --learning_rate=5e-5 --num_train_epochs=3 --warmup_proportion=0.1 --seed=2059 --do_lower_case --num_train_samples=10000 --task="SA" --output_dir="SA_loo_tagger_output_bert_e3_s59_c0/" --test_idx=$i --influence_file_dir="SA_influence_output_bert_e3" --loo_percentage=0.1
done

for i in {1..30}
do
    CUDA_VISIBLE_DEVICES='0' python -W ignore bert_loo_tagger.py --data_dir="data/" --bert_model="bert-base-uncased" --max_seq_length=128 --do_train --do_test --train_batch_size=32 --eval_batch_size=1 --learning_rate=5e-5 --num_train_epochs=3 --warmup_proportion=0.1 --seed=2019 --do_lower_case --num_train_samples=10000 --task="NLI" --output_dir="NLI_loo_tagger_output_bert_e3_s19_c0/" --test_idx=$i --influence_file_dir="NLI_influence_output_bert_e3" --loo_percentage=0.1
    CUDA_VISIBLE_DEVICES='0' python -W ignore bert_loo_tagger.py --data_dir="data/" --bert_model="bert-base-uncased" --max_seq_length=128 --do_train --do_test --train_batch_size=32 --eval_batch_size=1 --learning_rate=5e-5 --num_train_epochs=3 --warmup_proportion=0.1 --seed=2029 --do_lower_case --num_train_samples=10000 --task="NLI" --output_dir="NLI_loo_tagger_output_bert_e3_s29_c0/" --test_idx=$i --influence_file_dir="NLI_influence_output_bert_e3" --loo_percentage=0.1
    CUDA_VISIBLE_DEVICES='0' python -W ignore bert_loo_tagger.py --data_dir="data/" --bert_model="bert-base-uncased" --max_seq_length=128 --do_train --do_test --train_batch_size=32 --eval_batch_size=1 --learning_rate=5e-5 --num_train_epochs=3 --warmup_proportion=0.1 --seed=2039 --do_lower_case --num_train_samples=10000 --task="NLI" --output_dir="NLI_loo_tagger_output_bert_e3_s39_c0/" --test_idx=$i --influence_file_dir="NLI_influence_output_bert_e3" --loo_percentage=0.1
    CUDA_VISIBLE_DEVICES='0' python -W ignore bert_loo_tagger.py --data_dir="data/" --bert_model="bert-base-uncased" --max_seq_length=128 --do_train --do_test --train_batch_size=32 --eval_batch_size=1 --learning_rate=5e-5 --num_train_epochs=3 --warmup_proportion=0.1 --seed=2049 --do_lower_case --num_train_samples=10000 --task="NLI" --output_dir="NLI_loo_tagger_output_bert_e3_s49_c0/" --test_idx=$i --influence_file_dir="NLI_influence_output_bert_e3" --loo_percentage=0.1
    CUDA_VISIBLE_DEVICES='0' python -W ignore bert_loo_tagger.py --data_dir="data/" --bert_model="bert-base-uncased" --max_seq_length=128 --do_train --do_test --train_batch_size=32 --eval_batch_size=1 --learning_rate=5e-5 --num_train_epochs=3 --warmup_proportion=0.1 --seed=2059 --do_lower_case --num_train_samples=10000 --task="NLI" --output_dir="NLI_loo_tagger_output_bert_e3_s59_c0/" --test_idx=$i --influence_file_dir="NLI_influence_output_bert_e3" --loo_percentage=0.1
done

# token-level
CUDA_VISIBLE_DEVICES='0' python -W ignore bert_token_influence.py --data_dir="data/" --bert_model="bert-base-uncased" --trained_model_dir="SA_tagger_output_bert_e3/" --max_seq_length=128 --train_batch_size=8 --seed=2019 --do_lower_case --num_train_samples=10000 --damping=3e-3 --lissa_repeat=1 --lissa_depth=0.25 --influence_on_decision --start_test_idx=1 --end_test_idx=50 --task="SA" --output_dir="SA_diff_influence_output_bert_e3" --mask_token

CUDA_VISIBLE_DEVICES='0' python -W ignore bert_token_influence.py --data_dir="data/" --bert_model="bert-base-uncased" --trained_model_dir="NLI_tagger_output_bert_e3/" --max_seq_length=128 --train_batch_size=8 --seed=2019 --do_lower_case --num_train_samples=10000 --damping=3e-3 --lissa_repeat=1 --lissa_depth=0.25 --influence_on_decision --start_test_idx=1 --end_test_idx=30 --task="NLI" --output_dir="NLI_diff_influence_output_bert_e3" --mask_token
