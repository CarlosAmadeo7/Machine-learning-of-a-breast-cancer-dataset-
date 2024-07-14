# Integrating machine learning and pathway analysis to decode biological insights from the TCGA_BRCA dataset
## Description
1. In this repository I intend to show how machine learning classification methods and pathway analysis can lead to decoding biological insights into breast cancer.
2. The TCGA_BRCA dataset can be downloaded following the R script uploaded in this repository. This dataset consists of the transcriptome profile ( Gene expression quantification ) of differnet patients with breast cancer, more details about it can be found at this link: https://portal.gdc.cancer.gov/projects/TCGA-BRCA. The patients are classified based on two differnet types of cancer: "Primary tumor"  and "Metastastic", and normal patients: "Solid Tissue Normal"
4. Three machine learning classification methods: Random Forest, Support Vector Machine, and Logistic regression, were used to predict the types of tissues among the patients. Then, pathway analysis was performed to study the biological insights of the dataset.

## Scripts
The scripts used can be found in this repository. A more detailed explanation of each command can be found inside each one of the scripts
1. Downloading Cancer dataset: R script used to query, download, and save the TCGA_BRCA dataset into a CSV file.
2. Machine learning classification_TCGA_BRCA: Jupyter Notebook ( Python ) script used to perform machine learning methods in the dataset. A more detailed explanation can be found in it.
3. Pathway analysis of the most relevant genes: Jupyter Notebook ( Python ) script was used to obtain the gene importance ( features ) used by the classification methods and then performed a pathway analysis.
## Results
## Future directions
   
