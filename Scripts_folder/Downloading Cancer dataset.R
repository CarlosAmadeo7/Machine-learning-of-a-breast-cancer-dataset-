# Installing needed libraries 
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("SummarizedExperiment")

#Loading needed libraries 
library(TCGAbiolinks)
library(SummarizedExperiment)

# Defining the project and data type
project <- "TCGA-BRCA"   # name of the project
data_category <- "Transcriptome Profiling"     
data_type <- "Gene Expression Quantification"     
workflow_type <- "STAR - Counts"    

# Query the data
query <- GDCquery(
  project = project,
  data.category = data_category,
  data.type = data_type,
  workflow.type = workflow_type
)

# Download the data
GDCdownload(query)

# Preparing the data
data <- GDCprepare(query)
print(data)

#Saving the data 
saveRDS(data,file="C:/Users/amade/Documents/UofSC/Bioinformatics/Github/Machine learning in genomics/tcga_brca_gene_expression.rds")


# Convert the data to a data frame
data_df <- as.data.frame(assay(data))

# Transpose the data frame to have samples as rows and genes as columns
data_df <- t(data_df)
data_df <- as.data.frame(data_df)

# Add sample type information 
sample_type <- colData(data)$sample_type
data_df$sample_type <- sample_type

# Save the data frame as a CSV file
csv_path <- 'C:/Users/amade/Documents/UofSC/Bioinformatics/Github/Machine learning in genomics/tcga_brca_gene_expression.csv'
write.csv(data_df, csv_path, row.names = TRUE)
"