#!/bin/bash
#
#SBATCH --partition=debug
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=blastn_%J_stdout.txt
#SBATCH --error=blastn_%J_stderr.txt
#SBATCH --job-name=blastn
# 

bash /scratch/biol726309/BIOL7263_Genomics/sequencing_data/ecoli/unmapped_assembly/unmapped_blastn.sh