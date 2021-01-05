library(monocle3)
library(magrittr)
library(dplyr)


cellData <- load_cellranger_data("/Volumes/HOSSAM/Lab-Data/16-Cell")

cds <- preprocess_cds(cellData, num_dim = 100)

colData(cds)[1:3,]

#cds <- align_cds(cds, alignment_group =)

cds <- reduce_dimension(cds)

plot_cells(cds, label_groups_by_cluster=FALSE)

cds <- cluster_cells(cds)
plot_cells(cds, color_cells_by = "partition")


cds <- learn_graph(cds)
cds <- order_cells(cds)

plot_cells(cds,
           color_cells_by = "pseudotime",
           graph_label_size=1.5)


