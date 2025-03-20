# Load the necessary libraries
library(Seurat)

#devtools::install_github('satijalab/seurat-data')
library(SeuratData)

# if (!requireNamespace("remotes", quietly = TRUE)) {
#   install.packages("remotes")
# }
# remotes::install_github("mojaveazure/seurat-disk")

#ce package permet de convertir un objet Seurat en un objet anndata
library(SeuratDisk)



# https://mojaveazure.github.io/seurat-disk/articles/convert-anndata.html

# Load the seurat object
obj <- readRDS("RNA_combined.rds")
obj


# Convert the Seurat object to anndata
SaveH5Seurat(pbmc3k.final, filename = "pbmc3k.h5Seurat")
Convert("pbmc3k.h5Seurat", dest = "h5ad")



#https://www.reddit.com/r/bioinformatics/comments/1ht2qb8/converting_seurat_rds_to_h5ad/?tl=fr