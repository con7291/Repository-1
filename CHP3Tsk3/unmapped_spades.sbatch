#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=spades_%J_stdout.txt
#SBATCH --error=spades_%J_stderr.txt
#SBATCH --job-name=sapdes
# 

bash /scratch/biol726309/BIOL7263_Genomics/sequencing_data/ecoli/unmapped_assembly/unmapped_spades.sh