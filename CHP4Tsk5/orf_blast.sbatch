#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=orf_blast_%J_stdout.txt
#SBATCH --error=orf_blast_%J_stderr.txt
#SBATCH --job-name=orf_blast
# 

bash /scratch/biol726309/BIOL7263_Genomics/sequencing_data/ecoli/assembly/orf_blast.sh