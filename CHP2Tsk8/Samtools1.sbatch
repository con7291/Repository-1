#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=ecoli_index_%J_stdout.txt
#SBATCH --error=ecoli_index_%J_stderr.txt
#SBATCH --job-name=ecoli_index
# 

bash /home/biol726309/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference