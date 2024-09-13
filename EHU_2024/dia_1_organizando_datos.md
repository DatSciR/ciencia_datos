# Ciencia de datos en R
<img src="images/Escuela%20de%20Doctorado_trilingue_positivo.png" />

Julen Astigarraga and Verónica Cruz-Alonso
13/09/2024

- [<span class="toc-section-number">1</span> Funciones básicas de
  filtrado y selección](#funciones-básicas-de-filtrado-y-selección)
  - [<span class="toc-section-number">1.1</span> Slice: filtrar filas
    según el índice
    numérico](#slice-filtrar-filas-según-el-índice-numérico)
  - [<span class="toc-section-number">1.2</span> Rename: cambiar nombres
    de variables
    (columnas)](#rename-cambiar-nombres-de-variables-columnas)
  - [<span class="toc-section-number">1.3</span> Arrange: ordenar filas
    por los valores de una o más variables
    (columnas)](#arrange-ordenar-filas-por-los-valores-de-una-o-más-variables-columnas)
  - [<span class="toc-section-number">1.4</span> Filter: filtrar filas
    utilizando
    condiciones](#filter-filtrar-filas-utilizando-condiciones)
  - [<span class="toc-section-number">1.5</span> Select: seleccionar
    columnas utilizando
    condiciones](#select-seleccionar-columnas-utilizando-condiciones)
- [<span class="toc-section-number">2</span> Transformar los datos y
  calcular nuevas
  variables](#transformar-los-datos-y-calcular-nuevas-variables)
  - [<span class="toc-section-number">2.1</span> Mutate: crear,
    modificar o eliminar
    columnas](#mutate-crear-modificar-o-eliminar-columnas)
  - [<span class="toc-section-number">2.2</span> Summarise: genera un
    nuevo `data.frame` resumiendo cada grupo a una
    fila](#summarise-genera-un-nuevo-dataframe-resumiendo-cada-grupo-a-una-fila)
  - [<span class="toc-section-number">2.3</span> Group by: agrupa por
    una o más variables](#group-by-agrupa-por-una-o-más-variables)
- [<span class="toc-section-number">3</span> Unir
  `data.frames`](#unir-dataframes)
  - [<span class="toc-section-number">3.1</span>
    Ejercicio](#ejercicio-4)
  - [<span class="toc-section-number">3.2</span>
    Ejercicio](#ejercicio-5)
- [<span class="toc-section-number">4</span> Enlaces de
  interés](#enlaces-de-interés)

En este curso realizaremos las distintas tareas que forman parte de la
ciencia de datos utilizando *tidyverse*, aunque también se podrían
llevar a cabo con R base. Consideramos que los cuatro pilares básicos de
*tidyverse* (centrado en humanos, consistencia, componibilidad e
inclusividad) facilitan tanto el aprendizaje como el trabajo diario,
permitiendo realizar las mismas acciones de manera más sencilla, aunque
reconocemos que esto puede variar según la persona.

``` r
taludes_bien <- read_delim(file = "DatosCursoR/taludes.csv", delim = ",", col_types = list(Luz = "f", Agua = "f"))

taludes_bien
View(taludes_bien)
summary(taludes_bien)
glimpse(taludes_bien)
```

## Funciones básicas de filtrado y selección

<!--# ja: pondria el link a la viñeta de cada main function que explicamos -->

### [Slice](https://dplyr.tidyverse.org/reference/slice.html): filtrar filas según el índice numérico

``` r
taludes_bien |> 
  slice(1) # shortcut para el pipe: CTRL + SHIFT + M 

taludes_bien |>
  slice(1, 5)

taludes_bien |> 
  slice(1:6)

taludes_bien |>
  slice(-c(1:5))
```

### [Rename](https://dplyr.tidyverse.org/reference/rename.html): cambiar nombres de variables (columnas)

``` r
taludes_bien |> 
  rename(biomasa = Biomasa, # nombre nuevo = nombre viejo
         luz = Luz, agua = Agua)
```

📝 Ajustar sangría de código: CTRL + I; Reformatear código: CTRL +
MAYÚS + A

### [Arrange](https://dplyr.tidyverse.org/reference/arrange.html): ordenar filas por los valores de una o más variables (columnas)

``` r
taludes_bien |>
  arrange(Biomasa)

taludes_bien |> 
  arrange(desc(Biomasa))
```

### [Filter](https://dplyr.tidyverse.org/reference/filter.html): filtrar filas utilizando condiciones

``` r
# se necesita un vector de filtrado que contenga valores TRUE/FALSE

taludes_bien

taludes_bien |>
  filter(Luz == "Nivel 1") # seleccionar variables que tienen un patrón 

taludes_bien |>
  filter(Luz == "Nivel 1" & Biomasa > 4) # combinar criterios: AND

taludes_bien |>
  filter(Luz == "Nivel 1" | Biomasa > 5) # combinar criterios: OR

taludes_bien |>
  filter(Luz %in% c("Nivel 1", "Nivel 3")) # combinar criterios: %in% 
```

#### Ejercicio

- Lee el data.frame “Macrobenthos.txt”. Pista: el delimitador entre
  datos es el tabulador (“).

- Crea un subset que contenga las filas de la 1 a la 10 y de la 390 a la
  400.

- Crea un subset que NO contenga el Taxon número 1. Pista: revisa los
  [operadores de
  R](https://bookdown.org/jboscomendoza/r-principiantes4/operadores-relacionales.html).

- Crea un subset con las observaciones del Taxon 2 donde se haya
  registrado una abundancia mayor de 50 o menor o igual a 5. Pista:
  necesitarás paréntesis para filtrar.

- ¿Cuántas filas han quedado?

### [Select](https://dplyr.tidyverse.org/reference/select.html): seleccionar columnas utilizando condiciones

``` r
# se necesita un vector de selección que contenga valores TRUE/FALSE

taludes_bien |>
  select(Biomasa, Agua)

# ?select 

taludes_bien |>
  select(contains("a"))

# se pueden utilizar todo tipo de patrones de texto: https://rstudio.github.io/cheatsheets/strings.pdf

taludes_bien |>
  select(Luz, everything()) # se puede usar para reordenar variables
```

#### Ejercicio

- Con el data.frame “Macrobenthos.txt”, crea un nuevo `data.frame` que
  contenga las variables relacionadas con el medio (de organic matter a
  temperature). Pista: mira la ayuda de select para ahorrar caracteres.

- Crea un nuevo objeto con el taxon al principio y que incluya las demás
  columnas excepto el esfuerzo de muestreo (effort).

## Transformar los datos y calcular nuevas variables

### [Mutate](https://dplyr.tidyverse.org/reference/mutate.html): crear, modificar o eliminar columnas

``` r
# renombramos las variables y guardamos un nuevo objeto para trabajar mejor con las funciones de transformación:
taludes_analisis <- taludes_bien |>
  rename(biomasa = Biomasa, nivel_luz = Luz, agua_estival = Agua)

taludes_analisis |>
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

taludes_analisis |>
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

taludes_analisis |>
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

# repetimos todo lo anterior concatenando todo el proceso:
taludes_analisis <- taludes_bien |>
  rename(biomasa = Biomasa,
         nivel_luz = Luz,
         agua_estival = Agua) |> mutate(
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
  select(ID, everything()) |> 
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

- Con el `data.frame` macrobenthos genera una nueva columna con la
  relación entre la turbidez del agua y la materia orgánica.

### [Summarise](https://dplyr.tidyverse.org/reference/summarise.html): genera un nuevo `data.frame` resumiendo cada grupo a una fila

``` r
taludes_analisis |> 
  summarise(c_min = min(carbono),
            c_max = max(carbono))
```

### [Group by](https://dplyr.tidyverse.org/reference/group_by.html): agrupa por una o más variables

``` r
taludes_analisis |>
  group_by(estres) |> # este tipo de summary en R base se hace con aggregate() o tapply() 
  summarise(biomasa_min = min(biomasa),
            biomasa_mean = mean(biomasa),
            biomasa_max = max(biomasa))
```

#### Ejercicio

- Con el data.frame macrobenthos, cuenta el número de casos que hay en
  cada periodo de muestreo.

- Cuenta el número de casos distintos que hay de esfuerzo de muestreo.

- Calcula la media de la turbidez para cada taxón.

## Unir `data.frames`

[Joins](https://dplyr.tidyverse.org/reference/mutate-joins.html): añade
columnas de `y` a `x`, haciendo coincidir las observaciones en función
de las claves.

<!--# ja: faltaria añadir algun ejemplo con la base de datos de taludes-->
<!--# ja: lo de abajo lo he traido del dia de programacion. faltaria incluir el ejemplo del join. el pivot_ lo dejaria para el dia de ggplot si no puede ser demasiado. decidir si tambien queremos hacer los ejercicios con el paquete de penguins-->

``` r
# install.packages("tidyverse")
library(tidyverse)

penguins <- palmerpenguins::penguins
penguins

summary(penguins)
glimpse(penguins)
View(penguins)

# filter
penguins |> 
  filter(island == "Dream") 
penguins |> 
  filter(island == "Dream" & body_mass_g > 4500) # se pueden combinar criterios
penguins |> 
  filter(island == "Dream" | body_mass_g > 4500) 
penguins |> 
  filter(island %in% c("Dream", "Torgersen"))

# select
penguins |> 
  select(sex, body_mass_g)
penguins |> 
  select(ends_with("mm")) # seleccionar variables que tienen un patron
penguins |> 
  select(ends_with(c("mm", "g"))) 

# se pueden utilizar todo tipo de patrones de texto: https://rstudio.github.io/cheatsheets/strings.pdf

penguins |> 
  select(sex, body_mass_g, everything()) # se puede usar para reordenar variables

# arrange
penguins |> 
  select(sex, body_mass_g) |> 
  arrange(body_mass_g)
penguins |> 
  select(sex, body_mass_g) |> 
  arrange(desc(body_mass_g))
```

### Ejercicio

1.  Crea un objeto con los pingüinos de la especie Adelie y ordena la
    tabla según la longitud del ala de los individuos.

2.  Crea un objeto a partir del anterior donde selecciones la isla y las
    variables relacionadas con el pico.

3.  Crea un objeto a partir del creado en el punto 1 donde selecciones
    todo menos la especie.

``` r
# mutate
penguins |> 
  mutate(bill_volume_mm2 = (bill_length_mm * bill_depth_mm) / 2) |> 
  select(bill_volume_mm2, everything())

penguins |>
  mutate(female_penguin = case_when(
    sex == "female" & body_mass_g < 3600 ~ "small female",
    sex == "female" & body_mass_g >= 3600 ~ "big female",
    TRUE ~ NA)) |>
  select(female_penguin, sex, body_mass_g)

# summarise
# se utiliza con funciones que resumen: n, n_distinct, mean, etc.
# ver ?summarise

penguins |> 
  summarise(
    body_min = min(body_mass_g, na.rm = TRUE),
    body_max = max(body_mass_g, na.rm = TRUE)
  )

penguins |> 
  group_by(sex) |> 
  summarise(body_min = min(body_mass_g, na.rm = TRUE),
  body_max = max(body_mass_g, na.rm = TRUE))
```

### Ejercicio

1.  Con el `data.frame` penguins, cuenta el número de casos que hay en
    cada isla y calcula la media de la longitud del ala en cada isla.

2.  Con el mismo `data.frame` calcula la relación entre el peso en kg y
    la longitud del ala para cada individuo.

``` r
mypenguins <- penguins |> 
  mutate(bill_volume_mm2 = (bill_length_mm * bill_depth_mm) / 2,
    female_penguin = case_when(
      sex == "female" & body_mass_g < 3600 ~ "small female",
      sex == "female" & body_mass_g >= 3600 ~ "big female",
      TRUE ~ NA)) 

write_delim(mypenguins, file = "mypenguins.csv", delim = ";")
# en file hay que especificar el directorio donde queremos que se guarde. Si no, se guardará en el directorio de trabajo (getwd())

misdatos <- read_delim(file = "mypenguins.csv")
View(misdatos)
```

## Enlaces de interés

- [Hands-On Programming with R
  (basics)](https://rstudio-education.github.io/hopr/basics.html)

- [R for data Science (Data
  transformation)](https://r4ds.had.co.nz/transform.html)

- [Style guide](http://adv-r.had.co.nz/Style.html)

- [RStudio User Guide](https://docs.posit.co/ide/user)

- [Posit Recipes](https://posit.cloud/learn/recipes) y en general [Posit
  Resources](https://posit.co/resources)

- [Página web de *tidyverse*](https://www.tidyverse.org)

- [*Tidyverse: colección de paquetes de R para la ciencia de
  datos*](https://revistaecosistemas.net/index.php/ecosistemas/article/view/2745)

<!--# ja: si se te ocurren mas adelante! -->

------------------------------------------------------------------------

<details>
<summary>
Session Info
</summary>

``` r
Sys.time()
```

    [1] "2024-09-13 09:46:17 CEST"

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

    loaded via a namespace (and not attached):
     [1] compiler_4.4.1    fastmap_1.2.0     cli_3.6.3         tools_4.4.1      
     [5] htmltools_0.5.8.1 rstudioapi_0.16.0 yaml_2.3.9        rmarkdown_2.27   
     [9] knitr_1.48        jsonlite_1.8.8    xfun_0.45         digest_0.6.36    
    [13] rlang_1.1.4       evaluate_0.24.0  

</details>
