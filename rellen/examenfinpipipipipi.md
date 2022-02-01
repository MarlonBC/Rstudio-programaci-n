Examen
================
Marlon Gonzalo Briceño Cárdenas
31/1/2022

# Examen Final:

### 11.TC

``` r
Tiempodeconcentracion<-function(L,cotasup,cotainf){J<-(cotasup+cotainf)/2
  Tc<-0.3*(L/(J^(1/4)))^0.76
  return(Tc)}
Tiempodeconcentracion(1200,190,80)
```

    ## [1] 25.85447

### 12.Clasificacion del viento:

``` r
library(tidyverse)
```

    ## Warning: package 'tidyverse' was built under R version 4.1.2

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.1 --

    ## v ggplot2 3.3.5     v purrr   0.3.4
    ## v tibble  3.1.5     v dplyr   1.0.7
    ## v tidyr   1.1.4     v stringr 1.4.0
    ## v readr   2.1.0     v forcats 0.5.1

    ## Warning: package 'ggplot2' was built under R version 4.1.2

    ## Warning: package 'tidyr' was built under R version 4.1.2

    ## Warning: package 'readr' was built under R version 4.1.2

    ## Warning: package 'purrr' was built under R version 4.1.2

    ## Warning: package 'forcats' was built under R version 4.1.2

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
View(airquality)
velocidadesclas<-c(airquality %>% select(Wind))
velocidadesclas
```

    ## $Wind
    ##   [1]  7.4  8.0 12.6 11.5 14.3 14.9  8.6 13.8 20.1  8.6  6.9  9.7  9.2 10.9 13.2
    ##  [16] 11.5 12.0 18.4 11.5  9.7  9.7 16.6  9.7 12.0 16.6 14.9  8.0 12.0 14.9  5.7
    ##  [31]  7.4  8.6  9.7 16.1  9.2  8.6 14.3  9.7  6.9 13.8 11.5 10.9  9.2  8.0 13.8
    ##  [46] 11.5 14.9 20.7  9.2 11.5 10.3  6.3  1.7  4.6  6.3  8.0  8.0 10.3 11.5 14.9
    ##  [61]  8.0  4.1  9.2  9.2 10.9  4.6 10.9  5.1  6.3  5.7  7.4  8.6 14.3 14.9 14.9
    ##  [76] 14.3  6.9 10.3  6.3  5.1 11.5  6.9  9.7 11.5  8.6  8.0  8.6 12.0  7.4  7.4
    ##  [91]  7.4  9.2  6.9 13.8  7.4  6.9  7.4  4.6  4.0 10.3  8.0  8.6 11.5 11.5 11.5
    ## [106]  9.7 11.5 10.3  6.3  7.4 10.9 10.3 15.5 14.3 12.6  9.7  3.4  8.0  5.7  9.7
    ## [121]  2.3  6.3  6.3  6.9  5.1  2.8  4.6  7.4 15.5 10.9 10.3 10.9  9.7 14.9 15.5
    ## [136]  6.3 10.9 11.5  6.9 13.8 10.3 10.3  8.0 12.6  9.2 10.3 10.3 16.6  6.9 13.2
    ## [151] 14.3  8.0 11.5

``` r
  Velocidad_aire<-c(7.4 ,8.0 ,12.6,11.5 ,14.3 ,14.9 ,8.6 , 13.8,20.1 ,8.6 ,6.9 ,9.7 ,9.2, 10.9 ,13.2,11.5,12.0,18.4 ,11.5
  ,9.7  ,9.7, 16.6 , 9.7 ,12.0 ,16.6 ,14.9,  8.0 ,12.0, 14.9,  5.7,  7.4,  8.6 , 9.7, 16.1 , 9.2 , 8.6, 14.3,  9.7
  ,6.9, 13.8 ,11.5 ,10.9 , 9.2 , 8.0, 13.8, 11.5 ,14.9 ,20.7 , 9.2 ,11.5 ,10.3 , 6.3,  1.7,  4.6  ,6.3,  8.0,  8.0
 ,10.3, 11.5, 14.9 , 8.0 , 4.1,  9.2 , 9.2 ,10.9,  4.6, 10.9,  5.1 , 6.3 , 5.7,  7.4 , 8.6 ,14.3, 14.9, 14.9 ,14.3
  ,6.9 ,10.3 , 6.3 , 5.1, 11.5 , 6.9 , 9.7, 11.5,  8.6 , 8.0 , 8.6, 12.0 , 7.4 , 7.4,  7.4 , 9.2,  6.9 ,13.8 , 7.4
  ,6.9 , 7.4 , 4.6,  4.0 ,10.3 , 8.0,  8.6 ,11.5, 11.5 ,11.5 , 9.7, 11.5 ,10.3,  6.3 , 7.4, 10.9, 10.3, 15.5, 14.3,12.6 , 9.7 , 3.4 , 8.0 , 5.7 , 9.7 ,2.3 , 6.3 , 6.3 , 6.9 , 5.1  ,2.8 , 4.6  ,7.4 ,15.5, 10.9 ,10.3, 10.9,  9.7,14.9, 15.5 , 6.3 ,10.9 ,11.5 , 6.9 ,13.8, 10.3, 10.3 , 8.0 ,12.6,  9.2 ,10.3, 10.3 ,16.6 , 6.9 ,13.2, 14.3 , 8.0,11.5)
  for(x in Velocidad_aire){ if(1>x & x>=0){print("Calma")
}else if(3>x & x>=1){print("Ventolina")
}else if(6>x & x>=4){print("Flojito")
}else if(10>x & x>=7){print("Flojo")
}else if(16>x & x>=11){print("Moderado")
}else if(21>x & x>=17){print("Fresquito")
}else if(27>x & x>=22){print("Fresco")
}else if(28>x & x>=33){print("Frescachon")
}else if(40>x & x>=34){print("Temporal")
}else if(41>x & x>=47){print("Fuerte temporal")
}else if(55>x & x>=48){print("Temporal duro")
}else if(63>x & x>=56){print("Temporal muy duro")
}else{print("Temporal huracanado")}}
```

    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Fresquito"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Fresquito"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Temporal huracanado"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Flojito"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Fresquito"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Ventolina"
    ## [1] "Flojito"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Flojito"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Flojito"
    ## [1] "Temporal huracanado"
    ## [1] "Flojito"
    ## [1] "Temporal huracanado"
    ## [1] "Flojito"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Flojito"
    ## [1] "Moderado"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Flojito"
    ## [1] "Flojito"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Flojito"
    ## [1] "Flojo"
    ## [1] "Ventolina"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Flojito"
    ## [1] "Ventolina"
    ## [1] "Flojito"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Moderado"
    ## [1] "Temporal huracanado"
    ## [1] "Moderado"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Flojo"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Temporal huracanado"
    ## [1] "Moderado"
    ## [1] "Moderado"
    ## [1] "Flojo"
    ## [1] "Moderado"
