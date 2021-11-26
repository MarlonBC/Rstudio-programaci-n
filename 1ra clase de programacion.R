1+2 # suma
1-3 # Resta
10^3 # EXponente
10%%2 # Modulo 
print("Adorar")
# TIPOS DE DATOS
# Numérico
1.0
1.5 # Float o double
# Integer
5L
10L
# Caracter
"Hola"
"¿Qué tal?"
# 

# Asignación de variable
# 5x + 1
x<- 5
x= 5
5-> x

y<- 6

z<- "hola"

a<- TRUE 

x*y

# Estructura de datos
vec <- c(1,2,4,5,8,10,15,-1)
nombres <- c("Alely","Adrian","Marlon","Eduardo")

nombres <- c("Alely", 5)
# Asignación de variable
a <-1
b =4
c <-3
# Operación Lógica
a == b
#Tipos de datos
a <- 5
b <- "5"
c <- "5"
class(a)
class(b)
1:10
secuencia <- seq(1,10,2)
secuencia2 <- seq(50,0,-5)
vector_numerico <- c(5,6,7,8,9,10,54,66,30,24)
vector_numerico[4]
length(vector_numerico)
vector_numerico[10]
vector_numerico[c(1,4,6)]
sum(vector_numerico)
sd(vector_numerico)
otro <- c(5,6,7)
min(vector_numerico)
max(vector_numerico)

# matriz (2 dimensiones)
c(1,2,3,4,5,6)
matrix(c(1,2,3,4,5,6),2)

v_num <- 1:9
matrix(data = v_num, nrow = 3)
matrix(data = v_num, nrow = 3, ncol = 3, byrow = TRUE)
# array (2 > dimensiones)
# 27 elementos de 0 a 100, crear matriz 9x3
seq(1,100,length(27))
Marlon <- seq(0,100, length=27)
length(Marlon)
v32 <- seq(0,100, length=27)
Matriz_Marlon <- matrix(data = v32,nrow = 9,ncol = 3)
Matriz_Marlon[2,2]
dato <- data.frame(Nombre = c("Artur","Marlon","Valeria"),Notas = c(11,11,10),Aprobado = c(TRUE,FALSE,TRUE))
data
dato
Agua <- read.csv("D:/Users/MARLON/Downloads/EATComponenteambientalAgua_2819291635296823726.csv", sep = ",")
View(Agua)
Agua$Altitud
Agua["Altitud"]

# Operadores logicos 
5>3
3<5
3 !=5
4 >= c(4,3,2,1)
df <- read.csv("D:/Users/MARLON/Downloads/earthquakes.csv")
df[df$Magnitude > 8,]
nrow(df[df$Magnitude>8,])
View(df)
install.packages("raster")
library(raster)
plot(raster(m))
# Infraestructura de datos espaciales (IDE)
iris
1:20
seq(0,10,length=5)
Vector01 <- c(1:125)    
Matriz <- matrix(Vector01,nrow = 3,ncol = 3)    
# rbind(): Agregar filas (rows)
# cbind(): Agregar columnas (cols)
Vector02 <- 1:9
rbind(Matriz, Vector02)
# Data frame
v1 <- c(1,2,3)
v2 <- c("a","b","c")
v3 <- c(T,F,T)
df <- data.frame(v1,v2,v3)
cbind(df, v1)
iris
class(iris)
iris$Species
mean(iris$Petal.Length)
Setosa<-iris[iris$Species == "setosa",]
Versicolor <- iris[iris$Species == "versicolor",]
mean(iris$Sepal.Length == "setosa",)
mean(Setosa$Petal.Length)
mean(Versicolor$Sepal.Length)
#Identificar cual es mayor en longitud de petalo

#Tidyverse
read.csv()
install.packages("readxl", dependecies= TRUE)
library(readxl)
v66 <- c(4,9,1,5,3,6)
order(v66 , na.last = TRUE, decreasing = FALSE)
data.frame(Nombre = c("Artur","Marlon","Valeria"),Notas = c(11,11,10),Aprobado = c(TRUE,FALSE,TRUE))
data.frame(grupo)

