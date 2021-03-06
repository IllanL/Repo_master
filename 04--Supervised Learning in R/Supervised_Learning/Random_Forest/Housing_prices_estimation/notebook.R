#Borramos los datos
rm(list=ls())

#-------------- Pregunta 1: Lectura de datos ----------#

library(MASS)
data(package="MASS")
boston<-Boston
dim(boston)
names(boston)


#-------------- Pregunta 2: datos de train ----------#
set.seed(101)
boston<-boston[sample(1:nrow(boston))]
train = sample(1:nrow(boston), 300)


#-------------- Pregunta 3: Ajuste del modelo ----------#
narboles=100
rf.boston = randomForest(medv~., data = boston, subset = train, ntree=narboles)
rf.boston



#-------------- Pregunta 4: Arboles vs. error ----------#

plot(rf.boston, main=paste("Error vs. ntrees", narboles))
par(mfrow=c(1,1))

#-------------- Pregunta 5: oob error vs test error ----------#

nvariables=13

oob.err = double(ncol(boston)-1)
test.err = double(ncol(boston)-1)
for(nvariables in 1:(ncol(boston)-1)){
  fit = randomForest(medv~., data = boston, subset=train, mtry=nvariables, ntree = 350)
  oob.err[nvariables] = fit$mse[350]
  pred = predict(fit, boston[-train,])
  test.err[nvariables] = with(boston[-train,], mean( (medv-pred)^2 ))
}




#-------------- Pregunta 6: Grafico oob error vs test error ----------#

matplot(1:nvariables, cbind(test.err, oob.err), pch = 23, col = c("red", "blue"), type = "b", ylab="Mean Squared Error")
legend("topright", legend = c("OOB", "Test"), pch = 23, col = c("red", "blue"))





