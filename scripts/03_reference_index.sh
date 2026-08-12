#!/bin/bash
set -e

REFERENCE="reference/GCF_002848225.1_ASM284822v1_genomic.fna"

bowtie2-build "$REFERENCE" reference/ecoli_index
