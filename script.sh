## Base Models

python main.py --epochs 25 --lr 0.1 --model LSTM --shuffle --cuda --save base_model_shuffle.pt --savetest base_model_shuffle.txt
python generate.py --checkpoint base_model_shuffle.pt --outf base_model_shuffle_words.txt --cuda

python main.py --epochs 25 --lr 0.1 --model GRU --shuffle --cuda --save gru_base_model_shuffle.pt --savetest gru_base_model_shuffle.txt
python generate.py --checkpoint gru_base_model_shuffle.pt --outf gru_base_model_shuffle_words.txt --cuda

python main.py --epochs 25 --lr 0.1 --model RNN --shuffle --cuda --save rnn_base_model_shuffle.pt --savetest rnn_base_model_shuffle.txt
python generate.py --checkpoint rnn_base_model_shuffle.pt --outf rnn_base_model_shuffle_words.txt --cuda


## Different Optimizers

## SGD

python main.py --epochs 25 --lr 0.1 --optim SGD --model LSTM --shuffle --cuda --save base_model_sgd_shuffle.pt --savetest base_model_sgd_shuffle.txt
python generate.py --checkpoint base_model_sgd_shuffle.pt --outf base_model_sgd_shuffle_words.txt --cuda

python main.py --epochs 25 --lr 0.1 --optim SGD --model GRU --shuffle --cuda --save gru_base_model_sgd_shuffle.pt --savetest gru_base_model_sgd_shuffle.txt
python generate.py --checkpoint gru_base_model_sgd_shuffle.pt --outf gru_base_model_sgd_shuffle_words.txt --cuda

python main.py --epochs 25 --lr 0.1 --optim SGD --model RNN --shuffle --cuda --save rnn_base_model_sgd_shuffle.pt --savetest rnn_base_model_sgd_shuffle.txt
python generate.py --checkpoint rnn_base_model_sgd_shuffle.pt --outf rnn_base_model_sgd_shuffle_words.txt --cuda
