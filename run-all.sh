#!/bin/bash

# Get project variables
source config.env

# Create necessary directories if they don't exist
mkdir -p $docsdir
mkdir -p $resultsdir
mkdir -p $datadir

# Run all scripts
cd scripts
bash download-data.sh $datadir $resultsdir
Rscript download-pan-cancer-clinical.r $datadir $resultsdir
