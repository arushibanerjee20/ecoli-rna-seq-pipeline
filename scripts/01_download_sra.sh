#!/bin/bash
set -e

# Download sequencing data from NCBI SRA
# Replace ACCESSIONS with the samples required for the analysis.

ACCESSIONS=(
    SRR427120
    SRR427121
    SRR427122
    SRR427123
    SRR427124
    SRR427125
    SRR427126
    SRR427127
    SRR427128
)

for ACCESSION in "${ACCESSIONS[@]}"; do
    prefetch "$ACCESSION"
done
