#!/bin/bash
#

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=16:00:00
#SBATCH --mem=50GB
#SBATCH --job-name=exp_3
#SBATCH --mail-type=END
##SBATCH --mail-user=sdr375@nyu.edu
#SBATCH --output=exp_3.out
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu

module purge

## Load the required modules

module load python/intel/2.7.12
module load pytorch/intel/20170226
module load torchvision/0.1.7
module load scikit-learn/intel/0.18.1

cd ../../scratch/sdr375/DSGA-1008-Spring2017-A2-master/


python main.py --data '/scratch/sdr375/DSGA-1008-Spring2017-A2-master/data/gutenberg/' --emsize 1500 --nhid 1500 --dropout 0.65 --epochs 20 --tied --save sota_no_shuffle.pt --savetest sota_no_shuffle.txt

python generate.py --checkpoint sota_no_shuffle.pt --outf sota_no_shuffle_words.txt

## Leave one line at the end



