#!/bin/bash
set -e

for SAMPLE in SRR427120 SRR427121 SRR427122 SRR427123 SRR427124 SRR427125 SRR427126 SRR427127 SRR427128
do
    samtools view -bS \
        "output/${SAMPLE}_bowtie2.sam" \
        > "output/${SAMPLE}_bowtie2.bam"

    samtools sort \
        "output/${SAMPLE}_bowtie2.bam" \
        -o "output/${SAMPLE}_sorted.bam"

    samtools index "output/${SAMPLE}_sorted.bam"
done
