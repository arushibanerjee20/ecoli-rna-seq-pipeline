# E. coli RNA-seq Analysis Pipeline

An end-to-end RNA-seq workflow developed during a bioinformatics internship to investigate differential gene expression in *E. coli* under antibiotic treatment.

## Workflow

NCBI SRA  
↓  
Paired-end read preprocessing  
↓  
Trimmomatic quality and adapter trimming  
↓  
Reference genome preparation  
↓  
Bowtie2 alignment  
↓  
SAMtools BAM processing  
↓  
HTSeq gene-level counting  
↓  
Count matrix construction  
↓  
DESeq2 differential expression analysis  
↓  
Volcano plot and downstream analysis

## Tools

- SRA Toolkit
- Trimmomatic
- Bowtie2
- SAMtools
- HTSeq
- R
- DESeq2

## Analysis performed

The workflow covers:

1. Retrieval of RNA-seq data from NCBI SRA
2. Paired-end read preprocessing and adapter trimming
3. Reference genome preparation and Bowtie2 indexing
4. Reference-based read alignment
5. SAM-to-BAM conversion, sorting and indexing
6. Gene-level quantification using HTSeq
7. Construction of a gene-count matrix
8. Differential expression analysis using DESeq2
9. Visualization of differential expression using a volcano plot

## Repository structure

```text
ecoli-rna-seq-pipeline/
├── README.md
├── .gitignore
├── scripts/
│   ├── 01_download_sra.sh
│   ├── 02_trimming.sh
│   ├── 03_reference_index.sh
│   ├── 04_alignment.sh
│   ├── 05_samtools_processing.sh
│   ├── 06_htseq_count.sh
│   └── 07_deseq2.R
├── figures/
└── docs/
