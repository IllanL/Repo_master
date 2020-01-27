# https://es.wikipedia.org/wiki/Los_100,_un_ranking_de_las_personas_m%C3%A1s_influyentes_en_la_historia

url <- "https://es.wikipedia.org/wiki/Los_100,_un_ranking_de_las_personas_m%C3%A1s_influyentes_en_la_historia"

HTMLLINEAS <- readLines(url)

HTMLLINEAS

str(HTMLLINEAS)

HTMLCODE <- paste(HTMLLINEAS,collapse="")

library("stringr")

# EXPRESIONES REGULARES:

# MÓDULO RE EN PYTHON: REGULAR EXPRESSIONS

# . CUALQUIER CARACTER
# \ CARACTER DE ESCAPAR
# [] TODOS LOS CARACTERES INCLUIDOS EN
# + UNO O VARIOS CARACTERES
# * LO MISMO?
# \d NÚMEROS

# <ol>(.*?)<\/ol>

REOL <- "<ol>(.*?)<\\/ol>"

# JUNTAR CADENAS:

str_c("Hola", "Mundo")

# BUSCAR RE:

str_detect(HTMLCODE, REOL)

str_count(HTMLCODE, REOL)

str_locate(HTMLCODE, REOL)

str_replace(HTMLCODE, REOL,  REOL)

str_replace_all(HTMLCODE, REOL,  REOL)

str_split(HTMLCODE, REOL)

str_match_all(HTMLCODE, REOL)

HTMLCODE, REOL

# BUSCAR EL TÍTULO:

RETITLE <- "<title>(.*?)<\\/title>"

str_match(HTMLCODE, RETITLE)

typeof(str_match(HTMLCODE, RETITLE))

# INSTALACIÓN DE PAQUETES:

colnames(installed.packages())

installed.packages("Package")

install.packages("rvest")

# str(installed.packages())

# SACAMOS AHORA EL <ol>:

TEXTOOL <- str_match(HTMLCODE, REOL)[1,1]

EXPR_REG_2='<li><a href="(.*?)" title="(.*?)">(.*?)<\\/a>,(.*?)<\\/li>'

RESULTADO <- as.data.frame(str_match_all(TEXTOOL, EXPR_REG_2))

RESULTADO2 <- str_match_all(TEXTOOL, EXPR_REG_2)[[1]]


str(RESULTADO)


# RECUERDA: PARA TRABAJAR CON DATAFRAMES: 

# library(dplyr)