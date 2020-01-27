############################################################################
################ INICIO DEL SCRIPT: CHOOSING BEST MODEL #################### 
#### EN ESTE SCRIPT INTENTAMOS M?TODOS CL?SICOS PARA FORECASTING OF TIME ### 
######## SERIES. SELECCIONAMOS EL MEJOR MODELO CON EL INDICADOR MSAE #######
############################################################################



rm(list = ls())



#Cargamos los datos del script download
data_price<-fread(NULL,sep=",")
data_price<-as.data.frame(data_price)
data_price$V1<-NULL # este NULL Sí tienes que dejarlo :-)

#####################################################################
######################### EXPLORING DATA ##########################
#####################################################################

#Realizamos una exploracion previa de la serie

y<-ts(data_price$price_spain,frequency = 24) #Serie hist?rica de precios
summary(y)
plot(y)
plot(decompose(y))

par(mfrow=c(2,1))

hist(y,probability = T)
lines(density(y),col="red",lwd=2)
qqnorm(y)
qqline(y)

#Explorando acf
acf(y)


#Originalmente la serie no es estacionaria, procedemos a realizar
#ciertas transformaciones
acf(log(y))


par(mfrow=c(3,1))
for(i in 1:3){
  acf(diff(log(y),differences = i),main=paste0("ACF para la serie de diferencias con i=",i ))
}





#####################################################################
######################### CROSS-VALIDATION ##########################
#####################################################################

#Vamos a realizar una "validacion cruzada" que para series de tiempo
#se llama "Rolling forecasting origin"

y<-ts(NULL,frequency = 24) #Serie hist?rica de precios

errordf<-data.frame(err1=0,err2=0,err3=0,err4=0,err5=0,err6=0,err7=0) #Inicializaci?n de los 
npred<-lines(1:1000,rep(1,1000),col="blue",lwd=2)

print(paste0(Sys.time(),": Inicio"))
for(i in 1:20){
  print(i)
  train<-window(y,end=c(end(y)[1]-(20-i+1),24))
  test<-window(y,start=c(end(y)[1]-(20-i),1),end=c(end(y)[1]-(20-i),24))
  
  
  # __  __   _____    ____      _        _   _   _   _   _       _     
  # |  \/  | | ____|  / ___|    / \      | \ | | | | | | | |     | |    
  # | |\/| | |  _|   | |  _    / _ \     |  \| | | | | | | |     | |    
  # | |  | | | |___  | |_| |  / ___ \    | |\  | | |_| | | |___  | |___ 
  # |_|  |_| |_____|  \____| /_/   \_\   |_| \_|  \___/  |_____| |_____|
    
    
    
    
  for(j in 1:length(pred)){
    NULL[i,j]<-mean(abs(NULL-NULL))
  }
}
print(paste0(Sys.time(),": Fin"))


#Debido al coste que genera la CV, guardamos el resultado por si en alg?n caso por error lo borramos
save(errordf,file= paste0(getwd(),"./data_out/errordf.Rdata"))






#####################################################################
####################### DATA VISUALIZATION ##########################
#####################################################################


rm(list = ls())

load(paste0(getwd(),NULL))


#Analizamos la evoluci?n de MAE de cada modelo tras cada iteracion de la CV
par(mfrow=c(1,1))
for(i in 1:7){
  if(i==1){
  plot(NULL,type="l",lwd=2,col=(i+1),
       ylab="MAE",xlab = "Iteration",
       main="Evoluci\u00f3n de CV para cada modelo")
  }else{
  lines(errordf[,i],col=(i+1),lwd=2)}
}

legend('topleft' ,
       lty=1, col=2:8, cex=0.75,
legend=c("Linear regression","ETS no Box.Cox",
"HoltWinters Add","HoltWinters Mult","TBATS","ETS Box.Cox","ARIMA"))


#Barplot para visualizar media de MAE

m<-colMeans(errordf)
names(m)<-c("Linear regression","ETS no Box.Cox",
            "HoltWinters Add","HoltWinters Mult","TBATS","ETS Box.Cox","ARIMA")

barplot(m,ylab = "Mean of MAE", xlab = "Models",col="blue",
        main="Media de MAE para cada modelo utilizado en CV",ylim=c(0,5))


save(m,file=paste0(getwd(),"./data_out/matrixbarplot.Rdata"))

#El modelo con la media m?s baja en MAE es TBATS


############################################################################
################## FIN DEL SCRIPT: CHOOSING BEST MODEL ##################### 
############################################################################
