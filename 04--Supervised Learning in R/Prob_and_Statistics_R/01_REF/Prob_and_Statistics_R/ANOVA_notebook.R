#Supóngase que se un estudio quiere comprobar si existe una diferencia significativa
# entre el % de bateos exitosos de los jugadores de béisbol dependiendo de la posición
# en la que juegan. En caso de que exista diferencia se quiere saber qué posiciones
# difieren del resto. La siguiente tabla contiene una muestra de jugadores seleccionados
# aleatoriamente.

posicion <- c("OF", "IF", "IF", "OF", "IF", "IF", "OF", "OF", "IF", "IF", "OF", "OF", "IF", "OF", "IF", "IF", "IF", "OF", "IF", "OF", "IF", "OF", "IF", "OF", "IF", "DH", "IF", "IF", "IF", "OF", "IF", "IF", "IF", "IF", "OF", "IF", "OF", "IF", "IF", "IF", "IF", "OF", "OF", "IF", "OF", "OF", "IF", "IF", "OF", "OF", "IF", "OF", "OF", "OF", "IF", "DH", "OF", "OF", "OF", "IF", "IF", "IF", "IF", "OF", "IF", "IF", "OF", "IF", "IF", "IF", "OF", "IF", "IF", "OF", "IF", "IF", "IF", "IF", "IF", "IF", "OF", "DH", "OF", "OF", "IF", "IF", "IF", "OF", "IF", "OF", "IF", "IF", "IF", "IF", "OF", "OF", "OF", "DH", "OF", "IF", "IF", "OF", "OF", "C", "IF", "OF", "OF", "IF", "OF", "IF", "IF", "IF", "OF", "C", "OF", "IF", "C", "OF", "IF", "DH", "C", "OF", "OF", "IF", "C", "IF", "IF", "IF", "IF", "IF", "IF", "OF", "C", "IF", "OF", "OF", "IF", "OF", "IF", "OF", "DH", "C", "IF", "OF", "IF", "IF", "OF", "IF", "OF", "IF", "C", "IF", "IF", "OF", "IF", "IF", "IF", "OF", "OF", "OF", "IF", "IF", "C", "IF", "C", "C", "OF", "OF", "OF", "IF", "OF", "IF", "C", "DH", "DH", "C", "OF", "IF", "OF", "IF", "IF", "IF", "C", "IF", "OF", "DH", "IF", "IF", "IF", "OF", "OF", "C", "OF", "OF", "IF", "IF", "OF", "OF", "OF", "OF", "OF", "OF", "IF", "IF", "DH", "OF", "IF", "IF", "OF", "IF", "IF", "IF", "IF", "OF", "IF", "C", "IF", "IF", "C", "IF", "OF", "IF", "DH", "C", "OF", "C", "IF", "IF", "OF", "C", "IF", "IF", "IF", "C", "C", "C", "OF", "OF", "IF", "IF", "IF", "IF", "OF", "OF", "C", "IF", "IF", "OF", "C", "OF", "OF", "OF", "OF", "OF", "OF", "OF", "OF", "OF", "OF", "OF", "C", "IF", "DH", "IF", "C", "DH", "C", "IF", "C", "OF", "C", "C", "IF", "OF", "IF", "IF", "IF", "IF", "IF", "IF", "IF", "IF", "OF", "OF", "OF", "IF", "OF", "OF", "IF", "IF", "IF", "OF", "C", "IF", "IF", "IF", "IF", "OF", "OF", "IF", "OF", "IF", "OF", "OF", "OF", "IF", "OF", "OF", "IF", "OF", "IF", "C", "IF", "IF", "C", "DH", "OF", "IF", "C", "C", "IF", "C", "IF", "OF", "C", "C", "OF")
bateo <- c(0.359, 0.34, 0.33, 0.341, 0.366, 0.333, 0.37, 0.331, 0.381, 0.332, 0.365, 0.345, 0.313, 0.325, 0.327, 0.337, 0.336, 0.291, 0.34, 0.31, 0.365, 0.356, 0.35, 0.39, 0.388, 0.345, 0.27, 0.306, 0.393, 0.331, 0.365, 0.369, 0.342, 0.329, 0.376, 0.414, 0.327, 0.354, 0.321, 0.37, 0.313, 0.341, 0.325, 0.312, 0.346, 0.34, 0.401, 0.372, 0.352, 0.354, 0.341, 0.365, 0.333, 0.378, 0.385, 0.287, 0.303, 0.334, 0.359, 0.352, 0.321, 0.323, 0.302, 0.349, 0.32, 0.356, 0.34, 0.393, 0.288, 0.339, 0.388, 0.283, 0.311, 0.401, 0.353, 0.42, 0.393, 0.347, 0.424, 0.378, 0.346, 0.355, 0.322, 0.341, 0.306, 0.329, 0.271, 0.32, 0.308, 0.322, 0.388, 0.351, 0.341, 0.31, 0.393, 0.411, 0.323, 0.37, 0.364, 0.321, 0.351, 0.329, 0.327, 0.402, 0.32, 0.353, 0.319, 0.319, 0.343, 0.288, 0.32, 0.338, 0.322, 0.303, 0.356, 0.303, 0.351, 0.325, 0.325, 0.361, 0.375, 0.341, 0.383, 0.328, 0.3, 0.277, 0.359, 0.358, 0.381, 0.324, 0.293, 0.324, 0.329, 0.294, 0.32, 0.361, 0.347, 0.317, 0.316, 0.342, 0.368, 0.319, 0.317, 0.302, 0.321, 0.336, 0.347, 0.279, 0.309, 0.358, 0.318, 0.342, 0.299, 0.332, 0.349, 0.387, 0.335, 0.358, 0.312, 0.307, 0.28, 0.344, 0.314, 0.24, 0.331, 0.357, 0.346, 0.351, 0.293, 0.308, 0.374, 0.362, 0.294, 0.314, 0.374, 0.315, 0.324, 0.382, 0.353, 0.305, 0.338, 0.366, 0.357, 0.326, 0.332, 0.323, 0.306, 0.31, 0.31, 0.333, 0.34, 0.4, 0.389, 0.308, 0.411, 0.278, 0.326, 0.335, 0.316, 0.371, 0.314, 0.384, 0.379, 0.32, 0.395, 0.347, 0.307, 0.326, 0.316, 0.341, 0.308, 0.327, 0.337, 0.36, 0.32, 0.372, 0.306, 0.305, 0.347, 0.281, 0.281, 0.296, 0.306, 0.343, 0.378, 0.393, 0.337, 0.327, 0.336, 0.32, 0.381, 0.306, 0.358, 0.311, 0.284, 0.364, 0.315, 0.342, 0.367, 0.307, 0.351, 0.372, 0.304, 0.296, 0.332, 0.312, 0.437, 0.295, 0.316, 0.298, 0.302, 0.342, 0.364, 0.304, 0.295, 0.305, 0.359, 0.335, 0.338, 0.341, 0.3, 0.378, 0.412, 0.273, 0.308, 0.309, 0.263, 0.291, 0.359, 0.352, 0.262, 0.274, 0.334, 0.343, 0.267, 0.321, 0.3, 0.327, 0.313, 0.316, 0.337, 0.268, 0.342, 0.292, 0.39, 0.332, 0.315, 0.298, 0.298, 0.331, 0.361, 0.272, 0.287, 0.34, 0.317, 0.327, 0.354, 0.317, 0.311, 0.174, 0.302, 0.302, 0.291, 0.29, 0.268, 0.352, 0.341, 0.265, 0.307, 0.36, 0.305, 0.254, 0.279, 0.321, 0.305, 0.35, 0.308, 0.326, 0.219, 0.23, 0.322, 0.405, 0.321, 0.291, 0.312, 0.357, 0.324)

datos <- data.frame(posicion = posicion, bateo = bateo)


# Identifica el número de grupos y cantidad de observaciones por grupo para
# determinar si es un modelo equilibrado. También se calculan la media y desviación
# típica de caga grupo.

table(NULL)

aggregate(NULL ~ NULL, data = NULL, FUN = NULL)

aggregate(NULL ~ NULL, data = NULL, FUN = NULL)


#Dado que el número de observaciones por grupo no es constante, se trata de un modelo
# no equilibrado. Es importante tenerlo en cuenta cuando se comprueben las condiciones
#de normalidad y homocedasticidad (s1=s2=s3=s4).
# La representación gráfica mas útil antes de realizar un ANOVA es el modelo Box-Plot.


ggplot(data = NULL, aes(x = NULL, y = NULL, color = NULL)) +
  geom_boxplot() +
  theme_bw()

# Este tipo de representación permite identificar de forma preliminar si existen asimetrías,
# datos atípicos o diferencia de varianzas. En este caso, los 4 grupos parecen seguir una
# distribución simétrica. En el nivel IF se detectan algunos valores extremos que habrá que
# estudiar con detalle por si fuese necesario eliminarlos. El tamaño de las cajas es similar
# para todos los niveles por lo que no hay indicios de falta de homocedasticidad (s1=s2=s3=s4).
# La representación gráfica mas útil antes de realizar un ANOVA es el modelo Box-Plot.






# Independencia:

# El tamaño total de la muestra es < 10% de la población de todos los bateadores de la liga.
# Los grupos (variable categórica) son independientes entre ellos ya que se ha hecho un
# muestreo aleatorio de jugadores de toda la liga (no solo de un mismo equipo).

# Distribución normal de las observaciones: La variable cuantitativa debe de distribuirse
# de forma normal en cada uno de los grupos. El estudio de normalidad puede hacerse de forma
# gráfica (qqplot) o con test de hipótesis. 


par(mfrow = c(2,2))
qqnorm(NULL, main = "C")
qqline(NULL)
qqnorm(NULL, main = "DH")
qqline(NULL)
qqnorm(NULL, main = "IF")
qqline(NULL)
qqnorm(NULL, main = "OF")
qqline(NULL)


par(mfrow = c(1,1))


# Dado que los grupos tienen mas de 50 eventos se emplea el test de Kolmogorov-Smirnov
# con la corrección de Lilliefors. La función en R se llama lillie.test() y se encuentra
# en el paquete nortest. Si fuesen menos de 50 eventos por grupo se emplearía el test
# Shapiro-Wilk.



by(data = datos,INDICES = datos$posicion,FUN = function(x){ lillie.test(NULL)})


# Los test de hipótesis no muestran evidencias de falta de normalidad. 


# Varianza constante entre grupos (homocedasticidad):
#   
#   Dado que hay un grupo (IF) que se encuentra en el límite para aceptar que se distribuye
# de forma normal, el test de Fisher y el de Bartlett no son recomendables. En su lugar es
# mejor emplea un test basado en la mediana test de Levene o test de Fligner-Killeen.

fligner.test(NULL ~ NULL,NULL)


leveneTest(NULL ~ NULL,NULL,center = "median")


# No hay evidencias significativas de falta de homocedasticidad en ninguno de los dos test.
# 
# El estudio de las condiciones puede realizarse previo cálculo del ANOVA, puesto que si
# no se cumplen no tiene mucho sentido seguir adelante. Sin embargo la forma más adecuada
# de comprobar que se satisfacen las condiciones necesarias es estudiando los residuos del
# modelo una vez generado el ANOVA. R permite graficar los residuos de forma directa con la
# función plot(objeto anova).

anova <- aov(NULL$NULL ~ NULL$NULL)
summary(anova)


plot(anova)



# Dado que el p-value es superior a 0.05 no hay evidencias suficientes para considerar
# que al menos dos medias son distintas. La representación gráfica de los residuos no
# muestra falta de homocedasticidad (gráfico 1) y en el qqplot los residuos se distribuyen
# muy cercanos a la linea de la normal (gráfico 2).