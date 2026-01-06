#!/bin/bash

source config.env
cd scripts
bash download-data.sh
Rscript download-pan-cancer-clinical.r $datadir $resultsdir