#!/bin/bash

source config.env
cd scripts
bash download-data.sh $datadir $resultsdir
Rscript download-pan-cancer-clinical.r $datadir $resultsdir
