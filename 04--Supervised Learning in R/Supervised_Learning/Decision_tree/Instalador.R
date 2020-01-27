install.packages("installr")
library("installr")
updateR()


#-------------------------------- Load packages --------------------------------------------#

if (!require("Rcpp")){install.packages('Rcpp',repos='http://cran.us.r-project.org');library("Rcpp")}
if (!require("e1071")){install.packages('e1071');library("e1071")}
if (!require("grid")){install.packages("grid",verbose = F) ; library("grid")}
if (!require("stringi")){install.packages("stringi",verbose = F) ; library("stringi")}
if (!require("dplyr")){install.packages("dplyr",verbose = F) ; library("dplyr")}
if (!require("recipes")){install.packages("recipes",verbose = F) ; library("recipes")}
if (!require("caret")){install.packages("caret",quiet = T) ; library("caret")}
if (!require("RSNNS")){install.packages("RSNNS",verbose = F) ; library("RSNNS")}
if (!require("imager")){install.packages("imager",verbose = F) ; library("imager")}


#----- Corra estas lineas en una sola ejecucion -----#
source("http://bioconductor.org/biocLite.R")
biocLite("rhdf5")
library(rhdf5)
#----- Fin: Corra estas lineas en una sola ejecucion -----#


if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
  BiocManager::install()