library(Seurat)

data_dir <- '/Volumes/HOSSAM/Lab-Data/test'

list.files(data_dir)

expression_matrix <- Read10X(data.dir = data_dir)

seurat_object = CreateSeuratObject(counts = expression_matrix)

head(seurat_object@meta.data, 5)



