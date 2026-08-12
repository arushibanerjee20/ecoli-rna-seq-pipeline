#!/bin/bash
set -e

for SAMPLE in SRR427120 SRR427121 SRR427122 SRR427123 SRR427124 SRR427125 SRR427126 SRR427127 SRR427128
do
    htseq-count \
        -f bam \
        -r pos \
        -s no \
        -t gene \
        -i locus_tag \
        "output/${SAMPLE}_sorted.bam" \
        reference/GCF_002848225.1_ASM284822v1_genomic.gff \
        > "output/gene_counts_${SAMPLE}.txt"
done
