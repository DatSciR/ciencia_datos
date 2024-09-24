# Ciencia de datos en R
<img src="images/Escuela%20de%20Doctorado_trilingue_positivo.png" />

Julen Astigarraga and Verónica Cruz-Alonso
24/09/2024

- [<span class="toc-section-number">1</span> Introducción (Organizando
  datos: el día a día)](#introducción-organizando-datos-el-día-a-día)
  - [<span class="toc-section-number">1.1</span> Ejercicio
    8.2.2](#ejercicio-822)
  - [<span class="toc-section-number">1.2</span> Ejercicio
    8.3.1](#ejercicio-831)
- [<span class="toc-section-number">2</span> Organizando datos: el día a
  día](#organizando-datos-el-día-a-día)
  - [<span class="toc-section-number">2.1</span> Ejercicio
    2.3.1](#ejercicio-231)
  - [<span class="toc-section-number">2.2</span> Ejercicio
    2.4.1](#ejercicio-241)
  - [<span class="toc-section-number">2.3</span> Ejercicio
    3.1.1](#ejercicio-311)
  - [<span class="toc-section-number">2.4</span> Ejercicio
    3.2.1](#ejercicio-321)

## Introducción (Organizando datos: el día a día)

### Ejercicio 8.2.2

- Elije un número y multiplicalo por 3

- Crea un objeto que contenga 100 valores entre 1900 y 2000

- Suma un número a tu objeto

- Multiplica tu objeto por sí mismo

- Crea un único objeto que contenga el número 5 repetido 9 veces junto
  con una secuencia de 5 a 50 cada 5 elementos

- ¿Cuál es la longitud del objeto anterior?

``` r
# 1
10 * 3
```

    [1] 30

``` r
# 2
misvalores <- 1901:2000

# 3
misvalores + 5
```

      [1] 1906 1907 1908 1909 1910 1911 1912 1913 1914 1915 1916 1917 1918 1919 1920
     [16] 1921 1922 1923 1924 1925 1926 1927 1928 1929 1930 1931 1932 1933 1934 1935
     [31] 1936 1937 1938 1939 1940 1941 1942 1943 1944 1945 1946 1947 1948 1949 1950
     [46] 1951 1952 1953 1954 1955 1956 1957 1958 1959 1960 1961 1962 1963 1964 1965
     [61] 1966 1967 1968 1969 1970 1971 1972 1973 1974 1975 1976 1977 1978 1979 1980
     [76] 1981 1982 1983 1984 1985 1986 1987 1988 1989 1990 1991 1992 1993 1994 1995
     [91] 1996 1997 1998 1999 2000 2001 2002 2003 2004 2005

``` r
# 4
misvalores * misvalores
```

      [1] 3613801 3617604 3621409 3625216 3629025 3632836 3636649 3640464 3644281
     [10] 3648100 3651921 3655744 3659569 3663396 3667225 3671056 3674889 3678724
     [19] 3682561 3686400 3690241 3694084 3697929 3701776 3705625 3709476 3713329
     [28] 3717184 3721041 3724900 3728761 3732624 3736489 3740356 3744225 3748096
     [37] 3751969 3755844 3759721 3763600 3767481 3771364 3775249 3779136 3783025
     [46] 3786916 3790809 3794704 3798601 3802500 3806401 3810304 3814209 3818116
     [55] 3822025 3825936 3829849 3833764 3837681 3841600 3845521 3849444 3853369
     [64] 3857296 3861225 3865156 3869089 3873024 3876961 3880900 3884841 3888784
     [73] 3892729 3896676 3900625 3904576 3908529 3912484 3916441 3920400 3924361
     [82] 3928324 3932289 3936256 3940225 3944196 3948169 3952144 3956121 3960100
     [91] 3964081 3968064 3972049 3976036 3980025 3984016 3988009 3992004 3996001
    [100] 4000000

``` r
# 5
secuencia <- c(rep(x = 5, times = 9), seq(from = 5, to = 50, by = 5))

# 6
length(secuencia)
```

    [1] 19

### Ejercicio 8.3.1

- Crea una lista que contenga dos data.frame con dos variables cada uno
  (variable1 y variable2) y diez observaciones por variable.

- Accede a la octava observación de variable2 de cada data.frame.

``` r
# 1
df1 <- data.frame(
  variable1 = 1:10,
  variable2 = rep(T, 10)
)

df2 <- data.frame(
  variable1 = 11:20,
  variable2 = rep(c(T, F), each = 5)
)

list_df <- list(df1, df2)

# 2
list_df[[1]][["variable2"]][[8]]
```

    [1] TRUE

``` r
list_df[[2]][["variable2"]][[8]]
```

    [1] FALSE

## Organizando datos: el día a día

### Ejercicio 2.3.1

- Lee el data.frame “Macrobenthos.txt”. Pista: el delimitador entre
  datos es el tabulador (“).

- Crea un subset de datos que contenga las filas de la 1 a la 10 y de la
  390 a la 400.

- Crea un subset que NO contenga el Taxon número 1. Pista: revisa los
  [operadores de
  R](https://bookdown.org/jboscomendoza/r-principiantes4/operadores-relacionales.html).

- Crea un subset con las observaciones del Taxon 2 donde se haya
  registrado una abundancia mayor de 50 o menor o igual a 5. Pista:
  necesitarás paréntesis para filtrar.

- ¿Cuántas filas han quedado?

``` r
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

``` r
# 1
macro <- read_delim("Macrobenthos.txt", delim = "\t")
```

    Rows: 400 Columns: 12
    ── Column specification ────────────────────────────────────────────────────────
    Delimiter: "\t"
    dbl (12): time, period, CT, effort, o_matter, mud, silt, clay, turbidity, te...

    ℹ Use `spec()` to retrieve the full column specification for this data.
    ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
glimpse(macro)
```

    Rows: 400
    Columns: 12
    $ time        <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2…
    $ period      <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1…
    $ CT          <dbl> 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1…
    $ effort      <dbl> 0.00, 0.00, 0.00, 0.00, 0.00, 1.71, 1.71, 1.71, 1.71, 1.71…
    $ o_matter    <dbl> 1.16, 1.38, 1.84, 1.62, 1.62, 2.13, 1.78, 1.87, 1.56, 1.15…
    $ mud         <dbl> 35.27, 34.46, 38.39, 30.71, 32.59, 43.39, 39.42, 43.29, 41…
    $ silt        <dbl> 25.10, 21.94, 23.46, 17.72, 23.31, 29.20, 26.53, 22.98, 22…
    $ clay        <dbl> 10.16, 12.52, 14.94, 12.99, 9.27, 14.19, 12.90, 20.31, 19.…
    $ turbidity   <dbl> 5.71, 9.55, 8.01, 8.01, 8.78, 9.55, 9.55, 7.25, 8.01, 8.01…
    $ temperature <dbl> 10.50, 10.60, 10.59, 10.65, 10.65, 10.79, 10.75, 10.77, 10…
    $ Abundance   <dbl> 11, 18, 15, 39, 24, 19, 17, 27, 5, 18, 18, 15, 16, 15, 17,…
    $ TaxonID     <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1…

``` r
# 2
macro |> 
  slice(c(1:10, 390:400))
```

    # A tibble: 21 × 12
        time period    CT effort o_matter   mud  silt  clay turbidity temperature
       <dbl>  <dbl> <dbl>  <dbl>    <dbl> <dbl> <dbl> <dbl>     <dbl>       <dbl>
     1     1      1     0   0        1.16  35.3  25.1 10.2       5.71        10.5
     2     1      1     0   0        1.38  34.5  21.9 12.5       9.55        10.6
     3     1      1     0   0        1.84  38.4  23.5 14.9       8.01        10.6
     4     1      1     0   0        1.62  30.7  17.7 13.0       8.01        10.6
     5     1      1     0   0        1.62  32.6  23.3  9.27      8.78        10.6
     6     1      1     1   1.71     2.13  43.4  29.2 14.2       9.55        10.8
     7     1      1     1   1.71     1.78  39.4  26.5 12.9       9.55        10.8
     8     1      1     1   1.71     1.87  43.3  23.0 20.3       7.25        10.8
     9     1      1     1   1.71     1.56  41.3  22.2 19.1       8.01        10.8
    10     1      1     1   1.71     1.15  38.0  26.4 11.6       8.01        10.8
    # ℹ 11 more rows
    # ℹ 2 more variables: Abundance <dbl>, TaxonID <dbl>

``` r
# 3
macro |> 
  filter(TaxonID != 1)
```

    # A tibble: 320 × 12
        time period    CT effort o_matter   mud  silt  clay turbidity temperature
       <dbl>  <dbl> <dbl>  <dbl>    <dbl> <dbl> <dbl> <dbl>     <dbl>       <dbl>
     1     1      1     0   0        1.16  35.3  25.1 10.2       5.71        10.5
     2     1      1     0   0        1.38  34.5  21.9 12.5       9.55        10.6
     3     1      1     0   0        1.84  38.4  23.5 14.9       8.01        10.6
     4     1      1     0   0        1.62  30.7  17.7 13.0       8.01        10.6
     5     1      1     0   0        1.62  32.6  23.3  9.27      8.78        10.6
     6     1      1     1   1.71     2.13  43.4  29.2 14.2       9.55        10.8
     7     1      1     1   1.71     1.78  39.4  26.5 12.9       9.55        10.8
     8     1      1     1   1.71     1.87  43.3  23.0 20.3       7.25        10.8
     9     1      1     1   1.71     1.56  41.3  22.2 19.1       8.01        10.8
    10     1      1     1   1.71     1.15  38.0  26.4 11.6       8.01        10.8
    # ℹ 310 more rows
    # ℹ 2 more variables: Abundance <dbl>, TaxonID <dbl>

``` r
# 4
macro |> 
  filter(TaxonID == 2 & (Abundance > 50 | Abundance <= 5))
```

    # A tibble: 21 × 12
        time period    CT effort o_matter   mud  silt  clay turbidity temperature
       <dbl>  <dbl> <dbl>  <dbl>    <dbl> <dbl> <dbl> <dbl>     <dbl>       <dbl>
     1     2      1     0    0       1.62  33.7  18.0  15.7      7.25        11.6
     2     2      1     0    0       1.41  34.2  19.5  14.7      8.01        11.6
     3     2      1     1    1.1     1.13  43.9  23.0  21.0     11.9         11.5
     4     2      1     1    1.1     1.54  38.7  23.1  15.6     10.3         11.4
     5     2      1     1    1.1     1.42  50.1  23.8  26.3      8.78        11.4
     6     2      1     1    1.1     1.62  44.5  22.2  22.2     10.3         11.4
     7     3      2     0    0       1.4   35.2  18.9  16.3      8.78        12.7
     8     3      2     1    0.2     1.59  36.3  22.0  14.3      0.33        12.9
     9     4      2     0    0       1.47  37.9  17.7  20.2     NA           NA  
    10     5      2     0    0       1.41  32.8  19.5  13.3      2.64        14.0
    # ℹ 11 more rows
    # ℹ 2 more variables: Abundance <dbl>, TaxonID <dbl>

### Ejercicio 2.4.1

- Con el data.frame “Macrobenthos.txt”, crea un nuevo data.frame que
  contenga las variables relacionadas con el medio (de *organic matter*
  a *temperature*). Pista: mira la ayuda de select para ahorrar
  caracteres.

- Crea un nuevo objeto con el taxon al principio y que incluya las demás
  columnas excepto el esfuerzo de muestreo (*effort*).

``` r
# 1
macro |> 
  select(o_matter:temperature)
```

    # A tibble: 400 × 6
       o_matter   mud  silt  clay turbidity temperature
          <dbl> <dbl> <dbl> <dbl>     <dbl>       <dbl>
     1     1.16  35.3  25.1 10.2       5.71        10.5
     2     1.38  34.5  21.9 12.5       9.55        10.6
     3     1.84  38.4  23.5 14.9       8.01        10.6
     4     1.62  30.7  17.7 13.0       8.01        10.6
     5     1.62  32.6  23.3  9.27      8.78        10.6
     6     2.13  43.4  29.2 14.2       9.55        10.8
     7     1.78  39.4  26.5 12.9       9.55        10.8
     8     1.87  43.3  23.0 20.3       7.25        10.8
     9     1.56  41.3  22.2 19.1       8.01        10.8
    10     1.15  38.0  26.4 11.6       8.01        10.8
    # ℹ 390 more rows

``` r
# 2
macro |> 
  select(TaxonID, everything(), -effort)
```

    # A tibble: 400 × 11
       TaxonID  time period    CT o_matter   mud  silt  clay turbidity temperature
         <dbl> <dbl>  <dbl> <dbl>    <dbl> <dbl> <dbl> <dbl>     <dbl>       <dbl>
     1       1     1      1     0     1.16  35.3  25.1 10.2       5.71        10.5
     2       1     1      1     0     1.38  34.5  21.9 12.5       9.55        10.6
     3       1     1      1     0     1.84  38.4  23.5 14.9       8.01        10.6
     4       1     1      1     0     1.62  30.7  17.7 13.0       8.01        10.6
     5       1     1      1     0     1.62  32.6  23.3  9.27      8.78        10.6
     6       1     1      1     1     2.13  43.4  29.2 14.2       9.55        10.8
     7       1     1      1     1     1.78  39.4  26.5 12.9       9.55        10.8
     8       1     1      1     1     1.87  43.3  23.0 20.3       7.25        10.8
     9       1     1      1     1     1.56  41.3  22.2 19.1       8.01        10.8
    10       1     1      1     1     1.15  38.0  26.4 11.6       8.01        10.8
    # ℹ 390 more rows
    # ℹ 1 more variable: Abundance <dbl>

### Ejercicio 3.1.1

- Con el data.frame macrobenthos genera una nueva columna con la
  relación entre la turbidez del agua y la materia orgánica.

``` r
macro |> 
  mutate(
    tub_o_mat = turbidity / o_matter
  )
```

    # A tibble: 400 × 13
        time period    CT effort o_matter   mud  silt  clay turbidity temperature
       <dbl>  <dbl> <dbl>  <dbl>    <dbl> <dbl> <dbl> <dbl>     <dbl>       <dbl>
     1     1      1     0   0        1.16  35.3  25.1 10.2       5.71        10.5
     2     1      1     0   0        1.38  34.5  21.9 12.5       9.55        10.6
     3     1      1     0   0        1.84  38.4  23.5 14.9       8.01        10.6
     4     1      1     0   0        1.62  30.7  17.7 13.0       8.01        10.6
     5     1      1     0   0        1.62  32.6  23.3  9.27      8.78        10.6
     6     1      1     1   1.71     2.13  43.4  29.2 14.2       9.55        10.8
     7     1      1     1   1.71     1.78  39.4  26.5 12.9       9.55        10.8
     8     1      1     1   1.71     1.87  43.3  23.0 20.3       7.25        10.8
     9     1      1     1   1.71     1.56  41.3  22.2 19.1       8.01        10.8
    10     1      1     1   1.71     1.15  38.0  26.4 11.6       8.01        10.8
    # ℹ 390 more rows
    # ℹ 3 more variables: Abundance <dbl>, TaxonID <dbl>, tub_o_mat <dbl>

### Ejercicio 3.2.1

- Con el data.frame macrobenthos, cuenta el número de casos que hay en
  cada periodo de muestreo.

- Cuenta el número de casos distintos que hay de esfuerzo de muestreo.

- Calcula la media de la turbidez para cada taxón.

``` r
# 1
macro |> 
  group_by(period) |> 
  summarise(n = n())
```

    # A tibble: 3 × 2
      period     n
       <dbl> <int>
    1      1   100
    2      2   150
    3      3   150

``` r
macro |> 
  count(period)
```

    # A tibble: 3 × 2
      period     n
       <dbl> <int>
    1      1   100
    2      2   150
    3      3   150

``` r
# 2
macro |> 
  summarise(
    ef_n_dis = n_distinct(effort)
  )
```

    # A tibble: 1 × 1
      ef_n_dis
         <int>
    1        7

``` r
# 3
macro |> 
  group_by(TaxonID) |> 
  summarise(turb_mean = mean(turbidity, na.rm = T))
```

    # A tibble: 5 × 2
      TaxonID turb_mean
        <dbl>     <dbl>
    1       1      4.75
    2       2      4.75
    3       3      4.75
    4       4      4.75
    5       5      4.75

------------------------------------------------------------------------

<details>
<summary>
Session Info
</summary>

``` r
Sys.time()
```

    [1] "2024-09-24 10:15:59 CEST"

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
     [1] bit_4.0.5         gtable_0.3.5      jsonlite_1.8.8    crayon_1.5.3     
     [5] compiler_4.4.1    tidyselect_1.2.1  parallel_4.4.1    scales_1.3.0     
     [9] yaml_2.3.9        fastmap_1.2.0     R6_2.5.1          generics_0.1.3   
    [13] knitr_1.48        munsell_0.5.1     pillar_1.9.0      tzdb_0.4.0       
    [17] rlang_1.1.4       utf8_1.2.4        stringi_1.8.4     xfun_0.45        
    [21] bit64_4.0.5       timechange_0.3.0  cli_3.6.3         withr_3.0.1      
    [25] magrittr_2.0.3    digest_0.6.36     grid_4.4.1        vroom_1.6.5      
    [29] rstudioapi_0.16.0 hms_1.1.3         lifecycle_1.0.4   vctrs_0.6.5      
    [33] evaluate_0.24.0   glue_1.7.0        fansi_1.0.6       colorspace_2.1-1 
    [37] rmarkdown_2.27    tools_4.4.1       pkgconfig_2.0.3   htmltools_0.5.8.1

</details>
