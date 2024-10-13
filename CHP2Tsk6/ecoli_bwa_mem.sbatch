#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=4
#SBATCH --mem 16G
#SBATCH --output=ecoli_bwa_%J_stdout.txt
#SBATCH --error=ecoli_bwa_%J_stderr.txt
#SBATCH --job-name=ecoli_bwa
# 

bash /scratch/biol726309/BIOL7263_Genomics/sequencing_data/ecoli/mapping_to_reference/ecoli_bwa_mem.sh