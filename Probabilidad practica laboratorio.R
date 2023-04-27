library(MASS)
library(modeest)
#Ejercicio 1
exMatBasica<-c(8, 12, 11, 13, 14, 9, 7, 12, 14, 13, 15, 13, 14, 14, 13, 14, 12, 14)

max(exMatBasica)-min(exMatBasica) #Rango

IQR(exMatBasica, na.rm = TRUE) #rango intercuartil

var(exMatBasica, na.rm = TRUE) #varianza

#Ejercicio 2

SeccionA<-c(50, 50, 50, 50, 50, 50, 65, 65, 65, 70, 70, 75,
            80, 85, 85, 85, 100, 100, 100, 100, 100, 100, 80)
SeccionB<-c(50, 65, 65, 70, 70, 70, 74, 74, 74, 74, 75, 75, 75,
            75, 75, 75, 76, 76, 76, 76, 80, 80, 80, 85, 85, 100)
#Media
mean(SeccionA)
mean(SeccionB)
#Mediana
median(SeccionA)
median(SeccionB)
#Moda
mode <- function(x) {
  return(as.numeric(names(which.max(table(x)))))
}
barplot(table(SeccionA), col = c(4, rep("gray", 4)))
barplot(table(SeccionB), col = c(4, rep("gray", 4)))
mode(SeccionB)
#percentiles
quantile(x=SeccionA, probs=c(0.27, 0.56, 0.72, 0.89))
quantile(x=SeccionB, probs=c(0.27, 0.56, 0.72, 0.89))

#Ejercicio 3

Septiembre<-c(77,   67,   60,   70,   67,   68,   59,   49,   56,   57)
Octubre<-c(78,   73 ,  67 ,  75 ,  67 ,  74 ,  68  , 67  , 71  , 57)
#Media
mean(Septiembre)
mean(Octubre)
#Homogeneidad
bartlett.test(list(Septiembre,Octubre))
sd(Septiembre)
sd(Octubre)

#Ejercicio 4

Fallos<-c(11 ,  16 ,  32   ,21 ,  26 ,  56 ,  11 ,  15 ,  16 ,  21 ,  32,
          12 ,  32  , 33 ,  42  , 46 ,  21 ,  46  , 12,   11  , 32 ,  26 ,  21
          46 ,  13  , 15,   46  , 13 ,  26,   46 ,   11 ,  15  , 16 ,  21 ,  32  ,
          13 ,  26  , 46   , 11  , 16  , 21  , 32 ,  12 )
CAP <- (mean (Fallos)- mlv(Fallos, method="mfv")) /mean(Variable)

