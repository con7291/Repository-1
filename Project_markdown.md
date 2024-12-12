Seminar Project: Snapping Shrimp Brain Transcriptome Armored versus Unaromored

Project Background

Study System: Analysis of model organism Alpheus heterochaelis, a species of snapping shrimp, will be centered around reaching the goal of transcriptomic analysis of armored shrimp brains versus unarmored shrimp brians. The brains of snapping shrimp are a particularly interesting part of the snapping shrimp to study, as snapping shrimp are known for withstanding significant blows to their heads. Alpheus heterochaelis have helmet-like structures on their heads and large claws making them well-adapted for fighting. 

Study Question: What are the differences in the brain transcriptome of snapping shrimp with helmets who have been snapped at, snapping shrimp who have not been snapped at (control), and snapping shrimp with no helmet that have been snapped at? The secondary, more specific question is: what genes are being up-regulated and down-regulated when comparing the data?  

Study Hypotheses: Overall, I believe the results will reflect that snapping shrimps with helmet-like structures will contain transcriptomes in the brain that show genes oriented toward protecting the shrimp’s head. In contrast, those with no helmet-like structure will have a transcriptome showing genes that are less focused on protecting their heads. 

Study: First, FastQC will be used to find the 2-4 reads with the best quality. Next, the Trim will be used to make the 2-4 best reads of better quality. Step three is spades, to create an RNA de novo asesmbly. Fourth, is using diamond to annotate the new assembly using decapoda from UniProotKB as the database reference. Fifth is running blast to see if these annotations are cleaere than diamonds. Using either results from diamond or blast, allign and count all of the reads (or in this case all samples beisdes 5 and 9, as 5 and 9 created background noise through the first run of this process) with kallisto. Next, enter alligned reads into sleuth and find if their is any signficant reads. Finally run these reads in TOPGO for gene ontology.  

Source: Data is coming from the kingston lab from dat acollected by Dr. Kingston. THe data provided was of the brain transcriptome and consisted of 5 samples of armored shrimp and 4 samples of unarmored shrimp.  

* [FastQC](https://github.com/con7291/Repository-1/tree/410ac8c2559358e21d3afe15e14099b7a234a9b7/Shrimp%20Brain%20FastQC)

Here, I analyzed which reads would be best to use for the trimming, spades, and diamond portion of the process. I chose reads from sample 6, as they were of the highest quality. 

* [Trim](https://github.com/con7291/Repository-1/tree/0b4c1bd9a46546faa6edba1f976a3053b88dcf3f/Shrimp%20Brain%20Trim)

Here, I trimmed the reads for better quality.

* [Spades](https://github.com/con7291/Repository-1/tree/0b4c1bd9a46546faa6edba1f976a3053b88dcf3f/Shrimp%20Brain%20Spades)

I ran spades to generate a de novo assembly. I used the RNA specific version of spades to run on the transcriptomes.

* [Diamond](https://github.com/con7291/Repository-1/tree/0b4c1bd9a46546faa6edba1f976a3053b88dcf3f/Shrimp%20Brain%20Diamond)

I annotated the reads via diamond. I made a databse out of decapoda downloaded from the UniPrtoKB website. Then, I used blastx to annotate the reads using the database.         

* [Blast](https://github.com/con7291/Repository-1/tree/0b4c1bd9a46546faa6edba1f976a3053b88dcf3f/Shrimp%20Brain%20Blast)

Also, I annotated the reads using blastn as well. This used sequences from Drosophila Montana found in the NCBI.  

* [Kallisto](https://github.com/con7291/Repository-1/tree/0b4c1bd9a46546faa6edba1f976a3053b88dcf3f/Shrimp%20Brain%20Diamond)

Using the annotation from Diamond, I used kallisto to align and count reads. Furthermore, I used reads 1-4 and 6-8 during this stage of alignment and counting. This is due to my earlier results from the first time I went through the project suggesting the results of reads 5 and 9 were creating background noise. 

* [Sleuth/TopGo](https://github.com/con7291/Repository-1/tree/0b4c1bd9a46546faa6edba1f976a3053b88dcf3f/Shrimp%20Brain%20Sleuth)

Conclusions: During Sleuth and TOPGO, it was found that their were significant genes being enriched. Outside of finding fragments and unidentifiable gene symbols, in the top 50 most significant findings their was adenine 58 and two CB gene symbols returned. This is interesting, as Adenine 58 is associated with tRNA structure and cell growth. Additionally, CB is associated with the brain, immune cells, and neurons. The treatment being enriched suggests potential regenerative ability of snapping shrimp after brain damage occurs.   
