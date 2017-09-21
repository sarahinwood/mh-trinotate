#!/usr/bin/env bash
set -eu

export PATH="/Volumes/archive/deardenlab/trinotate/bin:${PATH}"

venv/bin/trinotate_pipeline \
	--trinity_fasta data/Trinity.fasta \
	--blast_db bin/trinotate/db/uniprot_sprot.pep \
	--hmmer_db bin/trinotate/trinotate/Pfam-A.hmm \
	--sqlite_db bin/trinotate/db/Trinotate.sqlite \
	--outdir output/
	--threads 50