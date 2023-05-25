#integrales
?integrate

integrate(function(x) x, lower = 0, upper = 1) 

integrate(function(y) y, lower = 0, upper = 1) 

integrate(function(t) t, lower = 0, upper = 1)

integrate(function(x) 1/sqrt(3-x), lower = 0, upper = 3) #integral imprompia

integrate(function(x) 1/x, lower = 0, upper = 1)#no definida

integrate(function(x) 1/x, lower = 0.00000000001, upper = 1)

integrar<-function(x){1/sqrt(3-x)}
integrate(integrar, lower = 0, upper = 3)

#Suma de Riemann

integrar<-function(x) 1/sqrt(3-x)
x1<-seq(0, 3, by=0.01)
plot(x1, integrar(x1), type='l', col='black', lwd=2)

integrar<-function(x) 1/sqrt(3-x)
x1<-seq(0, 3, by=0.5)
plot(x1, integrar(x1), type='l', col='black', lwd=2)

integrar<-function(x) x^2
x1<-seq(0, 1, by=0.01)
plot(x1, integrar(x1), type='l', col='black', lwd=2)

polygon(c(0,x1,1), c(0,integrar(x1),0),col = 'blueviolet')

integrar<-function(x) sin(x)
x1<-seq(0, pi, by=0.01)
plot(x1, integrar(x1), type='l', col='black', lwd=2)

polygon(c(0,x1,1), c(0,integrar(x1),0),col = 'blueviolet')

#----funcion exponencial
