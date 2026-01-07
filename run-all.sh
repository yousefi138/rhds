#!/bin/bash

source config.env
bash scripts/download-data.sh $datadir $resultsdir
Rscript scripts/download-pan-cancer-clinical.r $datadir $resultsdir
