# Primera sesión

entrenamiento <- read.csv('train.csv')

# Vamos a echarle un vistazo al Dataset (Exploratoty Data Analysis - EDA)

View(entrenamiento)

summary(entrenamiento)
nrow(entrenamiento)
ncol(entrenamiento)

# Acceso a datos

entrenamiento[1,] #primer pasajero

entrenamiento[,1] 
entrenamiento[,'Sex'] 

entrenamiento$Sex

# Diferencia entre acceso por nombre con dolar o sin dolar:

# programáticamente/programatically

selector_columna <- "Sex"

entrenamiento$selector_columna
entrenamiento[,selector_columna]

# Elegir una casilla:

entrenamiento[5,'Age']

# Nombres de columnas:

colnames(entrenamiento)

# Elegir en un rango tanto filas como columnas:

entrenamiento[1:10,"Age"]

cosa <- 1:10

entrenamiento[50:nrow(entrenamiento),"Age"]

# Elección de varias filas diferentes:

entrenamiento[c(3,5,7,9),"Age"]

# Prueba:

entrenamiento[-1,"Age"]

# Máscaras:

mi_vector=c(7,11,15)

mi_vector[3]

mi_vector[c(T,T,F)]

mi_vector[mi_vector==7]

entrenamiento[entrenamiento["Age"]<18,"Name"]

aaa <- mean(entrenamiento[,"Fare"])
entrenamiento[entrenamiento[,"Fare"]<aaa,"Name"]

# PERO, NO FALLA:

entrenamiento["Fare"]

# ESTRUCTURA DEL DATA FRAME:

colnames(entrenamiento)
rownames(entrenamiento)

colnames(entrenamiento) <- tolower(colnames(entrenamiento))

# ELIMINAR UNA VARIABLE:

rm(cosa)

# ELIMINAR TODAS:

# rm(ls) ó rm(dls), no lo he entendido bien

#ESTRUCTURA: STR:

str(entrenamiento)

# CAMBIAR LA EDAD DE TODAS LAS MUJERES DEL DF A 25 AÑOS:

selector_columna=entrenamiento[,"Sex"] == "female"

entrenamiento[selector_columna,"Age"] <- 25
entrenamiento[,c("Sex","Age")]


# TODO EN R SON VECTORES: LAS DIMENSIONES SE ADAPTAN O ELONGAN:

1:10 - 8

# ENTEROS, FLOTANTES, CADENAS DE TEXTO:

1
1.0
"HOLA, SOY UNA CADENA DE TEXTO"

# CLASES: 3 ESTILOS DE CLASES:

class(5)
class("TEXTO")

# PARA BUSCAR: advanced R, Hadley Wickham

# PARA CREAR VECTORES: c():

c(1,2,3,4)

c("a","b","c")

prueba1=c("a","b","c")

class(prueba1)

prueba2=c(1,2,3,"cosa")

class(prueba2)

prueba2

str(c(1,2,3,NA))

str(c(1,2,3,NA_integer_))

str(c(1,2,3,NA_character_))

# QUÉ PASA SI QUIERO MEZCLAR TIPOS:
# LISTAS = Dicionario de Python:

mi_lista = list(clave="valor", hola=5, nombre="Alex")

mi_lista$clave

mi_lista["clave"] #¡OJO! NO ES LO MISMO QUE LO ANTERIOR: DEVUELVE UNA LISTA DE UN ELEMENTO

mi_lista[["clave"]] #ESTO SÍ

# UN DATAFRAME NO ES MÁS QUE UNA LISTA DE VECTORES DEL MISMO TAMAÑO:

mi_dataframe <- as.data.frame(list(col1=c(1,2),col2=c("a","b")))

# MATRICES:

matrix(c(1,2,3,4,5,6,7,8,9), nrow=3)

# FUNCIONES SOBRE VECTORES:

#sum()
#mean()
#length()

######### EJERCICIOS BLOQUE 1:

# 1. FILTRAR COLUMNAS MUJERES SOBREVIVIERON PRIMERA CLASE, EXTRAER:

  #LAS COLUMNAS FARE Y SURVIVED:

entrenamiento[entrenamiento$Sex=='female' & entrenamiento$Pclass==1 & entrenamiento$Survived==1, c('Fare','Survived')]

  #Porcentaje de supervivencia de este grupo

sum(entrenamiento$Sex=='female' & entrenamiento$Pclass==1 & entrenamiento$Survived==1)/sum(entrenamiento$Sex=='female' & entrenamiento$Pclass==1)

########## EJERCICIOS BLOQUE 2:

  #Media de edad de los hombres que sobrevivieron:

mean(entrenamiento[entrenamiento$Sex=='male' &  entrenamiento$Survived==1,"Age"], na.rm=T)

  #Cuántas personas sobrevivieron:

length(entrenamiento[entrenamiento$Survived==1,"Age"])

  #Cuántas personas fallecieron:

length(entrenamiento[entrenamiento$Survived==0,"Age"])

  #Cuántas personas viajaron:
length(entrenamiento[entrenamiento$Embarked=='S' | entrenamiento$Embarked=='C' | entrenamiento$Embarked=='Q',"Age"])

  #Ratio de personas de primera y tercera clases:

length(entrenamiento[entrenamiento$Pclass==1,"Age"])/length(entrenamiento[entrenamiento$Pclass==3,"Age"])

  #Seleccionar columnas Age y Sex para las personas de primera clase:

entrenamiento[entrenamiento$Pclass==1,c("Sex","Age")]

  #Calcula la máscara para selecionar supervivientes de tercera o los hombres de primera que fallecieron:

(entrenamiento$Survived==1 & entrenamiento$Pclass==3) | (entrenamiento$Sex=="male" & entrenamiento$Survived==0)

  #Correlación entre edad y fare para cada sexo:

cor(entrenamiento[entrenamiento$Sex=='female', 'Fare'], entrenamiento[entrenamiento$Sex=='female', 'Age'], use='comp')
cor(entrenamiento[entrenamiento$Sex=='male', 'Fare'], entrenamiento[entrenamiento$Sex=='male', 'Age'], use='comp')


  #2:

hombre <- entrenamiento[entrenamiento$Sex == 'male',]
mujer <- entrenamiento[entrenamiento$Sex == 'female',]

cor(hombre$Age, hombre$Fare, use='comp')
cor(mujer$Age, mujer$Fare, use='comp')

  #Qué porcentaje de menores de 18 sobrevivieron: mínimo y máximo:

sum(entrenamiento[entrenamiento$Age<18 & entrenamiento$Survived==1,'Survived'], na.rm=T)/length(entrenamiento[entrenamiento$Age<18,'Survived'])

cosa <- entrenamiento[entrenamiento$Age<18,'Survived']

cosa[is.na(cosa)] <- 1

sum(cosa)/length(cosa)

cosa

  #Lo mismo con media de edades>

sum(entrenamiento[entrenamiento$Age<18 & entrenamiento$Survived==1,'Age'], na.rm=T)/length(entrenamiento[entrenamiento$Age<18,'Age'])

cosa <- entrenamiento[entrenamiento$Age<18,'Age']

cosa[is.na(cosa)] <- 1

sum(cosa)/length(cosa)

cosa


######### FACTORES:


levels(entrenamiento$Embarked)
factor(c("hombre","mujer","hombre"), levels=c("hombre","mujer","otros"))
factor(c("hombre","mujer","hombre"), levels=c("hombre","mujer","otros"), ordered=T)


## PARA CONVERTIR LAS VARIABLES UNAS EN OTRAS:

# as.




