Untitled
================
Lliuya Anderson - Briceño Marlon - Lavado Kresly
25/11/2021

# *Tarea2*

## ***1.¿Qué cantidad de dinero sobra al repartir 10000$ entre 3 personas?***

``` r
1000%%3
```

    ## [1] 1

## ***2. ¿Es el numero 4560 divisible por 3? ***

``` r
0 == (4560%%3)
```

    ## [1] TRUE

## ***3. Construya un vector con los n ́umeros enteros del2 al 87.Cuales de esos numeros son divisibles por 7?***

``` r
z <- c(2:87)
x <- (0 == z%%7)
which(x == TRUE)
```

    ##  [1]  6 13 20 27 34 41 48 55 62 69 76 83

``` r
z[which(x == TRUE)]
```

    ##  [1]  7 14 21 28 35 42 49 56 63 70 77 84

``` r
z[which(x)]
```

    ##  [1]  7 14 21 28 35 42 49 56 63 70 77 84

## ***4.Construya dos vectores, el primero con los n ́umeros enteros desde 7 hasta 3, el segundo vector con los primeros cinco n ́umeros positivos divisibles por 5.***

``` r
a<- c(7:3)
b<- seq(0,100,5)
l <-b[c(1,2,3,4,5)]
```

## 4.1. Sea A la condicion de ser par en el primer vector.

``` r
A <- c(a[which(0==a%%2)])
A
```

    ## [1] 6 4

## 4.2 Sea B la condicion de ser mayor que 10 en el segundo vector.

``` r
B <- c(l[which(l>10)])
B
```

    ## [1] 15 20

## ***5. Consulte este link en el cual hay una anecdotas de Gauss niño. Use R para obtener el resultado de la suma solicitada por el profesor del niño Gauss.***

``` r
sum(1:100)
```

    ## [1] 5050

``` r
Vector_suma_de_Gauss <- function(n){(n*(n+1))/2}
Vector_suma_de_Gauss(100)
```

    ## [1] 5050

## ***6. Construya un vector con los siguientes elementos: 1, -4, 5, 9, -4. Escriba un procedimiento para extraer las posiciones donde estÃ¡ el valor mínimo en el vector.***

``` r
k <- c(1,-4,5,9,-4)
min(k)
```

    ## [1] -4

``` r
which(k==-4)
```

    ## [1] 2 5

## ***7. Calcular 8!***

``` r
factorial(8)
```

    ## [1] 40320

## ***8. Evaluar la siguiente sumatoria***

![](D:\Users\MARLON\Pictures\p8.png)

``` r
sum(exp(3:7))
```

    ## [1] 1723.159

## ***9. Evaluar la siguiente productoria ***

![](D:\Users\MARLON\Pictures\P9.png)

``` r
prod((1/2)*log(1:10))
```

    ## [1] 0

## ***10. Realizar una funcion que permita calcular el Ã¡rea de una corona circular.***

![](D:\Users\MARLON\Pictures\P10.png)

``` r
Q <- function
(h,d,s,q){(h+d)/2*(S-(h+d)*sen(q))}
```

## ***11. Construya un vector cualquiera e invierte, es decir, que el primer elemento quede de ultimo, el segundo de penÃºltimo y asÃ­ sucesivamente. Compare su resultado con el de la Funcion rev***

``` r
C <- c(1:20)
sort(C,decreasing = T)
```

    ##  [1] 20 19 18 17 16 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1

``` r
rev(C)
```

    ##  [1] 20 19 18 17 16 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1

## ***12. Calcular lo siguiente***

![](D:\Users\MARLON\Pictures\P12.png)

``` r
N <- 10:100
O <- N^3
P <- 4*N^2
sum(O+P)
```

    ## [1] 26852735

## ***13. Calcular lo siguiente***

![](D:\Users\MARLON\Pictures\p13.png)

``` r
L <- 1:25
W <- (2^L)/L
D <- (3^L)/L^2
sum(W+D)
```

    ## [1] 2129170437

## ***14. Lea el siguiente archivo***

``` r
library(readr)
```

    ## Warning: package 'readr' was built under R version 4.1.2

``` r
Paises <- read_delim("D:/Users/MARLON/Downloads/Paises.csv", 
    delim = "\t", escape_double = FALSE, 
    trim_ws = TRUE)
```

    ## Rows: 107 Columns: 5

    ## -- Column specification --------------------------------------------------------
    ## Delimiter: "\t"
    ## chr (1): Pais
    ## dbl (4): poblacion, alfabetizacion, tasamortinf, PIB

    ## 
    ## i Use `spec()` to retrieve the full column specification for this data.
    ## i Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
View(Paises)
```

## 14.1. Calcular el nÃºmero de variables del dataset

``` r
ncol(Paises)
```

    ## [1] 5

## 14.2.¿Cuantos paises hay en el data.set?

``` r
length(Paises$Pais)
```

    ## [1] 107

## 14.3.¿Cual es el pais con mayor poblacion?

``` r
which.max(Paises$poblacion)
```

    ## [1] 25

``` r
Paises$Pais[25]
```

    ## [1] "China_"

``` r
Paises$Pais[which.max(Paises$poblacion)]
```

    ## [1] "China_"

## 14.4. ¿Cual es el pais con alfabetización más baja?

``` r
Paises$Pais[which.min(Paises$alfabetizacion)]
```

    ## [1] "Burkina_Faso"

## 15. En R hay unas bases de datos incluidas, una de ellas es la base de datos llamada mtcars. Para conocer las variables que estÃ¡n en mtcars usted puede escribir en la consola ?mtcars o tambien help(mtcars). De la base mtcars obtenga bases de datos que cumplan las siguientes condiciones.

``` r
?mtcars
```

    ## starting httpd help server ... done

``` r
mtcars
```

    ##                      mpg cyl  disp  hp drat    wt  qsec vs am gear carb
    ## Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
    ## Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
    ## Datsun 710          22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
    ## Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
    ## Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
    ## Valiant             18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
    ## Duster 360          14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
    ## Merc 240D           24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
    ## Merc 230            22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
    ## Merc 280            19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
    ## Merc 280C           17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
    ## Merc 450SE          16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
    ## Merc 450SL          17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
    ## Merc 450SLC         15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
    ## Cadillac Fleetwood  10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
    ## Lincoln Continental 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
    ## Chrysler Imperial   14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
    ## Fiat 128            32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
    ## Honda Civic         30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
    ## Toyota Corolla      33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
    ## Toyota Corona       21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
    ## Dodge Challenger    15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
    ## AMC Javelin         15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
    ## Camaro Z28          13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
    ## Pontiac Firebird    19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
    ## Fiat X1-9           27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
    ## Porsche 914-2       26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
    ## Lotus Europa        30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
    ## Ford Pantera L      15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
    ## Ferrari Dino        19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
    ## Maserati Bora       15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8
    ## Volvo 142E          21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2

``` r
View(mtcars)
```

## ***15.1. Autos que tengan un rendimiento menor a 18 millas por galon de combustible.***

``` r
which(mtcars$mpg<18)
```

    ##  [1]  7 11 12 13 14 15 16 17 22 23 24 29 31

``` r
row.names(mtcars)[which(mtcars$mpg<18)]
```

    ##  [1] "Duster 360"          "Merc 280C"           "Merc 450SE"         
    ##  [4] "Merc 450SL"          "Merc 450SLC"         "Cadillac Fleetwood" 
    ##  [7] "Lincoln Continental" "Chrysler Imperial"   "Dodge Challenger"   
    ## [10] "AMC Javelin"         "Camaro Z28"          "Ford Pantera L"     
    ## [13] "Maserati Bora"

## ***15.2. Autos que tengan 4 cilindros.***

``` r
row.names(mtcars)[which(mtcars$cyl==4)]
```

    ##  [1] "Datsun 710"     "Merc 240D"      "Merc 230"       "Fiat 128"      
    ##  [5] "Honda Civic"    "Toyota Corolla" "Toyota Corona"  "Fiat X1-9"     
    ##  [9] "Porsche 914-2"  "Lotus Europa"   "Volvo 142E"

## ***15.3. Autos que pesen libras de 2500 libras y tengan transmisiÃ³n manual.***

``` r
row.names(mtcars)[which(mtcars$wt>2.5 & mtcars$am == 1)]
```

    ## [1] "Mazda RX4"      "Mazda RX4 Wag"  "Ford Pantera L" "Ferrari Dino"  
    ## [5] "Maserati Bora"  "Volvo 142E"
