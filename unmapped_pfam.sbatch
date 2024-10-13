#!/bin/bash
#
#SBATCH --partition=debug
#SBATCH --ntasks=4
#SBATCH --mem 16G
#SBATCH --output=pfam_%J_stdout.txt
#SBATCH --error=pfam_%J_stderr.txt
#SBATCH --job-name=pfam
# 

bash /scratch/biol726309/BIOL7263_Genomics/sequencing_data/ecoli/unmapped_assembly/unmapped_spades.sh