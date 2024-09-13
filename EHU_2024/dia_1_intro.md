# Ciencia de datos en R
<img src="images/Escuela%20de%20Doctorado_trilingue_positivo.png" />

Julen Astigarraga and Verónica Cruz-Alonso
13/09/2024

- [<span class="toc-section-number">1</span> Quiénes
  somos](#quiénes-somos)
- [<span class="toc-section-number">2</span>
  Presentación](#presentación)
- [<span class="toc-section-number">3</span> Estructura del
  curso](#estructura-del-curso)
- [<span class="toc-section-number">4</span> Dinámica del
  curso](#dinámica-del-curso)
- [<span class="toc-section-number">5</span> Introducción a la
  programación en R](#introducción-a-la-programación-en-r)
  - [<span class="toc-section-number">5.1</span> Objetivos](#objetivos)
  - [<span class="toc-section-number">5.2</span> Conceptos
    básicos](#conceptos-básicos)
  - [<span class="toc-section-number">5.3</span> Comenzando a trabajar
    en R](#comenzando-a-trabajar-en-r)
  - [<span class="toc-section-number">5.4</span> Instalar paquetes y
    cargarlos en R](#instalar-paquetes-y-cargarlos-en-r)
  - [<span class="toc-section-number">5.5</span> Creación de objetos en
    R](#creación-de-objetos-en-r)
  - [<span class="toc-section-number">5.6</span> Operaciones aritméticas
    (R como calculadora)](#operaciones-aritméticas-r-como-calculadora)
  - [<span class="toc-section-number">5.7</span> Tipos de
    objetos](#tipos-de-objetos)
  - [<span class="toc-section-number">5.8</span> Importar y exportar
    datos](#importar-y-exportar-datos)
  - [<span class="toc-section-number">5.9</span> Tidyverse](#tidyverse)
  - [<span class="toc-section-number">5.10</span> ¿Quién responde a mis
    dudas?](#quién-responde-a-mis-dudas)

## Quiénes somos

Coordinamos el [grupo de trabajo de
Ecoinformática](https://ecoinfaeet.github.io/website/index.html) de la
Asociación Española de Ecología Terrestre.

[Verónica
Cruz-Alonso](https://www.transmittingscience.com/instructors/veronica-cruz-alonso)
(veronica.cral@gmail.com)

<!--# ja: vero actualiza tu presentacion con el link que mas te mole -->

[Julen Astigarraga](https://github.com/Julenasti)
(julenastigarraga@gmail.com)

Y vosotros ¿quiénes sois?

<https://www.menti.com/al2sdohesi5u>

<!--# ja: habria que actualizar el menti -->

¿Y qué es R y de dónde procede?

[R es un lenguaje y un entorno para la computación estadística y
gráfica](https://www.r-project.org/about.html)

[Un poco de historia de R contada por Jumping
Rivers](https://www.jumpingrivers.com/misc/timeline/)

## Presentación

En este curso, exploraremos tanto los fundamentos teóricos como las
aplicaciones prácticas de la ciencia de datos en R. Abordaremos desde
tareas comunes que nos enfrentamos en nuestro día a día, como la
limpieza y transformación de datos, hasta nociones más avanzadas de
visualización y programación. Además, aprenderemos a utilizar
herramientas para generar documentos reproducibles y colaborativos.
Durante el curso, combinaremos la teoría con la práctica, adaptando las
lecciones a los problemas específicos de cada asistente, los cuales irán
evolucionando día a día.

El objetivo principal es garantizar que tanto aquellos con conocimientos
básicos en ciencia de datos como aquellos con un nivel más avanzado
puedan beneficiarse y llevar consigo nuevos aprendizajes al finalizar el
curso.

<!--# ja: quizas se podria modificar un poco la figura dando un color mas clarito a modelizar pq no lo vamos a ver en este curso -->
![](images/datascience.png)
<!--# ja: modificar la estructura del primer dia añadiendo lo que vamos a ver en el script de introduccion -->

## Estructura del curso

<table>
<colgroup>
<col style="width: 58%" />
<col style="width: 41%" />
</colgroup>
<thead>
<tr class="header">
<th>Bloques</th>
<th>Contenido</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Organizar datos: el día a día</td>
<td><p>Introducción a la programación en R</p>
<p>Importar</p>
<p>Explorar</p>
<p>Limpiar</p>
<p>Transformar</p>
<p>Manejar</p></td>
</tr>
<tr class="even">
<td>Visualización: contando historias</td>
<td><p>Fundamentos de visualización</p>
<p>Bases: gráficos por capas</p>
<p>Visualización avanzada</p>
<p>Introducción a la creación de mapas</p></td>
</tr>
<tr class="odd">
<td>Programación: aprendiendo a programar con funciones</td>
<td><p>Funciones</p>
<p>Estilo de código</p>
<p>Iteraciones</p>
<p>Programación funcional</p></td>
</tr>
<tr class="even">
<td>Comunicación: generando documentos reproducibles</td>
<td><p>Introducción a R Markdown</p>
<p>Introducción a Quarto</p>
<p>R Markdown vs Quarto</p>
<p>Trabajos reproducibles</p></td>
</tr>
<tr class="odd">
<td>Colaboración: trabajando en equipo</td>
<td><p>Introducción a Git</p>
<p>Introducción a GitHub</p>
<p>Flujo de trabajo en Git y GitHub</p>
<p>Trabajos colaborativos</p></td>
</tr>
</tbody>
</table>

## Dinámica del curso

Cada día combinaremos teoría con ejercicios e, idealmente, el cuarto y
quinto día tendremos tiempo para que cada uno trabaje con sus propios
datos. Todos los apuntes y ejercicios resueltos estarán disponibles en
el [repositorio de GitHub del
curso](https://github.com/DatSciR/ciencia_datos). Si alguien tiene
alguna duda o sugerencia, nos puede contactar por correo electrónico o
publicarlo en las [discusiones del repositorio de
GitHub](https://github.com/DatSciR/ciencia_datos/discussions/2) ¡así
aprenderemos entre todos! 😉

## Introducción a la programación en R

<img src="images/e684f0da-13b1-4d00-ab25-37814e79ee1e.png" width="362"
alt="El proceso de aprendizaje en R, por Allison Horst. https://allisonhorst.com/everything-else" />

### Objetivos

- Aprender las bases de la programación en R

- Aprender funciones básicas que nos permitan importar, explorar,
  limpiar, transformar y manejar datos

- Aprender estilos de código que facilitan su comprensión (📝)

<!--# ja: sugerencia a valorar (not sure) poner todos los principales objetivos de cada dia. por ahora me ha ayudado a estructurar cada dia. y terminar con algunas refs interesantes que ya las tenemos. he puesto algunos al final del dia_1_organizando_datos-->

### Conceptos básicos

- R: lenguaje de programación dinámico (se interpreta el código en el
  momento que se ejecuta).

- RStudio: entorno de desarrollo integrado para programar en R. Tiene
  cuatro zonas diferenciadas: el editor de código, la consola (donde se
  ejecuta el código), el navegador del espacio de trabajo (con el
  entorno –*environment-* y el historial de comandos) y el mix de abajo
  a la derecha (Archivos, Gráficos, Paquetes, Ayuda).

- Objetos: cualquier elemento almacenado con un nombre específico.
  Pueden ser de muchos tipos: `numeric`, `integer`, `logical`,
  `data.frame`, `SpatVector`, etc.

- Funciones: objetos de R que toman un vector de entrada y dan como
  resultado otro vector haciendo una acción concreta (funcionalidad
  específica). Son los *bloques de construcción* fundamentales en
  cualquier script de R que es un lenguaje funcional.

![](images/function.png)

> Para comprender la computación en R, resultan útiles dos lemas:
>
> \- Todo lo que existe es un objeto.
>
> \- Todo lo que sucede es una llamada a función.
>
> — John Chambers ([Advanced R](https://adv-r.hadley.nz/index.html))

- Paquetes o librerias: contienen funciones reutilizables, documentación
  sobre cómo usarlas y datos de ejemplo. Son las unidades fundamentales
  de código reproducible en R.

- CRAN: the Comprehensive R Archive Network.

### Comenzando a trabajar en R

El directorio de
trabajo…<!--# ja: añadir definicion de directorio de trabajo-->

``` r
getwd() # saber directorio de trabajo 
setwd("C:/Users/veruk/Desktop/Disco/curso_ciencia_datos") # ojo con la ruta / o \\
```

De todas formas, no es recomendable establecer el directorio de trabajo
manualmente porque el trabajo deja de ser reproducible. Mejor crear
desde el principio un proyecto donde se guarden todos los datos de
entrada y resultados del script. Al abrir el proyecto, se sincroniza con
pestaña Files.

Para crear un proyecto: Archivo `->` Nuevo proyecto

#### Ejercicio

Crea un proyecto para el curso de de ciencia de datos

### Instalar paquetes y cargarlos en R

Ejecuto un comando con CTRL + ENTER (CTRL + R)

``` r
# install.packages("tidyverse", dep = T) # dep = T significa instalar dependencias
library(tidyverse)
```

    ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
    ✔ dplyr     1.1.4     ✔ readr     2.1.5
    ✔ forcats   1.0.0     ✔ stringr   1.5.1
    ✔ ggplot2   3.5.1     ✔ tibble    3.2.1
    ✔ lubridate 1.9.3     ✔ tidyr     1.3.1
    ✔ purrr     1.0.2     
    ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ✖ dplyr::filter() masks stats::filter()
    ✖ dplyr::lag()    masks stats::lag()
    ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors

### Creación de objetos en R

``` r
x <- 4.5 # shortcut ALT + "-"
y <- "objeto" # si el objeto no es numérico, usar comillas
class(x) # función para ver de que clase es nuestro objeto class(y)
```

    [1] "numeric"

``` r
x # Llamar al vector para saber su valor
```

    [1] 4.5

``` r
y
```

    [1] "objeto"

📝Los nombre de los objetos deben ser descriptivos y no pueden contener
símbolos especiales (`^`, `!`, `$`, `@`, `+`, `-`, `/`, `*`).

📝R es sensible a las mayúsculas. Mejor no usarlas.

### Operaciones aritméticas (R como calculadora)

``` r
5 + 6
```

    [1] 11

``` r
5 * 6
```

    [1] 30

``` r
60 / 4
```

    [1] 15

``` r
5 + 4 - 2
```

    [1] 7

``` r
5 + 4 * 5
```

    [1] 25

``` r
(5 + 4) * 5
```

    [1] 45

``` r
log(10) # logaritmo neperiano 
```

    [1] 2.302585

``` r
log10(10) 
```

    [1] 1

``` r
exp(1) 
```

    [1] 2.718282

``` r
3 ^ 2 
```

    [1] 9

``` r
3 ^ 2 / 3 
```

    [1] 3

``` r
sqrt(16) 
```

    [1] 4

``` r
pi 
```

    [1] 3.141593

``` r
sin(pi / 2) # en radianes 
```

    [1] 1

``` r
cos(pi / 2)
```

    [1] 6.123032e-17

``` r
tan(pi / 2)
```

    [1] 1.633124e+16

``` r
asin(1) 
```

    [1] 1.570796

``` r
asin(1) * 2
```

    [1] 3.141593

``` r
asin(1) * 2 - pi
```

    [1] 0

``` r
acos(1)
```

    [1] 0

### Tipos de objetos

<!--# ja: añadir definicion de cada tipo de objeto o link a una definicion? mira como lo he hecho en el dia_1_organizando_datos por si te mola-->

#### Vectores

``` r
v1 <- c(2.4, 4, 6, 3.2) # si quiero asignar mas de un valor uso "c" (concatenar) 
v1 
```

    [1] 2.4 4.0 6.0 3.2

``` r
v1 * 100 # puedo operar con los vectores 
```

    [1] 240 400 600 320

``` r
log(v1)
```

    [1] 0.8754687 1.3862944 1.7917595 1.1631508

``` r
v2 <- c(1, 3, 4, 8) # pero también entre vectores 
v1 + v2
```

    [1]  3.4  7.0 10.0 11.2

``` r
v3 <- v1 - v2 
v3
```

    [1]  1.4  1.0  2.0 -4.8

``` r
mean(x = v2) # funciones ya programadas 
```

    [1] 4

``` r
sd(v2) 
```

    [1] 2.94392

``` r
length(v2) # n vector 
```

    [1] 4

``` r
max(v2) 
```

    [1] 8

``` r
min(v2)
```

    [1] 1

``` r
# ?mean

# funciones que facilitan la creación de vectores
v4 <- rep(x = 1, times = 4) 
v4 
```

    [1] 1 1 1 1

``` r
v5 <- 1:10 # dos puntos de a a b 
v5 
```

     [1]  1  2  3  4  5  6  7  8  9 10

``` r
v6 <- seq(from = 1, to = 20, by = 2) 
v6
```

     [1]  1  3  5  7  9 11 13 15 17 19

``` r
v7 <- c(v5, v6) 
v7
```

     [1]  1  2  3  4  5  6  7  8  9 10  1  3  5  7  9 11 13 15 17 19

``` r
v8 <- c(v5, rep(0, 3), v6)
v8
```

     [1]  1  2  3  4  5  6  7  8  9 10  0  0  0  1  3  5  7  9 11 13 15 17 19

<!--# ja: si el nivel no es muy bajo podemos pasar estos ejercicios. tambien para que nos de tiempo a ver todo lo que queremos ver el primer dia-->

#### Ejercicio

- Elije un número y multiplicalo por 3

- Crea un objeto que contenga 100 valores entre 1900 y 2000

- Suma un número a tu objeto

- Multiplica tu objeto por sí mismo

- Crea un único objeto que contenga el número 5 repetido 9 veces junto
  con una secuencia de 5 a 50 cada 5 elementos

- ¿Cuál es la longitud del objeto anterior?

##### Más estrategias para crear vectores

``` r
rep(x = 1, times = 4) 
```

    [1] 1 1 1 1

``` r
rep(1:4, times = 2) 
```

    [1] 1 2 3 4 1 2 3 4

``` r
rep(1:4, each = 2) 
```

    [1] 1 1 2 2 3 3 4 4

``` r
rep(1:4, times = 1:4)
```

     [1] 1 2 2 3 3 3 4 4 4 4

``` r
rep(x = c("gato", "perro", "pez"), times = c(5, 3, 1))
```

    [1] "gato"  "gato"  "gato"  "gato"  "gato"  "perro" "perro" "perro" "pez"  

``` r
rnorm(10, mean = 4, sd = 2.2)
```

     [1] 3.9682389 1.3442097 2.6542777 0.5659517 0.5930088 5.3282241 1.2968914
     [8] 2.5171659 1.2502875 4.5272182

#### Matrices

``` r
mivector <- sample(x = 1:10, size = 1000, replace = T) # sample: función para crear numeros aleatorios 
mimatriz <- matrix(mivector, nrow = 100, ncol = 10) # matrix: función para convertir vector en matriz. matrix va a rellenar por columnas por defecto
str(mivector) # mostrar estructura datos 
```

     int [1:1000] 8 3 5 2 4 1 4 4 4 10 ...

``` r
str(mimatriz)
```

     int [1:100, 1:10] 8 3 5 2 4 1 4 4 4 10 ...

``` r
summary(mivector) # resumen de los datos 
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      1.000   3.000   5.000   5.444   8.000  10.000 

``` r
summary(mimatriz)
```

           V1              V2              V3              V4       
     Min.   : 1.00   Min.   : 1.00   Min.   : 1.00   Min.   : 1.00  
     1st Qu.: 3.00   1st Qu.: 3.00   1st Qu.: 3.00   1st Qu.: 4.00  
     Median : 5.00   Median : 6.00   Median : 6.00   Median : 6.00  
     Mean   : 5.24   Mean   : 5.63   Mean   : 5.77   Mean   : 5.75  
     3rd Qu.: 8.00   3rd Qu.: 8.00   3rd Qu.: 9.00   3rd Qu.: 8.00  
     Max.   :10.00   Max.   :10.00   Max.   :10.00   Max.   :10.00  
           V5              V6              V7              V8       
     Min.   : 1.00   Min.   : 1.00   Min.   : 1.00   Min.   : 1.00  
     1st Qu.: 2.75   1st Qu.: 3.00   1st Qu.: 3.00   1st Qu.: 3.00  
     Median : 6.00   Median : 6.00   Median : 6.00   Median : 5.00  
     Mean   : 5.45   Mean   : 5.34   Mean   : 5.42   Mean   : 5.26  
     3rd Qu.: 8.00   3rd Qu.: 8.00   3rd Qu.: 8.00   3rd Qu.: 8.00  
     Max.   :10.00   Max.   :10.00   Max.   :10.00   Max.   :10.00  
           V9             V10       
     Min.   : 1.00   Min.   : 1.00  
     1st Qu.: 3.00   1st Qu.: 3.00  
     Median : 5.00   Median : 5.00  
     Mean   : 5.44   Mean   : 5.14  
     3rd Qu.: 8.00   3rd Qu.: 8.00  
     Max.   :10.00   Max.   :10.00  

``` r
a <- c(1, 2, 3, 4) 
b <- c(1, 2, 3, 4) 
d <- c("hi", "hola", "hola", "hi")
mimatriz_num <- matrix(c(a, b), nrow = 4, ncol = 2) 
mimatriz_num
```

         [,1] [,2]
    [1,]    1    1
    [2,]    2    2
    [3,]    3    3
    [4,]    4    4

``` r
mimatriz_car <- matrix(c(a, b, d), nrow = 4, ncol = 3) 
mimatriz_car
```

         [,1] [,2] [,3]  
    [1,] "1"  "1"  "hi"  
    [2,] "2"  "2"  "hola"
    [3,] "3"  "3"  "hola"
    [4,] "4"  "4"  "hi"  

``` r
summary(mimatriz_num) 
```

           V1             V2      
     Min.   :1.00   Min.   :1.00  
     1st Qu.:1.75   1st Qu.:1.75  
     Median :2.50   Median :2.50  
     Mean   :2.50   Mean   :2.50  
     3rd Qu.:3.25   3rd Qu.:3.25  
     Max.   :4.00   Max.   :4.00  

``` r
summary(mimatriz_car)
```

          V1                 V2                 V3           
     Length:4           Length:4           Length:4          
     Class :character   Class :character   Class :character  
     Mode  :character   Mode  :character   Mode  :character  

#### Bases de datos (data frames)

``` r
a <- c(1, 2, 3, 4) 
b <- c(1, 2, 3, 4) 
d <- c("hi", "hola", "hola", "hi")
midataframe <- data.frame(mivariable1 = a, mivariable2 = b, mivariable3 = d)
str(midataframe) 
```

    'data.frame':   4 obs. of  3 variables:
     $ mivariable1: num  1 2 3 4
     $ mivariable2: num  1 2 3 4
     $ mivariable3: chr  "hi" "hola" "hola" "hi"

``` r
summary(midataframe) 
```

      mivariable1    mivariable2   mivariable3       
     Min.   :1.00   Min.   :1.00   Length:4          
     1st Qu.:1.75   1st Qu.:1.75   Class :character  
     Median :2.50   Median :2.50   Mode  :character  
     Mean   :2.50   Mean   :2.50                     
     3rd Qu.:3.25   3rd Qu.:3.25                     
     Max.   :4.00   Max.   :4.00                     

``` r
# View(midataframe)
# un tibble es un data.frame de tidyverse, con características mejoradas
mitibble <- tibble(mivariable1 = a, mivariable2 = b, mivariable3 = d)
str(mitibble) 
```

    tibble [4 × 3] (S3: tbl_df/tbl/data.frame)
     $ mivariable1: num [1:4] 1 2 3 4
     $ mivariable2: num [1:4] 1 2 3 4
     $ mivariable3: chr [1:4] "hi" "hola" "hola" "hi"

``` r
str(midataframe) 
```

    'data.frame':   4 obs. of  3 variables:
     $ mivariable1: num  1 2 3 4
     $ mivariable2: num  1 2 3 4
     $ mivariable3: chr  "hi" "hola" "hola" "hi"

``` r
summary(mitibble) 
```

      mivariable1    mivariable2   mivariable3       
     Min.   :1.00   Min.   :1.00   Length:4          
     1st Qu.:1.75   1st Qu.:1.75   Class :character  
     Median :2.50   Median :2.50   Mode  :character  
     Mean   :2.50   Mean   :2.50                     
     3rd Qu.:3.25   3rd Qu.:3.25                     
     Max.   :4.00   Max.   :4.00                     

``` r
summary(midataframe) 
```

      mivariable1    mivariable2   mivariable3       
     Min.   :1.00   Min.   :1.00   Length:4          
     1st Qu.:1.75   1st Qu.:1.75   Class :character  
     Median :2.50   Median :2.50   Mode  :character  
     Mean   :2.50   Mean   :2.50                     
     3rd Qu.:3.25   3rd Qu.:3.25                     
     Max.   :4.00   Max.   :4.00                     

``` r
mitibble
```

    # A tibble: 4 × 3
      mivariable1 mivariable2 mivariable3
            <dbl>       <dbl> <chr>      
    1           1           1 hi         
    2           2           2 hola       
    3           3           3 hola       
    4           4           4 hi         

``` r
midataframe
```

      mivariable1 mivariable2 mivariable3
    1           1           1          hi
    2           2           2        hola
    3           3           3        hola
    4           4           4          hi

#### Listas

``` r
e <- c(TRUE, TRUE, TRUE, FALSE, FALSE)
milista <- list(a, b, d, e)
milista 
```

    [[1]]
    [1] 1 2 3 4

    [[2]]
    [1] 1 2 3 4

    [[3]]
    [1] "hi"   "hola" "hola" "hi"  

    [[4]]
    [1]  TRUE  TRUE  TRUE FALSE FALSE

``` r
str(milista) 
```

    List of 4
     $ : num [1:4] 1 2 3 4
     $ : num [1:4] 1 2 3 4
     $ : chr [1:4] "hi" "hola" "hola" "hi"
     $ : logi [1:5] TRUE TRUE TRUE FALSE FALSE

``` r
summary(milista)
```

         Length Class  Mode     
    [1,] 4      -none- numeric  
    [2,] 4      -none- numeric  
    [3,] 4      -none- character
    [4,] 5      -none- logical  

``` r
milista2 <- list(a, b, d, e, mivector, mimatriz, midataframe)
str(milista2)
```

    List of 7
     $ : num [1:4] 1 2 3 4
     $ : num [1:4] 1 2 3 4
     $ : chr [1:4] "hi" "hola" "hola" "hi"
     $ : logi [1:5] TRUE TRUE TRUE FALSE FALSE
     $ : int [1:1000] 8 3 5 2 4 1 4 4 4 10 ...
     $ : int [1:100, 1:10] 8 3 5 2 4 1 4 4 4 10 ...
     $ :'data.frame':   4 obs. of  3 variables:
      ..$ mivariable1: num [1:4] 1 2 3 4
      ..$ mivariable2: num [1:4] 1 2 3 4
      ..$ mivariable3: chr [1:4] "hi" "hola" "hola" "hi"

##### Acceder a elementos dentro de los objetos con R base

``` r
mivector 
```

       [1]  8  3  5  2  4  1  4  4  4 10  8  2 10  2  8  5  4  1  9  3  8  2  8  7
      [25] 10  7  9  8  6  6  7  9  2  5  5  7  8  6  4  8  3  2  4  8  6  5  5  7
      [49]  5 10  3  5  5  2  6  4  2  5  1  7  1  4  5  8  3  3  2  9  1  2  9  2
      [73]  1  8  6 10  4  2  5  3  4  7  8  1  9  7  1 10 10  7  1  4  5  3  9  4
      [97]  3  8  3  8  3  5  6  8  5  3  1  4  2  3  1 10  9  4 10  9  7  4  7  4
     [121]  3  7  8  7 10  3  7 10  9 10  6  2  1  9  7  7  8  8  2  3  3  8  8  4
     [145] 10  9  1 10  9  3  2  3 10  6 10  7  4  7  1  7  8 10  1 10  2  8  2  4
     [169] 10  9  8  2  4  3  9  8  1  3  1  6  1  5 10  1  6  5  4  5 10  5  2  4
     [193]  2  5  1  7  1  8  9  9  7  9 10  1  7  7  8  5  2  1  9 10  2 10  7  7
     [217]  2 10 10  7  4  5  5 10  2  9  6  8  9  9  2  9  7  9  6  2  9  1  2  2
     [241]  3  7  2  3  5  6  9  3  8  4  6  6  3  1  7  3  8  7  1  6  7 10  6  4
     [265]  8  6  1  5  4  9  5  2  1  5  8  6  4  7  1  9  1  7  3  3 10  5  5 10
     [289]  9  9  9  6  1 10 10  5  2  4  5 10  9  5 10  4  5 10  7  3  2  2  1  3
     [313]  8 10  6  8  7 10  1  5  2  3  5  8  8  7  4  7  3  7  8  7  5  7  8  4
     [337]  1  5  2  7  2  9  6  1  7  6  8  4  5  6  6  5  4  3  9  9 10  1  8  9
     [361] 10  4  3  7  6  3  5  7  7  7  7 10  1  4  4  5 10  9  5  2  5  5  6  8
     [385]  9  6  5  5  3  3  9  8  9  7 10 10  1  5  2  1  2  1  1  5  4  1  7 10
     [409]  7  6  7  1  8  7  6  3  9  6  9  7  1  2  9  5  9  4  1  2  6  6  6  2
     [433]  1  2  3  6  3  1  9  3  2 10  2  7  9  8  9  8  9 10  4  5  7  8  8  2
     [457]  2  8 10  9  6  9  9  7  6  3  1 10  8  8  7  4  4  9  8  2  3  3  5  9
     [481]  8  2  6  6 10  1  1  7  1  5  9  5  4  7  6 10  4  2  4  1  2  4  2  1
     [505] 10  1  7  7  4  8  3  1  7  1  2  6  3  9  7  8  6  2  5  9  2  8  6  3
     [529]  2  1  1  6  7  1  7  9  3  3  6  2  4  5 10  5  7  3 10  5  9  6  4  7
     [553]  3  6  9  7  8  7 10  1  4  3  9  2  2  6  4 10 10  2  5  8  1  3  6  6
     [577]  9  8  8  5  1  2  4  8  6  9  3  9  9  5  2  9  2  6  3  4  9  8  9  7
     [601]  7  4  4  8  6  1  1  1  4  5  2  4  6  8  1  9  9  3  6  3  4  7 10  4
     [625] 10  4  3  5  3  9  8  8  3  1  3  6  6  7  8 10  3  6  1  7 10  9  6  8
     [649]  9  6  7  5  5  1  2  6  3  1  5  6  2  8  1  6  6  8  7  6  6  2  4 10
     [673]  4  8  3  8  7  2  5  3  2  9  4  5  5 10 10  6  5  3  5  2  7 10  6  8
     [697]  8  6  6  2  1  5  6  4  9  7  3  4  8  7  6  3  1 10  1  6  4 10  6  5
     [721]  9  3  1 10  6  4  3  9  2  5  4  9  5  1  2 10  3  7  2  3  1  8  5  9
     [745]  9  1  1  2 10  5  9  5  5 10  4  3  6  5  9  3  9  4  2  3  9  4  8  1
     [769]  4  6  1 10  5  1  7 10 10  3  5  4  2  4  2  8  3  7  3  7  6  3 10  2
     [793]  2  5  2 10  5  9  7  9  8  9  5  4  4  8  1  5  9  3 10  2  9  2  7  8
     [817]  8  4  9  2  4  7  5  9  1  1  2  4  9  1  2  2  7 10  2  1  8  8  5  8
     [841]  8  2  4  6  9  9  3  2  9  3  2  4  2  3  8  3  2  5  5  9  3  5  4 10
     [865]  3  7  6  3  4  5  6  4  1  1  5  9  6  6  4  7  7  1  5  9  9  9  1  8
     [889]  9  2  6  7  5  9 10  2  6 10  9 10  8  5  2  5  5  5  6  8  3  8  7  2
     [913]  8  7  6  3  3  9  9  8  7  2  2  4  2  2  2  7  2  8  2  5  2  2  9  4
     [937]  3  3  4  1  2  2  1 10  8  1  9  3  3 10  5  4  9  4  6  4  4 10  2  6
     [961]  8  7  7  3  9  6  9  9  5  8  3 10  4  3  2  2  7  2 10  2 10  3  9  3
     [985]  9  7 10  4  6  5  1  1  2  3  4  3  8  6  7  4

``` r
mivector[505]
```

    [1] 10

``` r
mimatriz 
```

           [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
      [1,]    8    3    7    9    2    2    7    1    8     8
      [2,]    3    5    9    5    1    4    4    5    9     5
      [3,]    5    6   10   10    1    2    4    6    5     2
      [4,]    2    8    1    4    5    1    8    4    4     5
      [5,]    4    5    7    5    4   10    6    9    4     5
      [6,]    1    3    7   10    1    1    1    7    8     5
      [7,]    4    1    8    7    7    7    1    3    1     6
      [8,]    4    4    5    3   10    7    1    4    5     8
      [9,]    4    2    2    2    7    4    4    8    9     3
     [10,]   10    3    1    2    6    8    5    7    3     8
     [11,]    8    1    9    1    7    3    2    6   10     7
     [12,]    2   10   10    3    1    1    4    3    2     2
     [13,]   10    9    2    8    8    7    6    1    9     8
     [14,]    2    4   10   10    7    1    8   10    2     7
     [15,]    8   10    7    6    6    2    1    1    7     6
     [16,]    5    9    7    8    3    6    9    6    8     3
     [17,]    4    7    2    7    9    3    9    4    8     3
     [18,]    1    4   10   10    6    9    3   10    4     9
     [19,]    9    7   10    1    9    7    6    6    9     9
     [20,]    3    4    7    5    7    8    3    5    2     8
     [21,]    8    3    4    2    1    6    4    9    4     7
     [22,]    2    7    5    3    2    2    7    3    7     2
     [23,]    8    8    5    5    9    5   10    1    5     2
     [24,]    7    7   10    8    5    9    4   10    9     4
     [25,]   10   10    2    8    9    2   10    6    1     2
     [26,]    7    3    9    7    4    8    4    4    1     2
     [27,]    9    7    6    4    1    6    3    3    2     2
     [28,]    8   10    8    7    2    3    5    9    4     7
     [29,]    6    9    9    3    6    2    3    2    9     2
     [30,]    6   10    9    7    6    1    9    5    1     8
     [31,]    7    6    2    8    6    1    8    4    2     2
     [32,]    9    2    9    7    2    6    8    9    2     5
     [33,]    2    1    7    5    1    7    3    5    7     2
     [34,]    5    9    9    7    2    1    1    1   10     2
     [35,]    5    7    6    8    3    7    3    2    2     9
     [36,]    7    7    2    4    6    9    6   10    1     4
     [37,]    8    8    9    1    3    3    6    3    8     3
     [38,]    6    8    1    5    1    3    7    7    8     3
     [39,]    4    2    2    2    9    6    8    2    5     4
     [40,]    8    3    2    7    3    2   10    3    8     1
     [41,]    3    3    3    2    2    4    3    1    8     2
     [42,]    2    8    7    9   10    5    6    8    2     2
     [43,]    4    8    2    6    2   10    1    5    4     1
     [44,]    8    4    3    1    7    5    7    9    6    10
     [45,]    6   10    5    7    9    7   10    9    9     8
     [46,]    5    9    6    6    8    3    9    1    9     1
     [47,]    5    1    9    8    9   10    6    1    3     9
     [48,]    7   10    3    4    8    5    8    2    2     3
     [49,]    5    9    8    5    9    9    9   10    9     3
     [50,]   10    3    4    6   10    6    6    5    3    10
     [51,]    3    2    6    6    4    4    7    9    2     5
     [52,]    5    3    6    5    5    7    5    5    4     4
     [53,]    5   10    3    4    7    3    5    5    2     9
     [54,]    2    6    1    3    8    6    1   10    3     4
     [55,]    6   10    7    9    8    9    2    4    8     6
     [56,]    4    7    3    9    2    7    6    3    3     4
     [57,]    2    4    8   10    2    8    3    6    2     4
     [58,]    5    7    7    1    8    7    1    5    5    10
     [59,]    1    1    1    8   10   10    5    9    5     2
     [60,]    7    7    6    9    9    1    6    3    9     6
     [61,]    1    8    7   10    6    4    2    9    3     8
     [62,]    4   10   10    4    9    3    8    4    5     7
     [63,]    5    1    6    3    9    9    1    2    4     7
     [64,]    8   10    4    7    7    2    6    3   10     3
     [65,]    3    2    8    6    6    2    6    9    3     9
     [66,]    3    8    6    3    3    6    8    4    7     6
     [67,]    2    2    1    5    1    4    7    8    6     9
     [68,]    9    4    5    7   10   10    6    1    3     9
     [69,]    1   10    4    7    8   10    6    4    4     5
     [70,]    2    9    9    7    8    2    2    6    5     8
     [71,]    9    8    5    7    7    5    4    1    6     3
     [72,]    2    2    2   10    4    8   10   10    4    10
     [73,]    1    4    1    1    4    1    4    5    1     4
     [74,]    8    3    5    4    9    3    8    1    1     3
     [75,]    6    9    8    4    8    6    3    7    5     2
     [76,]   10    8    6    5    2    6    8   10    9     2
     [77,]    4    1    4   10    3    9    7   10    6     7
     [78,]    2    3    7    9    3    8    2    3    6     2
     [79,]    5    1    1    5    5    8    5    5    4    10
     [80,]    3    6    9    2    9    5    3    4    7     2
     [81,]    4    1    1    5    8    1    2    2    7    10
     [82,]    7    5    7    5    2    2    9    4    1     3
     [83,]    8   10    3    6    6    4    4    2    5     9
     [84,]    1    1    3    8    6    8    5    8    9     3
     [85,]    9    6   10    9   10    6    5    3    9     9
     [86,]    7    5    5    6    1    9   10    7    9     7
     [87,]    1    4    5    5    1    3   10    3    1    10
     [88,]   10    5   10    5    7    9    6    7    8     4
     [89,]   10   10    9    3    1    9    5    6    9     6
     [90,]    7    5    9    3    5    5    3    3    2     5
     [91,]    1    2    9    9    9    2    5   10    6     1
     [92,]    4    4    6    8    5    9    2    2    7     1
     [93,]    5    2    1    9    4    2    7    2    5     2
     [94,]    3    5   10    7    7    6   10    5    9     3
     [95,]    9    1   10   10    6    3    6    2   10     4
     [96,]    4    7    5   10   10    4    8   10    2     3
     [97,]    3    1    2    1    4    9    8    5    6     8
     [98,]    8    8    4    5    2    8    6    9   10     6
     [99,]    3    9    5    2    4    9    6    7    9     7
    [100,]    8    9   10    1    1    7    2    9   10     4

``` r
mimatriz[20, 9] # [filas, columnas] 
```

    [1] 2

``` r
mimatriz[20, ] # selecciono todas las columnas 
```

     [1] 3 4 7 5 7 8 3 5 2 8

``` r
mimatriz[, 9] # selecciono todas las filas
```

      [1]  8  9  5  4  4  8  1  5  9  3 10  2  9  2  7  8  8  4  9  2  4  7  5  9  1
     [26]  1  2  4  9  1  2  2  7 10  2  1  8  8  5  8  8  2  4  6  9  9  3  2  9  3
     [51]  2  4  2  3  8  3  2  5  5  9  3  5  4 10  3  7  6  3  4  5  6  4  1  1  5
     [76]  9  6  6  4  7  7  1  5  9  9  9  1  8  9  2  6  7  5  9 10  2  6 10  9 10

``` r
midataframe 
```

      mivariable1 mivariable2 mivariable3
    1           1           1          hi
    2           2           2        hola
    3           3           3        hola
    4           4           4          hi

``` r
midataframe[3, 3] 
```

    [1] "hola"

``` r
midataframe[3, "mivariable3"] 
```

    [1] "hola"

``` r
midataframe[, "mivariable3"] 
```

    [1] "hi"   "hola" "hola" "hi"  

``` r
midataframe$mivariable3
```

    [1] "hi"   "hola" "hola" "hi"  

``` r
milista 
```

    [[1]]
    [1] 1 2 3 4

    [[2]]
    [1] 1 2 3 4

    [[3]]
    [1] "hi"   "hola" "hola" "hi"  

    [[4]]
    [1]  TRUE  TRUE  TRUE FALSE FALSE

``` r
milista[[4]] 
```

    [1]  TRUE  TRUE  TRUE FALSE FALSE

``` r
milista[[4]][4]
```

    [1] FALSE

#### Ejercicio

- Crea una lista que contenga 2 `data.frames` con 2 variables cada uno
  (`variable1` y `variable2`) y 10 observaciones por variable.

- Accede a la octava observación de variable2 de cada data.frame

### Importar y exportar datos

Muy útil cuando organizamos los datos en R y queremos compartirlos.

<!--# ja: creo que por ahora haria todo con r base y una vez que quede esto claro nos metemos con tidyverse. lo leeria con tidyverse en el siguiente script: dia_1_organizando_datos-->

``` r
write_delim(x = mitibble, file = "misdatos.csv", delim = ",")
```

``` r
taludes <- read_delim(file = "DatosCursoR/taludes.csv", delim = ",")
```

Comprobar los datos

``` r
taludes 
str(taludes)
names(taludes) # nombre de las variables (columnas)
```

Uno de los problemas más comunes es que R no reconoce bien la naturaleza
de nuestra variable.

``` r
# aquí especificamos que Luz y Agua son factores:
taludes_bien <- read_delim(file = "DatosCursoR/taludes.csv", delim = ",", col_types = list(Luz = "f", Agua = "f"))
# para entender qué es un factor: https://es.r4ds.hadley.nz/15-factors.html
summary(taludes) 
summary(taludes_bien)
```

### Tidyverse

[*Tidyverse*](https://www.tidyverse.org/) es una colección de paquetes
(meta-paquete) de R. El núcleo contiene 8 paquetes principales (`readr`,
`tibble`, `dplyr`, `tidyr`, `stringr`, `forcats`, `ggplot2` y `purrr`),
que comparten el mismo diseño, así como una gramática y estructura de
datos comunes. En el centro de la filosofía de tidyverse se encuentra la
noción de “datos ordenados” (*Tidy Data*). Hadley Wickham (principal
desarrollador de *tidyverse*) los define como “fáciles de manipular,
modelar y visualizar, y que tienen una estructura específica: cada
variable es una columna, cada observación es una fila y cada valor es
una celda”. Además de la estructura de los datos, tidyverse puede
considerarse un dialecto del lenguaje de programación R que discretiza
funciones amplias de R base (p. ej. merge) en diversas funciones
específicas (p. ej. `left_join`, `right_join`).

A continuación, se muestran cuatro principios básicos para una
introducción sencilla a este meta-paquete
(https://design.tidyverse.org/unifying.html):

- Centrado en humanos: tiene un diseño intuitivo que facilita su uso y
  accesibilidad para el usuario, estando diseñado específicamente para
  respaldar las actividades de un analista de datos humano.

- Consistencia: todos los paquetes están diseñados para trabajar con
  datos ordenados (*Tidy Data*), y las funciones de los paquetes tienen
  una nomenclatura común y congruente. Esto permite que un usuario que
  aprende sobre una función o paquete pueda aplicar ese conocimiento a
  otros, facilitando así la tarea de recordar y deducir código de manera
  más sencilla.

- Componiblidad: permite al usuario resolver problemas complejos
  dividiéndolos en pequeñas partes, que pueden combinarse utilizando el
  operador *pipe*, ya sea el del paquete `magrittr` (`%>%`) o el creado
  recientemente en R base (`|>`).

- Inclusividad: no se trata sólo de la colección de paquetes, sino
  también la comunidad de personas que los usan, basándose en la ayuda
  entre usuarios y generando un ambiente inclusivo. Dos ejemplos
  destacados de este último principio son la existencia de una guía de
  estilo para el flujo de trabajo y [escritura de
  código](https://style.tidyverse.org/index.html) o el desarrollo de un
  método específico para solicitar ayuda a la comunidad y obtener
  asesoramiento mediante ejemplos reproducibles (`reprex`).

![Esquema comparativo entre *tidyverse* y R base donde se muestra el
flujo de trabajo y funciones de ejemplo para cada paso de análisis de
datos desde su importación en R hasta la comunicación de los resultados
obtenidos. Extraido de [*Tidyverse: colección de paquetes de R para la
ciencia de
datos*](https://revistaecosistemas.net/index.php/ecosistemas/article/view/2745)](images/nota_workflow_v2_white.png)

💡Los dos operador *pipe* tienen pequeñas
[diferencias](https://www.tidyverse.org/blog/2023/04/base-vs-magrittr-pipe/)
pero en general el comportamiento es el mismo. La información sobre
*tidyverse* está extraida de la nota ecoinformática [*Tidyverse:
colección de paquetes de R para la ciencia de
datos*](https://revistaecosistemas.net/index.php/ecosistemas/article/view/2745).
Leer la nota para más información sobre *tidyverse* y diferencias con R
base.

``` r
mivector <- c(6, 4)
mean(mivector)
```

    [1] 5

``` r
mivector |> 
  mean() # CTRL + SHIFT + M para poner un pipe
```

    [1] 5

### ¿Quién responde a mis dudas?

- [RStudio User Guide](https://docs.posit.co/ide/user)

- [Posit Recipes](https://posit.cloud/learn/recipes) y en general [Posit
  Resources](https://posit.co/resources)

- [Página web de *tidyverse*](https://www.tidyverse.org)

- [Stack Overflow: plataforma de preguntas y respuestas para
  programadores profesionales y aficionados](https://stackoverflow.com)

- [Comunidad de RStudio/Posit](RStudio%20community)

- [GitHub copilot](https://github.com/features/copilot)

- [ChatGPT](https://chatgpt.com) y similares

- Slack del [Grupo de Ecoinformática de la
  AEET](https://ecoinfaeet.github.io/website/index.html)

- Para dudas relacionadas con errores de paquetes: repositorio de GitHub
  del paquete en cuestión (p. ej.
  <https://github.com/tidyverse/dplyr/issues>)

<!--# ja: si se te ocurren mas adelante! -->

------------------------------------------------------------------------

<details>
<summary>
Session Info
</summary>

``` r
Sys.time()
```

    [1] "2024-09-13 12:56:11 CEST"

``` r
sessionInfo()
```

    R version 4.4.1 (2024-06-14 ucrt)
    Platform: x86_64-w64-mingw32/x64
    Running under: Windows 10 x64 (build 19045)

    Matrix products: default


    locale:
    [1] LC_COLLATE=English_United Kingdom.utf8 
    [2] LC_CTYPE=English_United Kingdom.utf8   
    [3] LC_MONETARY=English_United Kingdom.utf8
    [4] LC_NUMERIC=C                           
    [5] LC_TIME=English_United Kingdom.utf8    

    time zone: Europe/Madrid
    tzcode source: internal

    attached base packages:
    [1] stats     graphics  grDevices utils     datasets  methods   base     

    other attached packages:
     [1] lubridate_1.9.3 forcats_1.0.0   stringr_1.5.1   dplyr_1.1.4    
     [5] purrr_1.0.2     readr_2.1.5     tidyr_1.3.1     tibble_3.2.1   
     [9] ggplot2_3.5.1   tidyverse_2.0.0

    loaded via a namespace (and not attached):
     [1] gtable_0.3.5      jsonlite_1.8.8    compiler_4.4.1    tidyselect_1.2.1 
     [5] scales_1.3.0      yaml_2.3.9        fastmap_1.2.0     R6_2.5.1         
     [9] generics_0.1.3    knitr_1.48        munsell_0.5.1     pillar_1.9.0     
    [13] tzdb_0.4.0        rlang_1.1.4       utf8_1.2.4        stringi_1.8.4    
    [17] xfun_0.45         timechange_0.3.0  cli_3.6.3         withr_3.0.0      
    [21] magrittr_2.0.3    digest_0.6.36     grid_4.4.1        rstudioapi_0.16.0
    [25] hms_1.1.3         lifecycle_1.0.4   vctrs_0.6.5       evaluate_0.24.0  
    [29] glue_1.7.0        fansi_1.0.6       colorspace_2.1-0  rmarkdown_2.27   
    [33] tools_4.4.1       pkgconfig_2.0.3   htmltools_0.5.8.1

</details>
