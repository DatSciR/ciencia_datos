# Ciencia de datos en R
<img src="images/Escuela%20de%20Doctorado_trilingue_positivo.png" />

Verónica Cruz-Alonso and Julen Astigarraga
24/09/2024

- [<span class="toc-section-number">1</span> Importar y renombrar
  datos](#importar-y-renombrar-datos)
  - [<span class="toc-section-number">1.1</span> Read_delim: leer datos
    desde fuera de R](#read_delim-leer-datos-desde-fuera-de-r)
  - [<span class="toc-section-number">1.2</span> Rename: cambiar nombres
    de variables
    (columnas)](#rename-cambiar-nombres-de-variables-columnas)
- [<span class="toc-section-number">2</span> Funciones básicas de
  filtrado y selección](#funciones-básicas-de-filtrado-y-selección)
  - [<span class="toc-section-number">2.1</span> Slice: filtrar filas
    según el índice
    numérico](#slice-filtrar-filas-según-el-índice-numérico)
  - [<span class="toc-section-number">2.2</span> Arrange: ordenar filas
    por los valores de una o más variables
    (columnas)](#arrange-ordenar-filas-por-los-valores-de-una-o-más-variables-columnas)
  - [<span class="toc-section-number">2.3</span> Filter: filtrar filas
    utilizando
    condiciones](#filter-filtrar-filas-utilizando-condiciones)
    - [<span class="toc-section-number">2.3.1</span>
      Ejercicio](#ejercicio)
  - [<span class="toc-section-number">2.4</span> Select: seleccionar
    columnas utilizando
    condiciones](#select-seleccionar-columnas-utilizando-condiciones)
    - [<span class="toc-section-number">2.4.1</span>
      Ejercicio](#ejercicio-1)
- [<span class="toc-section-number">3</span> Transformar los datos y
  calcular nuevas
  variables](#transformar-los-datos-y-calcular-nuevas-variables)
  - [<span class="toc-section-number">3.1</span> Mutate: crear,
    modificar o eliminar
    columnas](#mutate-crear-modificar-o-eliminar-columnas)
    - [<span class="toc-section-number">3.1.1</span>
      Ejercicio](#ejercicio-2)
  - [<span class="toc-section-number">3.2</span> Summarise y group by:
    generar un nuevo `data.frame` resumiendo cada grupo a una
    fila](#summarise-y-group-by-generar-un-nuevo-dataframe-resumiendo-cada-grupo-a-una-fila)
    - [<span class="toc-section-number">3.2.1</span>
      Ejercicio](#ejercicio-3)
  - [<span class="toc-section-number">3.3</span> Pivot: transformar
    datos a formato largo o
    ancho](#pivot-transformar-datos-a-formato-largo-o-ancho)
- [<span class="toc-section-number">4</span> Joins: unir
  data.frames](#joins-unir-dataframes)
- [<span class="toc-section-number">5</span> Write_delim: guardar
  datos](#write_delim-guardar-datos)
- [<span class="toc-section-number">6</span> Enlaces de
  interés](#enlaces-de-interés)

## Importar y renombrar datos

### [Read_delim](https://readr.tidyverse.org/reference/read_delim.html): leer datos desde fuera de R

``` r
library(tidyverse)

taludes <- read_delim(file = "taludes.csv", delim = ",")

taludes
```

    # A tibble: 91 × 3
       Biomasa Luz     Agua          
         <dbl> <chr>   <chr>         
     1    3.04 Nivel 1 Sequia estival
     2    3.57 Nivel 1 Sequia estival
     3    3.67 Nivel 1 Sequia estival
     4    4.59 Nivel 1 Sequia estival
     5    4.34 Nivel 1 Sequia estival
     6    2.25 Nivel 1 Sequia estival
     7    4.12 Nivel 1 Sequia estival
     8    2.45 Nivel 1 Sequia estival
     9    4.46 Nivel 1 Sequia estival
    10    3.51 Nivel 1 Sequia estival
    # ℹ 81 more rows

``` r
taludes_bien <- read_delim(file = "taludes.csv", 
  delim = ",", col_types = list(Luz = "f", Agua = "f"))

taludes_bien
```

    # A tibble: 91 × 3
       Biomasa Luz     Agua          
         <dbl> <fct>   <fct>         
     1    3.04 Nivel 1 Sequia estival
     2    3.57 Nivel 1 Sequia estival
     3    3.67 Nivel 1 Sequia estival
     4    4.59 Nivel 1 Sequia estival
     5    4.34 Nivel 1 Sequia estival
     6    2.25 Nivel 1 Sequia estival
     7    4.12 Nivel 1 Sequia estival
     8    2.45 Nivel 1 Sequia estival
     9    4.46 Nivel 1 Sequia estival
    10    3.51 Nivel 1 Sequia estival
    # ℹ 81 more rows

``` r
View(taludes_bien)
summary(taludes_bien)
```

        Biomasa           Luz                 Agua   
     Min.   :2.120   Nivel 1:30   Sequia estival:46  
     1st Qu.:3.531   Nivel 2:31   Lluvia estival:45  
     Median :4.053   Nivel 3:30                      
     Mean   :3.993                                   
     3rd Qu.:4.609                                   
     Max.   :5.347                                   

``` r
glimpse(taludes_bien)
```

    Rows: 91
    Columns: 3
    $ Biomasa <dbl> 3.039767, 3.573515, 3.669172, 4.592334, 4.337278, 2.254230, 4.…
    $ Luz     <fct> Nivel 1, Nivel 1, Nivel 1, Nivel 1, Nivel 1, Nivel 1, Nivel 1,…
    $ Agua    <fct> Sequia estival, Sequia estival, Sequia estival, Sequia estival…

### [Rename](https://dplyr.tidyverse.org/reference/rename.html): cambiar nombres de variables (columnas)

``` r
names(taludes_bien)
```

    [1] "Biomasa" "Luz"     "Agua"   

``` r
taludes_bien <- taludes_bien |>    
  rename(biomasa = Biomasa, # nombre nuevo = nombre viejo          
         nivel_luz = Luz, 
         agua_estival = Agua)
```

📝 Ajustar sangría de código: Ctrl + i; Reformatear código: Ctrl +
Shift + a

## Funciones básicas de filtrado y selección

### [Slice](https://dplyr.tidyverse.org/reference/slice.html): filtrar filas según el índice numérico

``` r
taludes_bien |> 
  slice(1) # shortcut para el pipe: CTRL + SHIFT + M 
```

    # A tibble: 1 × 3
      biomasa nivel_luz agua_estival  
        <dbl> <fct>     <fct>         
    1    3.04 Nivel 1   Sequia estival

``` r
taludes_bien |>
  slice(1, 5)
```

    # A tibble: 2 × 3
      biomasa nivel_luz agua_estival  
        <dbl> <fct>     <fct>         
    1    3.04 Nivel 1   Sequia estival
    2    4.34 Nivel 1   Sequia estival

``` r
taludes_bien |> 
  slice(1:6)
```

    # A tibble: 6 × 3
      biomasa nivel_luz agua_estival  
        <dbl> <fct>     <fct>         
    1    3.04 Nivel 1   Sequia estival
    2    3.57 Nivel 1   Sequia estival
    3    3.67 Nivel 1   Sequia estival
    4    4.59 Nivel 1   Sequia estival
    5    4.34 Nivel 1   Sequia estival
    6    2.25 Nivel 1   Sequia estival

``` r
taludes_bien |>
  slice(-c(1:5))
```

    # A tibble: 86 × 3
       biomasa nivel_luz agua_estival  
         <dbl> <fct>     <fct>         
     1    2.25 Nivel 1   Sequia estival
     2    4.12 Nivel 1   Sequia estival
     3    2.45 Nivel 1   Sequia estival
     4    4.46 Nivel 1   Sequia estival
     5    3.51 Nivel 1   Sequia estival
     6    3.49 Nivel 1   Sequia estival
     7    2.80 Nivel 1   Sequia estival
     8    3.91 Nivel 1   Sequia estival
     9    3.16 Nivel 1   Sequia estival
    10    3.81 Nivel 1   Sequia estival
    # ℹ 76 more rows

### [Arrange](https://dplyr.tidyverse.org/reference/arrange.html): ordenar filas por los valores de una o más variables (columnas)

``` r
taludes_bien |>
  arrange(biomasa)
```

    # A tibble: 91 × 3
       biomasa nivel_luz agua_estival  
         <dbl> <fct>     <fct>         
     1    2.12 Nivel 2   Lluvia estival
     2    2.25 Nivel 1   Sequia estival
     3    2.35 Nivel 3   Lluvia estival
     4    2.45 Nivel 1   Sequia estival
     5    2.49 Nivel 3   Lluvia estival
     6    2.54 Nivel 3   Lluvia estival
     7    2.70 Nivel 3   Lluvia estival
     8    2.73 Nivel 3   Lluvia estival
     9    2.80 Nivel 1   Sequia estival
    10    2.86 Nivel 3   Lluvia estival
    # ℹ 81 more rows

``` r
taludes_bien |> 
  arrange(desc(biomasa))
```

    # A tibble: 91 × 3
       biomasa nivel_luz agua_estival  
         <dbl> <fct>     <fct>         
     1    5.35 Nivel 3   Sequia estival
     2    5.30 Nivel 3   Sequia estival
     3    5.21 Nivel 1   Lluvia estival
     4    5.17 Nivel 2   Lluvia estival
     5    5.16 Nivel 1   Lluvia estival
     6    5.13 Nivel 2   Sequia estival
     7    5.10 Nivel 2   Lluvia estival
     8    5.06 Nivel 3   Sequia estival
     9    4.98 Nivel 2   Lluvia estival
    10    4.94 Nivel 1   Lluvia estival
    # ℹ 81 more rows

### [Filter](https://dplyr.tidyverse.org/reference/filter.html): filtrar filas utilizando condiciones

Se necesita un vector de filtrado que contenga valores lógicos
(TRUE/FALSE).

``` r
taludes_bien |>
  filter(nivel_luz == "Nivel 1") # filtrar por filas que cumplen un patrón 
```

    # A tibble: 30 × 3
       biomasa nivel_luz agua_estival  
         <dbl> <fct>     <fct>         
     1    3.04 Nivel 1   Sequia estival
     2    3.57 Nivel 1   Sequia estival
     3    3.67 Nivel 1   Sequia estival
     4    4.59 Nivel 1   Sequia estival
     5    4.34 Nivel 1   Sequia estival
     6    2.25 Nivel 1   Sequia estival
     7    4.12 Nivel 1   Sequia estival
     8    2.45 Nivel 1   Sequia estival
     9    4.46 Nivel 1   Sequia estival
    10    3.51 Nivel 1   Sequia estival
    # ℹ 20 more rows

``` r
taludes_bien |>
  filter(nivel_luz == "Nivel 1" & biomasa > 4) # combinar criterios: AND
```

    # A tibble: 16 × 3
       biomasa nivel_luz agua_estival  
         <dbl> <fct>     <fct>         
     1    4.59 Nivel 1   Sequia estival
     2    4.34 Nivel 1   Sequia estival
     3    4.12 Nivel 1   Sequia estival
     4    4.46 Nivel 1   Sequia estival
     5    4.73 Nivel 1   Lluvia estival
     6    4.94 Nivel 1   Lluvia estival
     7    4.37 Nivel 1   Lluvia estival
     8    4.79 Nivel 1   Lluvia estival
     9    5.16 Nivel 1   Lluvia estival
    10    4.55 Nivel 1   Lluvia estival
    11    4.72 Nivel 1   Lluvia estival
    12    4.23 Nivel 1   Lluvia estival
    13    4.83 Nivel 1   Lluvia estival
    14    4.48 Nivel 1   Lluvia estival
    15    4.58 Nivel 1   Lluvia estival
    16    5.21 Nivel 1   Lluvia estival

``` r
taludes_bien |>
  filter(nivel_luz == "Nivel 1" | biomasa > 5) # combinar criterios: OR
```

    # A tibble: 36 × 3
       biomasa nivel_luz agua_estival  
         <dbl> <fct>     <fct>         
     1    3.04 Nivel 1   Sequia estival
     2    3.57 Nivel 1   Sequia estival
     3    3.67 Nivel 1   Sequia estival
     4    4.59 Nivel 1   Sequia estival
     5    4.34 Nivel 1   Sequia estival
     6    2.25 Nivel 1   Sequia estival
     7    4.12 Nivel 1   Sequia estival
     8    2.45 Nivel 1   Sequia estival
     9    4.46 Nivel 1   Sequia estival
    10    3.51 Nivel 1   Sequia estival
    # ℹ 26 more rows

``` r
taludes_bien |>
  filter(nivel_luz %in% c("Nivel 1", "Nivel 3")) # combinar criterios: %in% 
```

    # A tibble: 60 × 3
       biomasa nivel_luz agua_estival  
         <dbl> <fct>     <fct>         
     1    3.04 Nivel 1   Sequia estival
     2    3.57 Nivel 1   Sequia estival
     3    3.67 Nivel 1   Sequia estival
     4    4.59 Nivel 1   Sequia estival
     5    4.34 Nivel 1   Sequia estival
     6    2.25 Nivel 1   Sequia estival
     7    4.12 Nivel 1   Sequia estival
     8    2.45 Nivel 1   Sequia estival
     9    4.46 Nivel 1   Sequia estival
    10    3.51 Nivel 1   Sequia estival
    # ℹ 50 more rows

#### Ejercicio

- Lee el data.frame “Macrobenthos.txt”. Pista: el delimitador entre
  datos es el tabulador (“).

💡“Macrobenthos.txt” es una base de datos sobre la abundancia de
distintos grupos taxonómicos de macroinvertebrados marinos ([Zuur et
al. 2009](https://link.springer.com/book/10.1007/978-0-387-93837-0)).

- Crea un subset de datos que contenga las filas de la 1 a la 10 y de la
  390 a la 400.

- Crea un subset que NO contenga el Taxon número 1. Pista: revisa los
  [operadores de
  R](https://bookdown.org/jboscomendoza/r-principiantes4/operadores-relacionales.html).

- Crea un subset con las observaciones del Taxon 2 donde se haya
  registrado una abundancia mayor de 50 o menor o igual a 5. Pista:
  necesitarás paréntesis para filtrar.

- ¿Cuántas filas han quedado?

### [Select](https://dplyr.tidyverse.org/reference/select.html): seleccionar columnas utilizando condiciones

Se necesita un vector de selección que contenga valores lógicos
(TRUE/FALSE).

``` r
taludes_bien |>
  select(biomasa, agua_estival)
```

    # A tibble: 91 × 2
       biomasa agua_estival  
         <dbl> <fct>         
     1    3.04 Sequia estival
     2    3.57 Sequia estival
     3    3.67 Sequia estival
     4    4.59 Sequia estival
     5    4.34 Sequia estival
     6    2.25 Sequia estival
     7    4.12 Sequia estival
     8    2.45 Sequia estival
     9    4.46 Sequia estival
    10    3.51 Sequia estival
    # ℹ 81 more rows

``` r
# ?select 

taludes_bien |>
  select(contains("a"))
```

    # A tibble: 91 × 2
       biomasa agua_estival  
         <dbl> <fct>         
     1    3.04 Sequia estival
     2    3.57 Sequia estival
     3    3.67 Sequia estival
     4    4.59 Sequia estival
     5    4.34 Sequia estival
     6    2.25 Sequia estival
     7    4.12 Sequia estival
     8    2.45 Sequia estival
     9    4.46 Sequia estival
    10    3.51 Sequia estival
    # ℹ 81 more rows

``` r
# se pueden utilizar todo tipo de patrones de texto: https://rstudio.github.io/cheatsheets/strings.pdf

taludes_bien |>
  select(nivel_luz, everything()) # se puede usar para reordenar variables
```

    # A tibble: 91 × 3
       nivel_luz biomasa agua_estival  
       <fct>       <dbl> <fct>         
     1 Nivel 1      3.04 Sequia estival
     2 Nivel 1      3.57 Sequia estival
     3 Nivel 1      3.67 Sequia estival
     4 Nivel 1      4.59 Sequia estival
     5 Nivel 1      4.34 Sequia estival
     6 Nivel 1      2.25 Sequia estival
     7 Nivel 1      4.12 Sequia estival
     8 Nivel 1      2.45 Sequia estival
     9 Nivel 1      4.46 Sequia estival
    10 Nivel 1      3.51 Sequia estival
    # ℹ 81 more rows

#### Ejercicio

- Con el data.frame “Macrobenthos.txt”, crea un nuevo data.frame que
  contenga las variables relacionadas con el medio (de *organic matter*
  a *temperature*). Pista: mira la ayuda de select para ahorrar
  caracteres.

- Crea un nuevo objeto con el taxon al principio y que incluya las demás
  columnas excepto el esfuerzo de muestreo (*effort*).

## Transformar los datos y calcular nuevas variables

### [Mutate](https://dplyr.tidyverse.org/reference/mutate.html): crear, modificar o eliminar columnas

``` r
taludes_bien |>
  mutate(
    ID = 1:nrow(taludes_bien),
    # definir una variable desde cero
    supervivencia = as.factor(sample(
      c(0, 1),
      size = nrow(taludes_bien),
      prob = c(0.4, 0.6),
      replace = TRUE
    )),
    # utilizar una variable para calcular otra
    carbono = biomasa * rnorm(
      n = nrow(taludes_bien),
      mean = 0.4,
      sd = 0.2
    )
  ) |> 
  select(ID, everything())
```

    # A tibble: 91 × 6
          ID biomasa nivel_luz agua_estival   supervivencia carbono
       <int>   <dbl> <fct>     <fct>          <fct>           <dbl>
     1     1    3.04 Nivel 1   Sequia estival 1               0.667
     2     2    3.57 Nivel 1   Sequia estival 0               1.76 
     3     3    3.67 Nivel 1   Sequia estival 1               1.48 
     4     4    4.59 Nivel 1   Sequia estival 1               1.67 
     5     5    4.34 Nivel 1   Sequia estival 1               1.31 
     6     6    2.25 Nivel 1   Sequia estival 1               1.00 
     7     7    4.12 Nivel 1   Sequia estival 0               1.69 
     8     8    2.45 Nivel 1   Sequia estival 0               1.04 
     9     9    4.46 Nivel 1   Sequia estival 0               1.43 
    10    10    3.51 Nivel 1   Sequia estival 0               2.08 
    # ℹ 81 more rows

``` r
taludes_bien |>
  mutate(
    # sobreescribir una variable. En concreto fct_recode 
    # sirve para redefinir los niveles de un factor
    agua_estival = fct_recode(
      agua_estival, sequia = "Sequia estival", lluvia = "Lluvia estival"),
    nivel_luz = fct_recode(
      nivel_luz,
      `1` = "Nivel 1",
      `2` = "Nivel 2",
      `3` = "Nivel 3"
    )
  )
```

    # A tibble: 91 × 3
       biomasa nivel_luz agua_estival
         <dbl> <fct>     <fct>       
     1    3.04 1         sequia      
     2    3.57 1         sequia      
     3    3.67 1         sequia      
     4    4.59 1         sequia      
     5    4.34 1         sequia      
     6    2.25 1         sequia      
     7    4.12 1         sequia      
     8    2.45 1         sequia      
     9    4.46 1         sequia      
    10    3.51 1         sequia      
    # ℹ 81 more rows

``` r
taludes_bien |>
  mutate(
    estres = case_when(
      # utilizar varias variables para calcular otra nueva
      nivel_luz == 1 &
        agua_estival == "sequia" ~ "alto",
      # "Si el nivel de luz es 1 y hay sequia, el estrés será alto"
      nivel_luz == 3 & agua_estival == "lluvia" ~ "bajo",
      TRUE ~ "intermedio"
    )
  )
```

    # A tibble: 91 × 4
       biomasa nivel_luz agua_estival   estres    
         <dbl> <fct>     <fct>          <chr>     
     1    3.04 Nivel 1   Sequia estival intermedio
     2    3.57 Nivel 1   Sequia estival intermedio
     3    3.67 Nivel 1   Sequia estival intermedio
     4    4.59 Nivel 1   Sequia estival intermedio
     5    4.34 Nivel 1   Sequia estival intermedio
     6    2.25 Nivel 1   Sequia estival intermedio
     7    4.12 Nivel 1   Sequia estival intermedio
     8    2.45 Nivel 1   Sequia estival intermedio
     9    4.46 Nivel 1   Sequia estival intermedio
    10    3.51 Nivel 1   Sequia estival intermedio
    # ℹ 81 more rows

``` r
# repetimos todo lo anterior concatenando todo el proceso:

taludes_trans <- taludes_bien |> mutate(
  ID = 1:nrow(taludes_bien),
  supervivencia = as.factor(sample(
    c(0, 1),
    size = nrow(taludes_bien),
    prob = c(0.4, 0.6),
    replace = TRUE
  )),
  carbono = biomasa * rnorm(
    n = nrow(taludes_bien),
    mean = 0.4,
    sd = 0.2
  )
) |>
  mutate(
    agua_estival = fct_recode(agua_estival, sequia = "Sequia estival", lluvia = "Lluvia estival"),
    nivel_luz = fct_recode(
      nivel_luz,
      `1` = "Nivel 1",
      `2` = "Nivel 2",
      `3` = "Nivel 3"
    )
  ) |>
  mutate(
    estres = case_when(
      nivel_luz == 1 &
        agua_estival == "sequia" ~ "alto",
      nivel_luz == 3 &
        agua_estival == "lluvia" ~ "bajo",
      TRUE ~ "intermedio"
    )
  )
```

#### Ejercicio

- Con el data.frame macrobenthos genera una nueva columna con la
  relación entre la turbidez del agua y la materia orgánica.

### [Summarise](https://dplyr.tidyverse.org/reference/summarise.html) y [group by](https://dplyr.tidyverse.org/reference/group_by.html): generar un nuevo `data.frame` resumiendo cada grupo a una fila

``` r
taludes_trans |> 
  summarise(c_min = min(carbono),
            c_max = max(carbono))
```

    # A tibble: 1 × 2
       c_min c_max
       <dbl> <dbl>
    1 -0.338  3.73

``` r
taludes_trans |>
  group_by(estres) |>  
  summarise(biomasa_min = min(biomasa),
            biomasa_mean = mean(biomasa),
            biomasa_max = max(biomasa))
```

    # A tibble: 3 × 4
      estres     biomasa_min biomasa_mean biomasa_max
      <chr>            <dbl>        <dbl>       <dbl>
    1 alto              2.25         3.51        4.59
    2 bajo              2.35         3.30        4.58
    3 intermedio        2.12         4.32        5.35

#### Ejercicio

- Con el data.frame macrobenthos, cuenta el número de casos que hay en
  cada periodo de muestreo.

- Cuenta el número de casos distintos que hay de esfuerzo de muestreo.

- Calcula la media de la turbidez para cada taxón.

### [Pivot](https://tidyr.tidyverse.org/reference/pivot_longer.html): transformar datos a formato largo o ancho

![La variable año está dividida en dos columnas y cada fila representa
dos observaciones no una. Extraido de [R for Data
Science](https://r4ds.had.co.nz/tidy-data.html).](images/tidy_pivot_longer.png)

``` r
stocks <- tibble(
  year   = c(2015, 2015, 2016, 2016),
  half  = c(   1,    2,     1,    2),
  return = c(1.88, 0.59, 0.92, 0.17)
)

stocks |> 
  pivot_wider(names_from = year, values_from = return) |> 
  pivot_longer(cols = `2015`:`2016`, names_to = "year", values_to = "return")
```

    # A tibble: 4 × 3
       half year  return
      <dbl> <chr>  <dbl>
    1     1 2015    1.88
    2     1 2016    0.92
    3     2 2015    0.59
    4     2 2016    0.17

## [Joins](https://dplyr.tidyverse.org/reference/mutate-joins.html): unir data.frames

`*_join()` añade columnas de `y` (segundo data.frame) a `x` (primer
data.frame), haciendo coincidir las observaciones en función de la
variable común.

``` r
# join: left, right, full, inner

set.seed(123)

bloques <- tibble(ID = 1:nrow(taludes_trans), 
  bloque = sample(x = 1:2, size = nrow(taludes_trans), replace = TRUE))

taludes_trans <- taludes_trans |> 
  left_join(bloques, by = "ID") |> 
  select(ID, bloque, everything())
```

## [Write_delim](https://readr.tidyverse.org/reference/write_delim.html): guardar datos

``` r
write_delim(taludes_trans, file = "taludes_trans.csv", delim = ";")
# en file hay que especificar el directorio donde queremos que se guarde. Si no, se guardará en el directorio de trabajo (getwd())
```

## Enlaces de interés

- [Hands-On Programming with
  R](https://rstudio-education.github.io/hopr/)

- [R for data Science (Data
  transformation)](https://r4ds.had.co.nz/transform.html)

- [Style guide](http://adv-r.had.co.nz/Style.html)

- [Página web de *tidyverse*](https://www.tidyverse.org)

- [Cheat sheet the
  dplyr](https://nyu-cdsc.github.io/learningr/assets/data-transformation.pdf)

- [Quince consejos para mejorar nuestro código y flujo de trabajo con
  R](https://www.revistaecosistemas.net/index.php/ecosistemas/article/view/2129)

------------------------------------------------------------------------

<details>
<summary>
Session Info
</summary>

``` r
Sys.time()
```

    [1] "2024-09-24 08:57:59 CEST"

``` r
sessionInfo()
```

    R version 4.3.1 (2023-06-16 ucrt)
    Platform: x86_64-w64-mingw32/x64 (64-bit)
    Running under: Windows 11 x64 (build 22631)

    Matrix products: default


    locale:
    [1] LC_COLLATE=English_United States.utf8 
    [2] LC_CTYPE=English_United States.utf8   
    [3] LC_MONETARY=English_United States.utf8
    [4] LC_NUMERIC=C                          
    [5] LC_TIME=English_United States.utf8    

    time zone: Europe/Paris
    tzcode source: internal

    attached base packages:
    [1] stats     graphics  grDevices utils     datasets  methods   base     

    other attached packages:
     [1] lubridate_1.9.3 forcats_1.0.0   stringr_1.5.1   dplyr_1.1.4    
     [5] purrr_1.0.2     readr_2.1.5     tidyr_1.3.1     tibble_3.2.1   
     [9] ggplot2_3.5.0   tidyverse_2.0.0

    loaded via a namespace (and not attached):
     [1] bit_4.0.5         gtable_0.3.4      jsonlite_1.8.8    crayon_1.5.2     
     [5] compiler_4.3.1    tidyselect_1.2.1  parallel_4.3.1    scales_1.3.0     
     [9] yaml_2.3.8        fastmap_1.1.1     R6_2.5.1          generics_0.1.3   
    [13] knitr_1.45        munsell_0.5.0     pillar_1.9.0      tzdb_0.4.0       
    [17] rlang_1.1.3       utf8_1.2.4        stringi_1.8.3     xfun_0.42        
    [21] bit64_4.0.5       timechange_0.3.0  cli_3.6.1         withr_3.0.0      
    [25] magrittr_2.0.3    digest_0.6.35     grid_4.3.1        vroom_1.6.5      
    [29] rstudioapi_0.15.0 hms_1.1.3         lifecycle_1.0.4   vctrs_0.6.5      
    [33] evaluate_0.23     glue_1.7.0        fansi_1.0.6       colorspace_2.1-0 
    [37] rmarkdown_2.26    tools_4.3.1       pkgconfig_2.0.3   htmltools_0.5.7  

</details>
