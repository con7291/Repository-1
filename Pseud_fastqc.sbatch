#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=Pseud_fastqc_%J_stdout.txt
#SBATCH --error=Pseud_fastqc_%J_stderr.txt
#SBATCH --job-name=ecoli_fastqc
# 

bash /scratch/biol726309/BIOL7263_Genomics/pseudomonas_gm41/Pseud_fastqc.sh