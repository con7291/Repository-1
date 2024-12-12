git config --global user.email "con7291@utulsa.edu"
git config --global user.name "con7291"
if (!requireNamespace('BiocManager', quietly = TRUE))
  install.packages('BiocManager')

BiocManager::install('EnhancedVolcano')
BiocManager::install("devtools")
BiocManager::install("pachterlab/sleuth")

library(sleuth)
# install.packages("devtools")
devtools::install_github("r-lib/conflicted")
library(tidyverse)  
alibrary(EnhancedVolcano)
library(pheatmap)
#read in sample tables - be sure to set correct path 

metadata <- read_table(file = "ExpTable_TTC.txt")


#this command sets up paths to the kallisto output that we will process in the following steps

metadata <- dplyr::mutate(metadata,
                          path = file.path('output', Run_s, 'abundance.h5'))
metadata <- dplyr::rename(metadata, sample = Run_s)

#let's check the metadata

metadata

#Read in headers for the transcripts that we aligned to with kallisto
#These will be mapped in the sleuth_prep command below


ttn<-read_delim("tran_kall_headers.txt", delim = " ", col_names = FALSE)

colnames(ttn)<-c("target_id","gene")

so <- sleuth_prep(metadata, full_model = ~treat, target_mapping = ttn, extra_bootstrap_summary = TRUE, read_bootstrap_tpm = TRUE, aggregation_column = "gene")

so <- sleuth_fit(so)

models(so)

so <- sleuth_wt(so, 'treatU')

#extract the wald test results for each transcript 
transcripts_all <- sleuth_results(so, 'treatU', show_all = FALSE, pval_aggregate = FALSE)

head(transcripts_all, 10)

transcripts_sig <- dplyr::filter(transcripts_all, pval <= 0.05)

transcripts_50 <- dplyr::filter(transcripts_all, pval <= 0.05) %>%
  head(50)

genes_all <- sleuth_results(so, 'treatU', show_all = FALSE, pval_aggregate = TRUE)

#extract the gene symbols, qval, and b values from the Wlad test results
forVolacano<-data.frame(transcripts_all$gene, transcripts_all$pval, transcripts_all$b)

#rename the columns of the dataframe
colnames(forVolacano)<-c("gene","pval","b")

#plot
EnhancedVolcano(forVolacano,
                lab = forVolacano$gene,
                x = 'b',
                y = 'pval',
                xlab = "\u03B2",
                labSize = 3,
                legendPosition = "none")

k_table <- kallisto_table(so, normalized = TRUE)

k_DEG <- k_table %>%
  right_join(transcripts_50, "target_id")
k_DEG_select<-k_DEG %>%
  #apply log10 transformation to the tpm data
  mutate(log_tpm = log10(tpm+1)) %>%
  #select the specifc columns to plot
  dplyr::select(target_id, sample, log_tpm, gene) %>%
  #create "label" from the transcript id and gene symbol
  mutate(label = paste(target_id, gene))%>%
  #pivot data frame to a wide format
  pivot_wider(names_from = sample, values_from = log_tpm) %>%
  #drop the target_id and gene variables
  dplyr::select(!target_id & !gene) %>%
  #convert label to row name
  column_to_rownames("label") %>%
  #convert to matrix
  as.matrix(rownames.force = TRUE) 

#plot with pheatmap!
pheatmap(k_DEG_select, cexRow = 0.4, cexCol = 0.4, scale = "row")

#filter for transcripts enriched in the TTC treatment
transcripts_up <- dplyr::filter(transcripts_all, pval <= 0.05, b > 0)

up<-transcripts_up %>%
  dplyr::select(gene)

#filter for transcripts depleted in the TTC treatment
transcripts_down <- dplyr::filter(transcripts_all, pval <= 0.05, b < 0)

down<-transcripts_down %>%
  dplyr::select(gene)

#output the full transcript list
all<-transcripts_all %>%
  dplyr::select(gene)

#copy to clipboard and paste into ShinyGo website
write_clip(as.character(up))

#copy to clipboard and paste into ShinyGo "background"
write_clip(as.character(all))
