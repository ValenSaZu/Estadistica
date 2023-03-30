graf2=barplot(frec_porc,names = categoriaa, ylab = %, ylim = c(0, max(frec_poc)*1.1))
graf2
text(x=graf2, y=frec_porc,labels=round(frec_porc,1), pos = 3)

frec_porc
porcentaje<-c(15,35,30,20)
etiqueta<-c(paste(porcentaje,"%", sep=" "))
etiqueta
?pie
pie(porcentaje,labels = etiqueta,clockwise = TRUE, col = c("green", "pink", "blue"),
    colores<-c("green", "pink", "blue") main = "Diagrama circular")

#legend("bottomright", c("Sin estudios", "Estudios primarios", "Estudios secundarios", "Estudios superiores"),
#       cex = 0.6,fill = colores)

legend("topright", c("Sin estudios", "Estudios primarios", "Estudios secundarios", "Estudios superiores"),
       cex = 0.6,fill = colores)
