url <- "https://es.wikipedia.org/wiki/Los_100,_un_ranking_de_las_personas_m%C3%A1s_influyentes_en_la_historia"

REOL <- "<ol>(.*?)<\\/ol>"
EXPR_REG_2='<li><a href="(.*?)" title="(.*?)">(.*?)<\\/a>,(.*?)<\\/li>'

library("stringr")

HTMLLINEAS <- readLines(url)

HTMLCODE <- paste(HTMLLINEAS,collapse="")

# SACAMOS AHORA EL <ol>:

TEXTOOL <- str_match_all(HTMLCODE, REOL)[[1]][[2]]

RESULTADO <- as.data.frame(str_match_all(TEXTOOL, EXPR_REG_2))
RESULTADO2 <- str_match_all(TEXTOOL, EXPR_REG_2)[[1]]