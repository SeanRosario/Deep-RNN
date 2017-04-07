#!/bin/bash
#

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=16:00:00
#SBATCH --mem=50GB
#SBATCH --job-name=exp_5
#SBATCH --mail-type=END
##SBATCH --mail-user=sdr375@nyu.edu
#SBATCH --output=exp_5.out
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu

module purge

## Load the required modules

module load python/intel/2.7.12
module load pytorch/intel/20170226
module load torchvision/0.1.7
module load scikit-learn/intel/0.18.1

cd ../../scratch/sdr375/DSGA-1008-Spring2017-A2-master/


python main.py --data '/scratch/sdr375/DSGA-1008-Spring2017-A2-master/data/gutenberg/' --emsize 650 --nhid 650 --dropout 0.5 --epochs 20 --save 650_base_model.pt --savetest 650_base_model.txt
python generate.py --checkpoint 650_base_model.pt --outf 650_base_model_words.txt

## Leave one line at the end



