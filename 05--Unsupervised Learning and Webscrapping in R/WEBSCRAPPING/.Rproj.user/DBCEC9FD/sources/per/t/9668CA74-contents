library(stringr)
library(dplyr)

# ESTA FUNCION DESCARGA EL CONTENIDO DE UNA WEB Y LO PONE EN UN VECTOR:

descargarWeb <- function(url) {
  
  lines <- readLines(url)
  paste(lines, collapse="")
}

extraeretiqueta <- function(texto, etiqueta) {
  
  re <- str_c("<", etiqueta,">(.*?)<\\/", etiqueta, ">")
  str_match_all(texto, re)
}

extraercontenido <- function(texto, etiqueta) {
  
  re <- str_c("<", etiqueta,"(.*?)>(.*?)<\\/", etiqueta, ">")
  str_match_all(texto, re)[1,3]
}


extraercontenido_all <- function(texto, etiqueta) {
  
  re <- str_c("<", etiqueta,"(.*?)>(.*?)<\\/", etiqueta, ">")
  str_match_all(texto, re)[[1]][,2]
}

