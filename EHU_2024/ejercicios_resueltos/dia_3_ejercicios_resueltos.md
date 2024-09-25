# Ciencia de datos en R
<img src="images/Escuela%20de%20Doctorado_trilingue_positivo.png" />

Verónica Cruz-Alonso and Julen Astigarraga
25/09/2024

- [<span class="toc-section-number">0.1</span> Ejercicio
  4.0.1](#ejercicio-401)
- [<span class="toc-section-number">1</span> Ejercicio
  4.0.2](#ejercicio-402)
- [<span class="toc-section-number">2</span> Ejercicio
  6.1.1](#ejercicio-611)
- [<span class="toc-section-number">3</span> Ejercicio
  6.2.1](#ejercicio-621)
- [<span class="toc-section-number">4</span> Ejercicio
  6.3.1](#ejercicio-631)

### Ejercicio 4.0.1

Genera tu primera función que divida un valor siempre entre 100.

``` r
dividirpor100 <- function(x) {
  x / 100
}

dividirpor100(30)
```

    [1] 0.3

## Ejercicio 4.0.2

Genera una función para estandarizar (es decir, restar la media y
dividir por la desviación típica) las variables numéricas de penguins.

``` r
library(palmerpenguins)
library(tidyverse)
```

    Warning: package 'ggplot2' was built under R version 4.3.3

    Warning: package 'tidyr' was built under R version 4.3.3

    Warning: package 'readr' was built under R version 4.3.2

    Warning: package 'purrr' was built under R version 4.3.2

    Warning: package 'dplyr' was built under R version 4.3.2

    Warning: package 'stringr' was built under R version 4.3.2

    Warning: package 'lubridate' was built under R version 4.3.2

    ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
    ✔ dplyr     1.1.4     ✔ readr     2.1.5
    ✔ forcats   1.0.0     ✔ stringr   1.5.1
    ✔ ggplot2   3.5.0     ✔ tibble    3.2.1
    ✔ lubridate 1.9.3     ✔ tidyr     1.3.1
    ✔ purrr     1.0.2     
    ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ✖ dplyr::filter() masks stats::filter()
    ✖ dplyr::lag()    masks stats::lag()
    ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors

``` r
# R base
estandarizar <- function(x, na.rm) {
  (x - mean(x, na.rm = na.rm)) / sd(x, na.rm = na.rm)
}

estandarizar(penguins$bill_length_mm, na.rm = T)
```

      [1] -0.88320467 -0.80993901 -0.66340769          NA -1.32279862 -0.84657184
      [7] -0.91983750 -0.86488825 -1.79902541 -0.35202864 -1.12131806 -1.12131806
     [13] -0.51687637 -0.97478674 -1.70744334 -1.34111504 -0.95647033 -0.26044656
     [19] -1.74407616  0.38062795 -1.12131806 -1.13963448 -1.46932994 -1.04805240
     [25] -0.93815391 -1.57922843 -0.60845845 -0.62677486 -1.10300165 -0.62677486
     [31] -0.80993901 -1.23121655 -0.80993901 -0.55350920 -1.37774787 -0.86488825
     [37] -0.93815391 -0.31539581 -1.15795089 -0.75498976 -1.35943145 -0.57182562
     [43] -1.45101353  0.03261607 -1.26784938 -0.79162259 -0.51687637 -1.17626731
     [49] -1.45101353 -0.29707939 -0.79162259 -0.70004052 -1.63417768 -0.35202864
     [55] -1.72575975 -0.46192713 -0.90152108 -0.60845845 -1.35943145 -1.15795089
     [61] -1.50596277 -0.48024354 -1.15795089 -0.51687637 -1.37774787 -0.42529430
     [67] -1.54259560 -0.51687637 -1.46932994 -0.38866147 -1.90892390 -0.77330618
     [73] -0.79162259  0.34399512 -1.54259560 -0.20549732 -0.55350920 -1.23121655
     [79] -1.41438070 -0.33371222 -1.70744334 -0.18718091 -1.32279862 -1.61586126
     [85] -1.21290014 -0.48024354 -1.39606428 -1.28616579 -1.02973599 -0.91983750
     [91] -1.50596277 -0.51687637 -1.81734182 -0.79162259 -1.41438070 -0.57182562
     [97] -1.06636882 -0.66340769 -1.98218956 -0.13223166 -1.63417768 -0.53519279
    [103] -1.13963448 -1.12131806 -1.10300165 -0.77330618 -0.97478674 -1.04805240
    [109] -1.06636882 -0.13223166 -1.06636882  0.30736229 -0.77330618 -0.31539581
    [115] -0.79162259 -0.22381374 -0.97478674 -1.21290014 -1.50596277 -0.51687637
    [121] -1.41438070 -1.13963448 -0.68172411 -0.46192713 -1.59754485 -0.60845845
    [127] -0.93815391 -0.44361071 -0.90152108  0.03261607 -0.99310316 -0.15054808
    [133] -1.30448221 -1.17626731 -1.06636882 -0.51687637 -1.52427919 -0.68172411
    [139] -1.26784938 -0.77330618 -0.68172411 -0.60845845 -2.16535371 -0.59014203
    [145] -1.21290014 -0.90152108 -0.86488825 -1.34111504 -1.45101353 -1.12131806
    [151] -1.45101353 -0.44361071  0.39894437  1.11328455  0.87517115  1.11328455
    [157]  0.67369059  0.47221003  0.27072946  0.50884286 -0.11391525  0.52715927
    [163] -0.55350920  0.93012040  0.28904588  0.82022191  0.34399512  0.98506964
    [169] -0.35202864  0.96675323  0.41726078  0.87517115  1.14991738  0.21578022
    [175]  0.47221003  0.43557720 -0.18718091  0.39894437  0.10588173  0.71032342
    [181]  0.78358908  1.11328455  0.61874135 -0.20549732  0.21578022  2.87166037
    [187]  0.94843681  0.82022191 -0.24213015  0.08756532  0.01429966  0.87517115
    [193] -0.22381374  1.04001889  0.25241305  1.04001889  1.20486662 -0.05896600
    [199]  0.28904588  1.20486662  0.17914739  0.23409663  0.49052644  0.83853832
    [205]  0.21578022  1.13160096  0.47221003  0.19746381 -0.02233317  0.28904588
    [211] -0.13223166  1.18655021  0.25241305  0.41726078  0.32567871  1.90089038
    [217]  0.34399512  1.07665172  0.41726078  1.02170247 -0.07728242  1.24149945
    [223]  0.69200701  0.45389361  0.78358908  0.47221003  0.45389361  0.85685474
    [229]  0.65537418  1.31476511  0.23409663  0.23409663  0.94843681  1.57119492
    [235]  0.63705776  1.11328455  0.17914739  1.25981586 -0.09559883  1.35139794
    [241]  0.65537418  1.49792926  0.65537418  1.51624567  0.28904588  1.02170247
    [247]  0.10588173  1.25981586  1.00338606  0.54547569  0.82022191  1.31476511
    [253]  0.83853832  2.19395302  0.60042493  0.94843681  0.61874135  0.52715927
    [259] -0.40697788  1.73604265 -0.11391525  0.76527266  1.20486662  1.07665172
    [265] -0.07728242  1.38803077  0.41726078  2.04742170  0.10588173  0.89348757
    [271]  0.60042493          NA  0.52715927  1.18655021  0.23409663  1.09496813
    [277]  0.47221003  1.11328455  1.35139794  0.27072946  1.60782775  0.23409663
    [283]  0.39894437  1.35139794  0.38062795  1.35139794  0.49052644  1.42466360
    [289]  0.56379210  1.47961284  0.36231154  1.20486662  1.16823379  2.57859773
    [295]  0.45389361  0.96675323 -0.27876298  0.83853832 -0.13223166  1.22318303
    [301]  0.50884286  1.47961284  1.20486662  1.02170247  0.45389361  1.62614416
    [307] -0.55350920  1.88257397 -0.26044656  1.29644869  1.05833530  0.65537418
    [313]  0.67369059  1.47961284  0.54547569  1.75435906  0.93012040  0.41726078
    [319]  1.27813228  0.28904588  1.27813228  1.25981586  1.13160096  0.93012040
    [325]  1.38803077  1.07665172  0.76527266  1.36971435  0.32567871  1.24149945
    [331] -0.26044656  1.51624567  0.23409663  0.98506964  1.14991738  0.30736229
    [337]  1.46129643  0.52715927  0.32567871  2.17563660 -0.07728242  1.04001889
    [343]  1.25981586  1.14991738

``` r
# Tidyverse
estandarizar_tidy <- function(x, na.rm) {
  ({{ x }} - mean({{ x }}, na.rm = na.rm)) / sd({{ x }}, na.rm = na.rm)
} 

penguins |> 
  mutate(st_bill_length = estandarizar_tidy(x = bill_length_mm, na.rm = T)) |> 
  select(bill_length_mm, st_bill_length)
```

    # A tibble: 344 × 2
       bill_length_mm st_bill_length
                <dbl>          <dbl>
     1           39.1         -0.883
     2           39.5         -0.810
     3           40.3         -0.663
     4           NA           NA    
     5           36.7         -1.32 
     6           39.3         -0.847
     7           38.9         -0.920
     8           39.2         -0.865
     9           34.1         -1.80 
    10           42           -0.352
    # ℹ 334 more rows

## Ejercicio 6.1.1

Generad un vector, una función y aplicadle la función a cada uno de los
elementos del vector utilizando `map()`.

``` r
v1 <- 1:4

sum_10 <- function(x) {
  x + 10
}

map(v1, sum_10)
```

    [[1]]
    [1] 11

    [[2]]
    [1] 12

    [[3]]
    [1] 13

    [[4]]
    [1] 14

## Ejercicio 6.2.1

Dedicadle un par de minutos a entender lo que hacen las siguientes
funciones:

``` r
map_lgl(penguins, is.numeric)
```

              species            island    bill_length_mm     bill_depth_mm 
                FALSE             FALSE              TRUE              TRUE 
    flipper_length_mm       body_mass_g               sex              year 
                 TRUE              TRUE             FALSE              TRUE 

``` r
penguins_num <- penguins[ , map_lgl(penguins, is.numeric)] 
map_dbl(penguins_num, median, na.rm = T)
```

       bill_length_mm     bill_depth_mm flipper_length_mm       body_mass_g 
                44.45             17.30            197.00           4050.00 
                 year 
              2008.00 

``` r
map_chr(penguins, class)
```

              species            island    bill_length_mm     bill_depth_mm 
             "factor"          "factor"         "numeric"         "numeric" 
    flipper_length_mm       body_mass_g               sex              year 
            "integer"         "integer"          "factor"         "integer" 

``` r
map_int(penguins, \(x) length(unique(x)))
```

              species            island    bill_length_mm     bill_depth_mm 
                    3                 3               165                81 
    flipper_length_mm       body_mass_g               sex              year 
                   56                95                 3                 3 

``` r
1:4 |> 
  map_vec(\(x) as.Date(ISOdate(x + 2024, 05, 13)))
```

    [1] "2025-05-13" "2026-05-13" "2027-05-13" "2028-05-13"

`map_lgl()` nos devuelve un vector lógico que nos indica si cada una de
las columnas de penguins es numérico o no.

En la siguiente linea utilizamos el vector lógico generado con
`map_lgl()` para seleccionar las variables númericas de penguins.

`map_dbl()` nos devuelve un vector numérico calculando la mediana de
cada variable númerica de penguins.

`map_chr()` nos devuelve un vector de caracteres que nos indica la clase
de cada una de las columnas de penguins.

`map_int()` nos devuelve un vector de números enteros que nos muestra el
número de observaciones únicas que hay en cada variable de penguins
contando los `NA`.

`map_vec()` determina automáticamente el tipo de salida que en este caso
nos devuelve un vector de tipo fecha.

## Ejercicio 6.3.1

A partir del código que se muestra a continuación generad un
`data.frame`, agregando una columna al `data.frame` con el nombre que le
hemos asignado a cada lista.

``` r
penguins_list <- penguins |>
  group_split(species)

# asignamos nombres a las listas
names(penguins_list) <- c("p1", "p2", "p3")

# solucion al ejercicio
map2(penguins_list, names(penguins_list), \(x, y)
        mutate(x, nombre = y))
```

    $p1
    # A tibble: 152 × 9
       species island    bill_length_mm bill_depth_mm flipper_length_mm body_mass_g
       <fct>   <fct>              <dbl>         <dbl>             <int>       <int>
     1 Adelie  Torgersen           39.1          18.7               181        3750
     2 Adelie  Torgersen           39.5          17.4               186        3800
     3 Adelie  Torgersen           40.3          18                 195        3250
     4 Adelie  Torgersen           NA            NA                  NA          NA
     5 Adelie  Torgersen           36.7          19.3               193        3450
     6 Adelie  Torgersen           39.3          20.6               190        3650
     7 Adelie  Torgersen           38.9          17.8               181        3625
     8 Adelie  Torgersen           39.2          19.6               195        4675
     9 Adelie  Torgersen           34.1          18.1               193        3475
    10 Adelie  Torgersen           42            20.2               190        4250
    # ℹ 142 more rows
    # ℹ 3 more variables: sex <fct>, year <int>, nombre <chr>

    $p2
    # A tibble: 68 × 9
       species   island bill_length_mm bill_depth_mm flipper_length_mm body_mass_g
       <fct>     <fct>           <dbl>         <dbl>             <int>       <int>
     1 Chinstrap Dream            46.5          17.9               192        3500
     2 Chinstrap Dream            50            19.5               196        3900
     3 Chinstrap Dream            51.3          19.2               193        3650
     4 Chinstrap Dream            45.4          18.7               188        3525
     5 Chinstrap Dream            52.7          19.8               197        3725
     6 Chinstrap Dream            45.2          17.8               198        3950
     7 Chinstrap Dream            46.1          18.2               178        3250
     8 Chinstrap Dream            51.3          18.2               197        3750
     9 Chinstrap Dream            46            18.9               195        4150
    10 Chinstrap Dream            51.3          19.9               198        3700
    # ℹ 58 more rows
    # ℹ 3 more variables: sex <fct>, year <int>, nombre <chr>

    $p3
    # A tibble: 124 × 9
       species island bill_length_mm bill_depth_mm flipper_length_mm body_mass_g
       <fct>   <fct>           <dbl>         <dbl>             <int>       <int>
     1 Gentoo  Biscoe           46.1          13.2               211        4500
     2 Gentoo  Biscoe           50            16.3               230        5700
     3 Gentoo  Biscoe           48.7          14.1               210        4450
     4 Gentoo  Biscoe           50            15.2               218        5700
     5 Gentoo  Biscoe           47.6          14.5               215        5400
     6 Gentoo  Biscoe           46.5          13.5               210        4550
     7 Gentoo  Biscoe           45.4          14.6               211        4800
     8 Gentoo  Biscoe           46.7          15.3               219        5200
     9 Gentoo  Biscoe           43.3          13.4               209        4400
    10 Gentoo  Biscoe           46.8          15.4               215        5150
    # ℹ 114 more rows
    # ℹ 3 more variables: sex <fct>, year <int>, nombre <chr>

------------------------------------------------------------------------

<details>
<summary>
Session Info
</summary>

``` r
Sys.time()
```

    [1] "2024-09-25 14:02:56 CEST"

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
     [1] lubridate_1.9.3      forcats_1.0.0        stringr_1.5.1       
     [4] dplyr_1.1.4          purrr_1.0.2          readr_2.1.5         
     [7] tidyr_1.3.1          tibble_3.2.1         ggplot2_3.5.0       
    [10] tidyverse_2.0.0      palmerpenguins_0.1.1

    loaded via a namespace (and not attached):
     [1] gtable_0.3.4      jsonlite_1.8.8    compiler_4.3.1    tidyselect_1.2.1 
     [5] scales_1.3.0      yaml_2.3.8        fastmap_1.1.1     R6_2.5.1         
     [9] generics_0.1.3    knitr_1.45        munsell_0.5.0     pillar_1.9.0     
    [13] tzdb_0.4.0        rlang_1.1.3       utf8_1.2.4        stringi_1.8.3    
    [17] xfun_0.42         timechange_0.3.0  cli_3.6.1         withr_3.0.0      
    [21] magrittr_2.0.3    digest_0.6.35     grid_4.3.1        rstudioapi_0.15.0
    [25] hms_1.1.3         lifecycle_1.0.4   vctrs_0.6.5       evaluate_0.23    
    [29] glue_1.7.0        fansi_1.0.6       colorspace_2.1-0  rmarkdown_2.26   
    [33] tools_4.3.1       pkgconfig_2.0.3   htmltools_0.5.7  

</details>
