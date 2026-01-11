rule analysis:
    "Analyze combined clinical and predicted protein data"
    input:
        f"{resultsdir}/combined-clin-pred-proteins.txt"
    output:
        f"{docsdir}/analysis.html"
    container:
        "rhds-tcga-r.sif"
    log:
        f"{resultsdir}/logs/analysis.log"
    shell:
        """
        quarto render scripts/analysis.qmd \
            -P resultsdir:"{resultsdir}" --output-dir {docsdir}
        """

rule analysis_notebook:
    "Analyze combined clinical and predicted protein data"
    input:
        f"{resultsdir}/combined-clin-pred-proteins.txt",
        f"scripts/analysis.ipynb"
    output:
        f"{docsdir}/notebook.html"
    container:
        "rhds-tcga-r.sif"
    log:
        f"{resultsdir}/logs/analysis.log"
    shell:
        """
        jupyter nbconvert --execute --to html --output {docsdir}/notebook.html scripts/analysis.ipynb
        """
