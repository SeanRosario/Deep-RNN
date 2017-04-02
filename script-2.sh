# Dimension of word vectors

python main.py --emsize 650 --nhid 650 --dropout 0.5 --epochs 40
python main.py --emsize 650 --nhid 650 --nlayers 10 --dropout 0.5 --epochs 40 
python main.py --emsize 1500 --nhid 1500 --nlayers 5 --dropout 0.65 --shuffle --epochs 40 
python main.py --emsize 1500 --nhid 1500 --dropout 0.65 --epochs 40 --shuffle --tied

#No shuffle

python main.py --emsize 1500 --nhid 1500 --dropout 0.65 --epochs 40 --tied

# Parameter Initialization

python main.py --emsize 1500 --nhid 1500 --lr 0.1 --clip 0.75 --dropout 0.65 --epochs 40 --shuffle --tied

