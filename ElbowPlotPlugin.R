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
}



