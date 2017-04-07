#!/bin/bash
#

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=16:00:00
#SBATCH --mem=50GB
#SBATCH --job-name=exp_4
#SBATCH --mail-type=END
##SBATCH --mail-user=sdr375@nyu.edu
#SBATCH --output=exp_4.out
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu

module purge

## Load the required modules

module load python/intel/2.7.12
module load pytorch/intel/20170226
module load torchvision/0.1.7
module load scikit-learn/intel/0.18.1

cd ../../scratch/sdr375/DSGA-1008-Spring2017-A2-master/


python main.py --data '/scratch/sdr375/DSGA-1008-Spring2017-A2-master/data/gutenberg/' --emsize 1500 --nhid 1500 --lr 0.1 --clip 0.75 --dropout 0.65 --epochs 20 --shuffle --tied --save diff_init.pt --savetest diff_init.txt

python generate.py --checkpoint diff_init.pt --outf diff_init_words.txt

## Leave one line at the end



