#Problema 1
r<-4
lamda<-0.5
e<-2.71828
j<-0:(r-1)
#a) Esperanza
Esp<-4/0.5
Esp
#b) Desv Estandar
varianza<-4/(0.5**2)
Desv<-sqrt(varianza)
Desv
#c) P(T<=1) = P(x>=4)
x<-1
sumProb<-(e**(-lamda*x))*(((lamda*x)**j)/factorial(j))
P<-1-sum(sumProb)
P
#d) P(T>=4) = 1-P(T<=3)
    #P(T<=3) = P(x>=4)
x<-3
#sumProb<-P(x>=4)
sumProb<-(e**(-lamda*x))*(((lamda*x)**j)/factorial(j))
#P<-1-(1-P(x>=4))
P<-1-(1-sum(sumProb))
P
#Problema 2
r<-6
lamda<-3.6
e<-2.71828
j<-0:(r-1)
#P(T<=1)
x<-1
sumProb<-(e**(-lamda*x))*(((lamda*x)**j)/factorial(j))
P<-sum(sumProb)
P
#Problema 3
alfa<-0.5
beta<-3
#a) Media
Esp<-(1/beta)*(factorial(1/alfa))
Esp
#b) Desv Estandar
varianza<-(1/beta**2)*(factorial(2/alfa)-(factorial(1/alfa)**2))
Desv<-sqrt(varianza)
Desv
#c) P(T<1)
x<-1
Prob1<-1-e**(-(beta*x)**alfa)
Prob1
#d) P(T>5) = 1-P(T<=5)
x<-5
P<-1-e**(-(beta*x)**alfa)
Prob2<-1-P
Prob2
#e) P(2<T<4)
p1<-1-e**(-(beta*4)**alfa)
p2<-1-e**(-(beta*2)**alfa)
Prob3<-p1-p2
Prob3
#Problema 4
alfa<-2.25
beta<-4.474*(10**(-4))
#a) P(T>1000)
x=1000
P<-1-e**(-(beta*x)**alfa)
Prob<-1-P
Prob
#b) P(T>2000)
x<-2000
Prob2<-1-e**(-(beta*x)**alfa)
Prob2
#c)
Esp<-(1/beta)*(factorial(1/alfa))
Esp