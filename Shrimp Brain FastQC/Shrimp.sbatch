#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=shrimp_fastqc_%J_stdout.txt
#SBATCH --error=shrimp_fastqc_%J_stderr.txt
#SBATCH --job-name=shrimp_fastqc
# 

bash /home/biol726309/BIOL7263_Genomics/scripts/fastqc/Shrimp.sh