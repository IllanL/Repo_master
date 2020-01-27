######## DPLYR:

library(dplyr)

library(nycflights13)

install.packages("nycflights13")

# install.packages("dplyr")

# COMO OPCIÓN ADICIONAL: DATATABLES (PUEDES ECHARLE UN VISTAZO)


######## OPERADOR TUBERÍA:

entrenamiento %>%
  filter(Age<18)

filter(entrenamiento, Age<18)


######## SELECCIONAR:

# Toma una muestra aleatoria de flights seleccionando sólo las columnas que contienen delay>

flights %>%
  select(contains('_delay')) %>%
    sample_n(10)


######## FILTRAR:

entrenamiento %>%
  filter(Age<18, Sex == 'male')

entrenamiento %>%
  group_by(Sex) %>%
  summarise(mediaDeEdad=mean(Age, na.rm=T))


######## ORDENAR:

flights %>%
  arrange(year)

flights %>%
  arrange(desc(year))



######## AÑADIR COLUMNAS:


flights %>%
  mutate(total_delay=arr_delay+dep_delay) %>%
  group_by(carrier) %>%
  summarise(media_retraso=mean(total_delay, na.rm=T))



####### EL GUIÓN BAJO PERMITE METER VARIBLES QUE DE OTRA FORMA SE LEERÍAN COMO TEXTO

variable_nueva <- "arr_delay"

flights %>%
  select_(variable_nueva)


flights %>%
  mutate_(variable_nueva)


# modificadores:

# uno es _

# otro es _at

flights %>%
  group_by(origin) %>%
    sumarise_at(c('arr_delay','dep_delay'), mean, na.rm=T)


# otros modificadores: _if, _all:

flights %>%
  group_by(origin) %>%
    select_if(is.numeric()) %>%
      sumarise_all(sum)
      
#######

mifunci <- function(a) {
  a+b+1
}

flights %>%
  select (dep_delay) %>%
  mifunci()

#COSA CHULA:

mifunci <- function(a,b) {
  a+b+1
}

flights %>%
  select (dep_delay) %>%
    mifunci(100,.)

# MODIFICADORES DE DEPLYR SON IMPORTANTES PARA ALGO

library(shiny)


# EJERCICIOS:

colnames(flights)

AAA <- flights %>%
  select(c(dep_delay,arr_delay, origin, dest, carrier, distance))

    ##### PUEDES MEZCLAR CONTAINS CON LISTAS:

AAA <- flights %>%
  select(origin, dest, carrier, distance, contains("_delay"))

    ##### EXISTEN OTROS APARTE DE CONTAINS, COMO ENDS_WITH

AAA %>%
  group_by(origin, dest) %>%
    summarize(mean(distance, na.rm=T))


AAA2 <- AAA %>%
  mutate(retrasototal=arr_delay+dep_delay)

cor(AAA2$distance,AAA2$retrasototal, use='comp')

AAA %>%
  mutate(retrasototal=arr_delay+dep_delay) %>%
  select(retrasototal, distance) %>%
  cor(use='comp') %>%
  .['retrasototal','distance']


flights %>%
  mutate(retrasototal=arr_delay+dep_delay) %>%
  group_by(origin) %>%
  summarise(media_retraso=mean(retrasototal, na.rm=T)) %>%
  arrange(media_retraso) %>%
  top_n(10)


flights %>%
  filter(arr_delay>mean(arr_delay, na.rm=T))


flights %>%
  mutate(retrasototal=arr_delay+dep_delay) %>%
  summarise(mean(retrasototal, na.rm=T))%>%
  as_data_frame() %>%
  .[1,1]

flights %>%
  group_by(origin, dest) %>%
  summarise(retrasomedio=mean(arr_delay+dep_delay, na.rm=T)) %>%
  filter(retrasomedio>mean(retrasomedio))

















