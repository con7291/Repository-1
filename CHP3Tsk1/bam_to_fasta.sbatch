#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=ecoli_bam_to_fasta_%J_stdout.txt
#SBATCH --error=ecoli_bam_to_fasta_%J_stderr.txt
#SBATCH --job-name=ecoli_bam_to_fasta
# 

bash /scratch/biol726309/BIOL7263_Genomics/sequencing_data/ecoli/unmapped_assembly/bam_to_fasta.sh