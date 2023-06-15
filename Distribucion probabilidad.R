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

#--------------------------------------------------------------------

#Ejemplo 3
p<-0.2
q<-1-p
x<-1:2
Prob<-p*q^(x-1)
Data1<-data.frame(x,Prob)
Data1
Suma<-sum(Prob)
Suma
#Esperanza y varianza
mu<-1-p
mu
var1<-q/p^2
var1
#otro metodo
p<-0.2
x<-2
pgeom(x-1,p)

#DISTRIBUICON GEOMETRICA PASCAL
#Ejemplo 04
x1<-12 #alteracione cerebrales
total<-50
p<-x1/total
q<-1-p
#a)
r<-1
x<-8
Prob<-choose(x-1,r-1)*p^r*q^(x-r)
Prob
#Otro metodo
Prob<-dnbinom(x-r,r,p)
Prob

#--------------------------------------------------

#Ejemplo 05
p<-0.20
q<-1-p
#pregunta
r<-3
x<-8
Prob<-choose(x-1,r-1)*p^r*q^(x-r)
Prob
#Otro metodo
Prob<-dnbinom(x-r,r,p)
Prob

#--------------------------------------------------

#Ejemplo 06
p<-0.10
q<-1-p
"pregunta"
r<-4
#a)Esperanza
mu<-r/p
mu
#b)Prob que se detenga el en 10°
x<-10
Prob<-choose(x-1,r-1)*p^r*q^(x-r)
Prob
#c)Al menos 7 ariculos antes de que se detenga
#P(x>=7)=1-P(x<7)
x<-r:6
Prob<-choose(x-1,r-1)*p^r*q^(x-r)
Prob
Rpta<-1-sum(Prob)
Rpta
