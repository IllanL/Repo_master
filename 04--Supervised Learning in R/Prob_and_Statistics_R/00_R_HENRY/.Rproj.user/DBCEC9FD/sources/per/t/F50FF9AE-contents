rm(list=ls())

set.seed(123)
x <- rnorm(3000,0,1)

mean(x)
var(x)


getmode <- function(v) {
  
  valores <- unique(v)
  valores[which.max(tabulate(match(v,valores)))]
}

v <- c(2,1,1,1,1,1,2,3,2,3,2,3,2,1,1,1,2,3,4,5,5,4,3,2,1,3,2,3,1,4,2,1)

getmode(v)

table(v)

max(table(v))

which.max(table(v))


aaa1 <- DescTools::Mode(v)

install.packages("DescTools")

sample(aaa1)




hist(x, prob=TRUE)
lines(density(x), col="red",lwd=2)

plot_ly(x=x, type="histogram")


y <- rnorm(length(x),1)

boxplot(data.frame(x,y))

head(diamonds)


plot_ly(y = x, type = "box") %>%
  add_trace(y = y)


boxplot(ggplot2::diamonds)

plot_ly(ggplot2::diamonds, y = ~price, color = ~cut, type = "box")



#--Funciones de probabilidad, densidad distribucion.


dbinom(2,size=10,prob=0.2) #Probabilidad que una binomial(10,0.2) tome el valor 2 es,
pbinom(2,size=10,prob=0.2) #Probabilidad que una binomial(10,0.2) tome un valor inferior a 2
qbinom(0.9,size=10,prob=0.2) # que valor de una binomial(10,0.2) presenta una probabilidad acumulada de 0.9 ?
rbinom(20,size=10,prob=0.2) # generar 20 valores aleatorios de una distribuci?n binomial(10,0.2)



dnorm(x, mean=0, sd=1) #d: densidad
pnorm(0.1, mean=0, sd=1) #p: distribucion
qnorm(0.11, mean=0, sd=1) #q: quantile, que valor de una N(0,1) presenta una probabilidad acumulada de 0.11 
rnorm(1000, mean=0, sd=1) #r: random values de tamano n media mean y desviacion sd



#-- Graficas Discretas
par(mfrow=c(1,2))
x<-c(0,1:10)
plot(x,dbinom(x,size=10,prob=0.5),type='h',main="Funci\u00f3n de Probabilidad Binomial", xlab="k", ylab="P(X=k)")
plot(x,pbinom(x,size=10,prob=0.5),type='s',main="Funci\u00f3n de Distribuci\u00f3n Binomial", xlab="k", ylab="P(X<=k)")


#-- Graficas Continuas
par(mfrow=c(1,2))
x<-seq(-5,5,by=0.1)
plot(x,dnorm(x,mean=0,sd=1),type='l',main="Funci\u00f3n de densidad normal",xlab="x", ylab="f(x)",col="blue",lwd=2)
plot(x,pnorm(x,mean=0,sd=1),type='l',main="Funci\u00f3n de distribuci\u00f3n normal",xlab="x", ylab="F(x)",col="blue",lwd=2)





