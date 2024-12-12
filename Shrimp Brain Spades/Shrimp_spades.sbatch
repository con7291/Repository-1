#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=4
#SBATCH --mem 8G
#SBATCH --output=shrimp_trim_%J_stdout.txt
#SBATCH --error=shrimp_trim_%J_stderr.txt
#SBATCH --job-name=shrimp_trim
# 

bash /scratch/biol726309/Shrim_trim/Spades/Shrimp_spades.sh