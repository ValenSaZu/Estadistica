#Ejemplo 4
n<-3
#X: numero de componentes que fallan
p<-0.1
q<-1-p
x<-0
Prob<-(choose(n,x)*p^x*q^(n-x))
Prob
x<-1
Prob<-(choose(n,x)*p^x*q^(n-x))
Prob
x<-0:n #de 0 a n
Prob<-(choose(n,x)*p^x*q^(n-x))
Prob
#tabla
Data1<-data.frame(x,Prob)
Data1
#grafica en el plano cartesiano
plot(x, Prob)
plot(x, Prob, main="Diagrama de dispersion")
plot(x, Prob, main="Diagrama de dispersion", type='h', las=1, lwd=6)

#--------------------------------------------------------------------

#Ejemplo 5
x1<-1
n1<-5
n<-10
# X: numero de llamadas que se comuniquen
p<-x1/n1
q<-1-p
x<-2
Prob<-(choose(n,x)*p^x*q^(n-x))
Prob
#otra forma para la binomial
Prob<-dbinom(x=x, size=n, prob = p)
Prob

#--------------------------------------------------------------------

#ejemplo 6
#X: pago al contado
p<-30/100
q<-1-p
n<-8
x<-3:n # de 3 a más
Prob<-(choose(n,x)*p^x*q^(n-x))
Prob
ProbTotal<-sum(Prob)
ProbTotal

#otra forma para la binomial
Prob<-dbinom(x=x, size=n, prob = p)
Prob
ProbTotal<-sum(Prob)
ProbTotal

#P(X<=2)
x<-0:2
Prob<-dbinom(x=x, size=n, prob = p)
Prob
ProbTotal<-sum(Prob)
ProbTotal

#Distribucion acumulada
x<-2
Prob<-pbinom(x, size=n, prob = p)
Prob

#--------------------------------------------------------------------

#DISTRIBUCION GEOMÉTRICA
#Ejemplo 1
#X: Numero de intentos hasta que recite correctamente
p<-0.3
q<-1-p
x<-6
Prob<-p*q^(x-1)
Prob
#Esperanza
mu<-1/p
mu
#Desviacion de estandar
variacion<-q/(p^2)
desvEst<-sqrt(variacion)
desvEst
#Otro metodo
Prob<-dgeom(x-1,p)
Prob

#--------------------------------------------------------------------

#Ejemplo 2
#X: Numero de preguntas que realiza el profesor
p<-0.1
x<-1:20
Prob<-dgeom(x-1,p)
Prob

Data2<-data.frame(x,Prob)
Data2

plot(x, Prob, main="Diagrama de dispersion", type='h', las=1, lwd=6)
