#!/bin/bash
set -e

# Paired-end adapter and quality trimming with Trimmomatic

for SAMPLE in SRR427120 SRR427121 SRR427122 SRR427123 SRR427124 SRR427125 SRR427126 SRR427127 SRR427128
do
    java -jar /usr/share/java/trimmomatic.jar PE \
        -phred33 \
        "data/${SAMPLE}_1.fastq" \
        "data/${SAMPLE}_2.fastq" \
        "output/${SAMPLE}_1_paired.fastq" \
        "output/${SAMPLE}_1_unpaired.fastq" \
        "output/${SAMPLE}_2_paired.fastq" \
        "output/${SAMPLE}_2_unpaired.fastq" \
        ILLUMINACLIP:/usr/share/trimmomatic/TruSeq3-PE.fa:2:30:10:2:True \
        LEADING:3 \
        TRAILING:3 \
        MINLEN:36
done
