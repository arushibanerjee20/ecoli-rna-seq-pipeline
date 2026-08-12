#!/bin/bash
set -e

for SAMPLE in SRR427120 SRR427121 SRR427122 SRR427123 SRR427124 SRR427125 SRR427126 SRR427127 SRR427128
do
    bowtie2 \
        --sensitive \
        -x reference/ecoli_index \
        -1 "output/${SAMPLE}_1_paired.fastq" \
        -2 "output/${SAMPLE}_2_paired.fastq" \
        -S "output/${SAMPLE}_bowtie2.sam" \
        -p 2
done
