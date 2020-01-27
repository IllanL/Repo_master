source(descargarWeb.R)

url <- "https://es.wikipedia.org/wiki/Los_100,_un_ranking_de_las_personas_m%C3%A1s_influyentes_en_la_historia"

nombres <- descargarWeb(url) %>%
  extraercontenido("ol") %>%
  extraercontenido_all("li") %>%
  extraercontenido("a")

nombres



  
  