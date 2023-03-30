#Ver nuestro archivo
x<-read.csv("Data_notas.csv",head=T,sep = ";")
head(x)
str(x)
summary(x)

#Estadística descxriptiva
  #primera forma
Puntajes<-x$Puntajes
k<-nclass.Sturges(Puntajes)
k
intervalos<-cut(Puntajes, breaks = k)
intervalos
table(intervalos) #Halla la cantidad en cada intervalo
hist(Puntajes)
  #segunda forma
attach(x)
library(fdth)
y=fdt(Puntajes, start = 30, end = 100, h = 10)#tabla de frecuencias
y
hist(Puntajes)