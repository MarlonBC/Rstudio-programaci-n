#PARTE 1:
#1. Calcula los valores numéricos aproximados de: 
  #a
(0.3*0.15)/(0.3*0.15+0.2*0.8+0.5*0.12)
  #b
(5^6)*exp(-5)/factorial(6)
  #c
choose(20,7)*(0.4^7)*(0.6^13)
#2. Realizar la siguiente suma
  #a
sum(1:1000)
  #b
Sumaexpo<-function(a,n){(1-a^(n+1))/(1-a)}
Sumaexpo(2,10)
#3. El vector grupo representa el grupo al que pertenece una serie de alumnos
  #a.¿Cuántos elementos tiene?
length(grupo)
View(grupo)
  #b.¿En qué posiciones del vector está la letra “A"?
which(grupo == "A",)
#4. El vector nota representa la nota de un examen de los alumnos que están en los grupos del vector grupo.
  #a.¿Cuanto suman todas las notas?
sum(nota)
  #b.¿Cual es la media aritmética de todas las notas?
mean(nota)
  #c¿En qué posiciones están las notas mayores de 7.0?
which(nota>7)
nota
sort(nota,decreasing=TRUE)
which.max(nota)
#5. A partir de los vectores grupo y nota definidos.
  #a.Suma las notas de los 10 primeros alumnos del vector
sum(nota[1:10])
  #b.¿Cuántos alumnos hay del grupo C?
length(grupo[grupo=="C"])
  #c.¿Cuántos alumnos han aprobado?
length(nota[nota>=5])
  #d.¿Cuántos alumnos del grupo B han aprobado?
length(nota[grupo=="B" & nota>=5])
  #e.¿Qué porcentaje de alumnos del grupo C han aprobado?
length(nota[grupo=="C" & nota>=5])/length(nota[grupo=="C"])*100
  #f.¿De qué grupos son la máxima y mínima notas de toda la muestra?
grupo[which.max(nota)]
grupo[which.min(nota)]
  #g.Nota media de los alumnos de grupo A y B, juntos, considerando sólo a los que han aprobado.
mean(nota[(grupo=="B"| grupo=="A") & nota>=5])
#6. Calcula el percentil 66 de las notas de todos los alumnos, y también de los alumnos del grupo C.
sort(nota)
quantile(nota,66/100)
quantile(nota[grupo=="C"],66/100)
#7. Un alumno tiene una nota de 4.9. ¿Qué porcentaje, del total de alumnos, tiene una nota menor o igual que la suya? ¿Y qué porcentaje tiene una nota mayor o igual que la suya?
length(nota[nota<=4.9])/length(nota)*100
quantile(nota,46.875/100)
length(nota[nota>=4.90])/length(nota)*100
quantile(nota,c(0/100,46.875/100,66/100,100/100))
#8. Realiza el gráfico de diagramas de caja de las notas de cada grupo, para poder comparar el nivel de cada uno de ellos.
boxplot(nota~grupo)
boxplot(grupo)
#9. Si la variable conc recoge la concentración de plomo (en ppm) en el aire de cierta zona durante un día completo
  #a.¿Cuál ha sido la concentración máxima?
conc[which.max(conc)]
which.max(conc)
  #b.¿En cuántos de los muestreos se ha superado la concentración de 40.0 ppm?
length(conc[conc>=40.0])
  #c.¿Cuál ha sido la concentración media del día?
mean(conc)
  #d.¿Cuáles fueron las 10 mediciones más bajas del día?
sort(conc)
sort(conc)[1:10]
  #e.Si la primera medida fue a las 00:00. ¿A qué hora del día se alcanzó la concentración máxima?
conc
length(conc)
    #Minutos totales 
((which.max(conc)-1)*60*24)/length(conc)
((which.max(conc)-1)*24)/length(conc)
    #Minutos sobrantes
(((which.max(conc)-1)*24)/length(conc)-11)*60
    #Horas
((which.max(conc)-1)*24)/length(conc)-0.75
    #Hora del día
#Rpta:(11:45 am)
#Parte2
# Graficar los puntos en un plano utilizando RStudio.
  #1.Graficar los puntos (1,1),(2,4),(3,9),(4,16),(5,25),(6,36),(7,49),(8,64),(9,81),(10,100)en un plano utilizando RStudio.
x <- c(1,2,3,4,5,6,7,8,9,10)
y <- c(1,4,9,16,25,36,49,64,81,100)
stripchart(x~y)
plot(x,y)
  #2.Ingresar la matriz A en RStudio
a <-c(1,2,3,4)
b <-c(2,4,6,8)
c <-c(3,6,9,12)
matrix(c(a,b,c),nrow = 4,ncol = 3)
z <- c(1,2,3,4,2,4,6,8,3,6,9,12)
A=matrix(z,nrow = 4, ncol = 3)
  #3.Ingresar la matriz identidad de tamaño 3
I=matrix(c(1,0,0,0,1,0,0,0,1),nrow = 3,ncol = 3)
  #4.Crea una función que cree una matriz nula ingresando las dimensiones
matriznula<-function(x,y){matrix(c(0),nrow = y,ncol = x)}
matriznula(6,7)
  #5.Modificar la matriz diag(4), para que se parezca a la matriz B 
B=diag(4)*matrix(c(0,0,0,0,0,2,0,0,0,0,3,0,0,0,0,4),ncol = 4,nrow = 4)
  #6.Obtener la matriz transpuesta de A (ejercicio 2)
t(A)
  #7-Realizar las siguientes operaciones A+B,A-B,3B,AB
A<-matrix(c(1,2,3,4,2,4,6,8,3,6,9,10),nrow = 4,ncol = 4)
B<-matrix(c(0,0,0,0,0,2,0,0,0,0,3,0,0,0,0,4),nrow = 4,ncol = 4)
A+B
A-B
3*B
A*B
  #8Crea una función para calcular P^6
P<-matrix(c(1,-2,1,2,4,0,3,-2,1),nrow = 3,ncol = 3)
P^6
P
  #9.Resolver el sistema de ecuaciones
j <- matrix(c (3,9,3,-1,-2,1,1,1,-2), nrow=3)
k <- c(-1,-9,-9)
solve(j,k)
  #10.Utilizando la ayuda de R, investigue para que sirven las funciones eigen() y det()
  #11.Considerando las matrices
b <-c(1:10)
b2 <-seq(2,20,by=2)
b3 <-seq(3,30,by=3)
b4 <-seq(4,40,by=4)
b5 <-seq(5,50,by=5)
B=cbind(b,b2,b3,b4,b5)
a <-c(0,1,0,0,1)
a2 <-c(1,0,1,1,0)
a3 <-c(0,1,0,0,1)
a4 <-c(1,0,1,0,1)
a5 <-c(0,1,0,1,0)
A=cbind(a,a2,a3,a4,a5)
 #11.Calcular BxA-BxA^t
B%*%A-B%*%t(A)
#12.Considere B=(x1^t.x1)^-1.(x1^t.y1)
x1<- matrix(c(1,1,1,1,1,1,-1,0,1,2),nrow = 5,ncol = 2)
y1<- matrix(c(0,0,1,1,3),nrow = ,ncol = 1)
((t(x1)%*%x1)^-1)%*%(t(x1)%*%y1)
B<-((t(x1)%*%x1)^-1)%*%(t(x1)%*%y1)
#13
data(co2)
means = aggregate(co2, FUN=mean)
year = as.vector(time(means))
co2 = as.vector(means)
co2
year
difCO2btime<-function(x){co2[which(year==x+1)]-co2[which(year==x)]}      
difCO2btime(1959)
Variacion<-c()
Diferencias <-for (contador in 1959:1997){
  Variacion[contador-1958]<-print(difCO2btime(contador)
  )}
Variacion
Vad<-c(Variacion,2.64,NA)
yad<-c(year,2019,2020)
length(year)
plot(year,Variacion,type = "b",main = "Variacion entre a�os")
plot(yad,Vad,type = "b",main = "Variacion entre a�os",xlim =c(1959,2020),pch=1)
points(2019,2.64,pch=4,col="red")
diff(co2,)
#14
load("D:/Users/MARLON/Desktop/rainfall.csv")
read.csv("D:/Users/MARLON/Desktop/rainfall.csv")
library(readxl)
geo<-read.csv("D:/Users/MARLON/Desktop/a after/datos.csv")
read.csv("D:/Users/MARLON/Desktop/a after/datos.csv")
geo$sep
geo[which(geo$jan>180)]
precipitación<-c(geo$sep,geo$oct,geo$nov,geo$dec,geo$jan,geo$feb,geo$mar,geo$apr,geo$may)
precipitación[precipitación>180]
which(precipitación>180)
which(geo$jan>180)
staciones<-c("sep","oct","nov","dec","jan","feb","mar","apr","may")
geo[geo$sep>180,]
geo[geo$oct>180,]
geo[geo$nov>180,]
geo[geo$dec>180,]
geo[geo$jan>180,]
geo[geo$feb>180,]
geo[geo$mar>180,]
geo[geo$apr>180,]
geo[geo$may>180,]


length(geo[geo$jan>180,])


diff(co2)
data(co2)
means = aggregate(co2, FUN=mean)
year = as.vector(time(means))
co2 = as.vector(means)
co2
year
Diffco2<-c(diff(co2),NA)
plot(year,Diffco2,type = "b",main = "Variacion entre a�os")
plot(year,Diffco2,type = "b",main = "Variacion entre a�os",xlim =c(1959,2020),pch=1)
points(2020,2.64,pch=4,col="red")