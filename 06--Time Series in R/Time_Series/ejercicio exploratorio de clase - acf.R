mwn <- rnorm(1000,0,1)

plot(mwn, type="line")


lines(1:1000,rep(1,1000),col='blue',lwd=2)
lines(1:1000,rep(-1,1000),col='blue',lwd=2)

#ESTA ES LA FUNCIÓN IMPORTANTE:

acf(mwn)


#SEGUIMOS:


seq(from=1, to=1000, by=50)