#!/bin/bash
#
#SBATCH --partition=debug
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=orf_%J_stdout.txt
#SBATCH --error=orf_%J_stderr.txt
#SBATCH --job-name=orf
# 

bash /scratch/biol726309/BIOL7263_Genomics/sequencing_data/ecoli/unmapped_assembly/unmapped_orf.sh