# E. coli RNA-seq Analysis Pipeline

An end-to-end RNA-seq workflow developed during a bioinformatics internship for transcriptomic analysis of *Escherichia coli* under antibiotic treatment.

## Overview

This repository documents a reproducible RNA-seq analysis workflow covering sequencing-data acquisition, read preprocessing, reference-based alignment, gene-level quantification, and differential expression analysis.

## Workflow

```text
NCBI SRA
   ↓
Quality & adapter trimming
   ↓
Reference genome preparation
   ↓
Bowtie2 alignment
   ↓
SAM/BAM processing
   ↓
HTSeq gene counting
   ↓
Count matrix construction
   ↓
DESeq2 differential expression
   ↓
Volcano plot


This repository documents the complete workflow from sequencing data acquisition through differential expression analysis.
