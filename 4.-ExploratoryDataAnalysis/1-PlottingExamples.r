x<-rnorm(100)
hist(x)
y<-rnorm(100)
plot(x, y)
z<-rnorm(100)
plot(x, z)
plot(x, y)
par(mar=c(2,2,2,2))
plot(x, y)

par(mar=c(4,4,2,2))
plot(x, y)

plot(x, y, pch=20)
plot(x, y, pch=19)
plot(x, y, pch=2)
plot(x, y, pch=3)
plot(x, y, pch=4)

 


plot(x, y, pchShow=20)
title("Scattertplot")
text(-2,-2,"Label")
legend("topleft",legend="Data",pch=20)
fit<-lm(y~x)
abline(fit)

abline(fit,lwd=3)
abline(fit,lwd=3,col="blue")

plot(x, y, xlab="Weight",ylab="Height",main="Scatterplot", pch=20)
legend("topright",legend="Data",pch=20)
fit<-lm(y~x)
abline(fit,lwd=3,col="red")

# dividir la pantalla en varios graficos
 
z<-rpois(100,2)
par(mfrow=c(2,1))
plot(x, y, pch=20)
plot(x, z, pch=19)

par(mar=c(2,2,1,1))
plot(x, y, pch=20)
plot(x, z, pch=20)

par(mfrow=c(1,2))
plot(x, y, pch=20)
plot(x, z, pch=20)

par(mar=c(4,4,2,2))
plot(x, y, pch=20)
plot(x, z, pch=20)

par(mfrow=c(2,2))
plot(x, y, pch=20)
plot(x, z, pch=20)
plot(x, y, pch=20)
plot(x, z, pch=20)

par(mfcol=c(2,2))
plot(x, y, pch=20)
plot(x, z, pch=20)
plot(x, y, pch=20)
plot(x, z, pch=20)

#poner colores en los puntos
x<-rnorm(100)
y<-x+rnorm(100)
g<-gl(2,50,labels=c("Male","Female"))
plot(x,y)
plot(x,y,type="n")
points(x[g=="Male"], y[g=="Male"], col="green")
points(x[g=="Female"], y[g=="Female"], col="blue")