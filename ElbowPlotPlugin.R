library(dplyr)
library(Seurat)
library(patchwork)


input <- function(inputfile) {
   pbmc <<- readRDS(inputfile)  
}

run <- function() {}

output <- function(outputfile) {
 pdf(outputfile)
ElbowPlot(pbmc)
#print(str(pbmc))
write.csv(pbmc@commands$RunPCA.RNA@params$features, paste(outputfile, "csv", sep="."))
}



