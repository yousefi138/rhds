# Reproducible health data science short course

This repository contains the code for the short course practical sessions. 

## To run

## Setup instructions

Use Conda / Mamba to create an R environment and then install the R packages from the installation script.

```
mamba env create -f environment.yml
Rscript install.r
```

Next create a `config.env` file based on the `config-template.env` template.

## To run

```
bash download-data.sh
Rscript download-pan-cancer-clinical.r
```