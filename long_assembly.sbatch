#!/bin/bash
#
#SBATCH --partition=64gb_24core
#SBATCH --ntasks=1
#SBATCH --mem 48G
#SBATCH --output=long_assembly_%J_stdout.txt
#SBATCH --error=long_assembly_%J_stderr.txt
#SBATCH --job-name=ecoli_fastqc
# 

bash /scratch/biol726309/BIOL7263_Genomics/pseudomonas_gm41/assembly/long_assembly.sh