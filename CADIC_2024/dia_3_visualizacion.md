# Visualización y análisis exploratorio de datos

Verónica Cruz-Alonso
04/12/2024

- [<span class="toc-section-number">1</span> Objetivos del día
  3](#objetivos-del-día-3)
- [<span class="toc-section-number">2</span> Introducción a la
  visualización de datos](#introducción-a-la-visualización-de-datos)
- [<span class="toc-section-number">3</span> Elementos básicos en un
  gráfico de {ggplot2}](#elementos-básicos-en-un-gráfico-de-ggplot2)
  - [<span class="toc-section-number">3.0.1</span>
    Ejercicio](#ejercicio)
  - [<span class="toc-section-number">3.1</span> Aesthetics
    vs. argumentos](#aesthetics-vs-argumentos)
    - [<span class="toc-section-number">3.1.1</span>
      Ejercicio](#ejercicio-1)
- [<span class="toc-section-number">4</span> {Ggplot2}: funciones
  avanzadas](#ggplot2-funciones-avanzadas)
  - [<span class="toc-section-number">4.1</span> Etiquetas](#etiquetas)
  - [<span class="toc-section-number">4.2</span> Sistema de
    coordenadas](#sistema-de-coordenadas)
    - [<span class="toc-section-number">4.2.1</span>
      Ejercicio](#ejercicio-2)
  - [<span class="toc-section-number">4.3</span> Faceting](#faceting)
  - [<span class="toc-section-number">4.4</span> Posición](#posición)
  - [<span class="toc-section-number">4.5</span> Escalas](#escalas)
    - [<span class="toc-section-number">4.5.1</span>
      Ejercicio](#ejercicio-3)
  - [<span class="toc-section-number">4.6</span> Los colores en
    R](#los-colores-en-r)
  - [<span class="toc-section-number">4.7</span> Temas](#temas)
    - [<span class="toc-section-number">4.7.1</span>
      Ejercicio](#ejercicio-4)
    - [<span class="toc-section-number">4.7.2</span>
      GgthemeAssist](#ggthemeassist)
- [<span class="toc-section-number">5</span> Gráficos
  multipaneles](#gráficos-multipaneles)
- [<span class="toc-section-number">6</span> Enlaces de interés sobre
  visualización de
  datos](#enlaces-de-interés-sobre-visualización-de-datos)
- [<span class="toc-section-number">7</span> La exploración de datos y
  su importancia](#la-exploración-de-datos-y-su-importancia)
  - [<span class="toc-section-number">7.1</span> Detección de
    outliers](#detección-de-outliers)
    - [<span class="toc-section-number">7.1.1</span> En una
      variable](#en-una-variable)
    - [<span class="toc-section-number">7.1.2</span> Outliers
      condicionales](#outliers-condicionales)
    - [<span class="toc-section-number">7.1.3</span> ¿Qué podemos hacer
      con los outliers?](#qué-podemos-hacer-con-los-outliers)
  - [<span class="toc-section-number">7.2</span> Normalidad y
    homogeneidad de Y](#normalidad-y-homogeneidad-de-y)
    - [<span class="toc-section-number">7.2.1</span>
      Ejercicio](#ejercicio-5)
  - [<span class="toc-section-number">7.3</span> Cantidad de
    ceros](#cantidad-de-ceros)
  - [<span class="toc-section-number">7.4</span> Relaciones entre
    variables](#relaciones-entre-variables)
    - [<span class="toc-section-number">7.4.1</span> Variables
      cualitativas](#variables-cualitativas)
    - [<span class="toc-section-number">7.4.2</span>
      Ejercicio](#ejercicio-6)
    - [<span class="toc-section-number">7.4.3</span> Variables
      cuantitativas](#variables-cuantitativas)
    - [<span class="toc-section-number">7.4.4</span> Variable
      cualitativa
      vs. cuantitativa](#variable-cualitativa-vs-cuantitativa)
    - [<span class="toc-section-number">7.4.5</span> Múltiples
      covariables](#múltiples-covariables)

## Objetivos del día 3

- Aprender la filosofía y funciones básicas del paquete de visualización
  de datos {ggplot2}.

- Entender funciones avanzadas de {ggplot2}.

- Ser capaces de generar gráficos publicables en un artículo científico.

- Aprender a explorar diferentes tipos de datos para su posterior
  análisis.

## Introducción a la visualización de datos

La visualización de datos es una disciplina cuyo fin es mapear datos de
forma gráfica para comunicar un mensaje. En investigación se usa
principalmente en los análisis exploratorios (durante la fase de
entendimiento de los datos) y en la comunicación de los resultados.

La representación gráfica de nuestras ideas o resultados de
investigación es esencial para comunicar de forma efectiva nuestra
interpretación de los datos y es clave si queremos causar cierto impacto
en el interlocutor. Algunos estudios sugieren que el tiempo medio que el
usuario emplea en ojear una página web es de unos segundos, pero si hay
algo que consigue atraer su atención entonces el tiempo se incrementa
exponencialmente. Este atractor en el mundo científico puede ser un buen
gráfico de resultados o un buen resumen gráfico.

<img src="images/buen-grafico.png" width="469"
alt="Esquema conceptual de un “buen gráfico” considerando la ejecución (cómo de bien está constituido) y la adecuación (qué estoy tratando de decir, a quién, dónde, por qué). Modificado de Good Charts de Scott Berinato." />

En este bloque vamos a aprender como representar de manera efectiva
muestros datos utilizando el paquete
{[ggplot2](https://ggplot2.tidyverse.org/)} de *tidyverse*. {ggplot2}
permite hacer gráficos razonablemente claros y estéticamente bonitos (es
decir, bien ejecutados) con poco tiempo y un esfuerzo pequeño. Es
extremadamente flexible y potente por lo que ha alcanzado gran
popularidad.

{ggplot2} está escrito en R siguiendo la [gramática de gráficos
(gg)](https://www.amazon.com/Grammar-Graphics-Statistics-Computing/dp/0387245448/ref=as_li_ss_tl).
Por ello, al utilizarlo, el usuario tiene que pensar como cuando está
haciendo un dibujo a mano y pensar en ir añadiendo diferentes capas a la
creación. El flujo de trabajo es crear un gráfico vacío, añadir una capa
con los datos, añadir una capa con las etiquetas, etc.

<img src="images/Buckley-Bay-Oil-Painting-Animation-6x8-2.gif"
width="441"
alt="Creación de una pintura por capas, como en la gramática de gráficos. https://www.donnacowan.ca/category/animated-gifs/" />

Como otros paquetes de *tidyverse*, {ggplot2} precisa de datos ordenados
para que ejecutarse de forma óptima.

💡Recordamos que en una tabla de datos ordenados (*Tidy data*) cada
columna representa una variable, cada fila es una observación y cada
celda contiene un único valor.

## Elementos básicos en un gráfico de {[ggplot2](https://ggplot2.tidyverse.org/)}

Se necesitan tres capas básicas para crear un gráfico con {ggplot2}:

- Los **datos** (*data*).

- Las **geometrías** (*geom*): definen el tipo de gráfico (de puntos, de
  barras, etc.).

- Los ***aesthetics***: características visuales de las geometrías
  (p. ej. la posición, el color) definidas por las variables de nuestros
  datos.

Las capas se conectan entre sí con el símbolo `+`, que siempre debe ir
colocado al final de la línea de código si queremos seguir añadiendo
capas al gráfico. Todas las capas que se pueden incluir están recogidas
en la [cheat sheet de {ggplot2} de
Posit](https://diegokoz.github.io/intro_ds/fuentes/ggplot2-cheatsheet-2.1-Spanish.pdf).

💡 Se utiliza el símbolo `+` porque {ggplot2} es anterior al *pipe*
(`|>`) y cambiar `+` por el *pipe* requeríría muchos reajustes en un
montón de paquetes.

``` r
# install.packages("titanic")
library(tidyverse)

#Cargamos los datos
titanic <- titanic::titanic_train 

head(titanic)
```

      PassengerId Survived Pclass
    1           1        0      3
    2           2        1      1
    3           3        1      3
    4           4        1      1
    5           5        0      3
    6           6        0      3
                                                     Name    Sex Age SibSp Parch
    1                             Braund, Mr. Owen Harris   male  22     1     0
    2 Cumings, Mrs. John Bradley (Florence Briggs Thayer) female  38     1     0
    3                              Heikkinen, Miss. Laina female  26     0     0
    4        Futrelle, Mrs. Jacques Heath (Lily May Peel) female  35     1     0
    5                            Allen, Mr. William Henry   male  35     0     0
    6                                    Moran, Mr. James   male  NA     0     0
                Ticket    Fare Cabin Embarked
    1        A/5 21171  7.2500              S
    2         PC 17599 71.2833   C85        C
    3 STON/O2. 3101282  7.9250              S
    4           113803 53.1000  C123        S
    5           373450  8.0500              S
    6           330877  8.4583              Q

``` r
# PassengerId: Id del pasajero
# Survived: 1-si, 0-no
# Pclass: clase del pasajero
# Name: nombre Name
# Sex: sexo
# Age: edad
# SibSp: numero de hermanos + parejas a bordo
# Parch: numero de progenitores + hijos a bordo
# Ticket: numero de billete
# Fare: tarifa
# Cabin: camarote
# Embarked: puerta de embarque

ggplot(data = titanic)
```

![](dia_3_visualizacion_files/figure-commonmark/capas_basicas-1.png)

``` r
ggplot(data = titanic, aes(x = Age, y = Fare)) 
```

![](dia_3_visualizacion_files/figure-commonmark/capas_basicas-2.png)

``` r
ggplot() + 
  geom_point(data = titanic, aes(x = Age, y = Fare)) #Los datos se pueden colocar dentro de la funcion ggplot si se van a usar los mismos en todas las geometrias
```

![](dia_3_visualizacion_files/figure-commonmark/capas_basicas-3.png)

``` r
ggplot() + 
  geom_jitter(data = titanic, aes(x = Pclass, y = Fare))
```

![](dia_3_visualizacion_files/figure-commonmark/capas_basicas-4.png)

``` r
# Se pueden combinar varias geometrias

ggplot(data = titanic) + 
  geom_point(aes(x = Age, y = Fare)) + 
  geom_smooth(aes(x = Age, y = Fare))
```

![](dia_3_visualizacion_files/figure-commonmark/capas_basicas-5.png)

``` r
# Como guardar plots satisfactorios

plotqmegusta <- ggplot() + 
  geom_point(data = titanic, aes(x = Age, y = Fare))

ggsave(filename = "farebyage.jpg", plot = plotqmegusta, width = 12, height = 9, units = "cm", dpi = 300)

ggsave(filename = "farebyage.pdf", plot = plotqmegusta, width = 12, height = 9, units = "cm")
```

💡Algunas revistas científicas dan especificaciones muy detalladas sobre
cómo tienen que ser los gráficos (p. ej.
[Science](https://www.science.org/content/page/instructions-preparing-initial-manuscript#preparation-of-figures)).
Cuando no tenemos una referencia clara recomendamos pensar en formato A4
(21 x 29,7 cm) y que todos los elementos visuales del gráfico queden
visibles cuando se guarda dentro de estos límites de tamaño.

#### Ejercicio

Representa un gráfico para ver la relación entre el sexo de los
pasajeros y la clase con la base de datos titanic.

### Aesthetics vs. argumentos

Los aesthetics cambian cada elemento de las geometrías. Los argumentos
estéticos cambian toda la geometría en conjunto.

``` r
ggplot(data = titanic) + 
  geom_point(aes(x = Age, y = Fare, color = Sex))
```

![](dia_3_visualizacion_files/figure-commonmark/aes_arguments-1.png)

``` r
# No es lo mismo que... 

ggplot(data = titanic) + 
  geom_point(aes(x = Age, y = Fare), color = "darkred") 
```

![](dia_3_visualizacion_files/figure-commonmark/aes_arguments-2.png)

En la ayuda de las funciones de {ggplot2} aparece una lista de los
*aesthetics* y los argumentos estéticos que acepta esa función. Se
pueden incluir tantos *aesthetics* como se deseen.

``` r
ggplot(data = titanic) + 
  geom_point(aes(x = Age, y = Fare, size = Pclass, shape = Sex, color = Embarked))
```

![](dia_3_visualizacion_files/figure-commonmark/aes-1.png)

``` r
summary(titanic$Pclass)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      1.000   2.000   3.000   2.309   3.000   3.000 

``` r
titanic <- titanic |> 
  mutate(Pclass = factor(Pclass, levels = c(3, 2, 1), 
    labels = c("Tercera", "Segunda", "Primera")))

summary(titanic$Pclass)
```

    Tercera Segunda Primera 
        491     184     216 

``` r
ggplot(data = titanic) + 
  geom_point(aes(x = Age, y = Fare, size = Pclass, shape = Sex, color = Embarked), alpha = 0.5)
```

![](dia_3_visualizacion_files/figure-commonmark/aes-2.png)

#### Ejercicio

¿Cómo modificarías el siguiente código para representar la puerta de
embarque con diferentes formas pero los puntos de color rosa?

``` r
ggplot(data = titanic) + 
  geom_point(aes(x = Age, y = Fare))
```

![](dia_3_visualizacion_files/figure-commonmark/ejer_2-1.png)

## {Ggplot2}: funciones avanzadas

<!--# ver la chuleta de ggplot2 -->

### Etiquetas

``` r
pnumcat <- ggplot(data = titanic) +    
  geom_boxplot(aes(x = Pclass, y = Age))  
pnumcat  
```

![](dia_3_visualizacion_files/figure-commonmark/etiquetas-1.png)

``` r
pnumcat +    
  labs(title = "Edad de los pasajeros según su clase",      
    x = "Clase",      
    y = "Edad (años)") #title, subtitle, x, y, caption
```

![](dia_3_visualizacion_files/figure-commonmark/etiquetas-2.png)

### Sistema de coordenadas

El sistema de coordenadas por defecto en un gráfico de `ggplot()` es el
cartesiano. Si queremos hacer zoom en nuestro gráfico tendremos que
cambiar los límites del sistema de coordenadas.

``` r
pnumcat +   
  coord_cartesian(ylim = c(0, 100))  
```

![](dia_3_visualizacion_files/figure-commonmark/coords-1.png)

#### Ejercicio

Cambia la posición de los ejes X e Y en el sistema de coordenadas de
pnumcat.

### Faceting

Los *facets* dividen el gráfico en subgráficos basados en el valor de
una o varias variables categóricas. Las facetas son muy útiles en
exploración de datos. Hay dos funciones para facetar: `facet_grid()` y
`facet_wrap()`.

``` r
miplot <- ggplot(data = titanic,    
  aes(x = Age, y = Fare, color = Sex)) +    
  geom_point()  
miplot  
```

![](dia_3_visualizacion_files/figure-commonmark/facet_1-1.png)

``` r
miplot +    
  facet_grid(Pclass~., scales = "free")  
```

![](dia_3_visualizacion_files/figure-commonmark/facet_1-2.png)

``` r
miplot +    
  facet_grid(Pclass~Embarked)  
```

![](dia_3_visualizacion_files/figure-commonmark/facet_1-3.png)

``` r
miplot +    
  facet_wrap(Embarked~., ncol=3)
```

![](dia_3_visualizacion_files/figure-commonmark/facet_1-4.png)

### Posición

Con las funciones y argumenos de posición podemos recolocar geometrias
que de otro modo ocuparían el mismo espacio.

``` r
ggplot(data = titanic) +    
  geom_bar(aes(x = Pclass, fill = Sex))  
```

![](dia_3_visualizacion_files/figure-commonmark/posicion-1.png)

``` r
ggplot(data = titanic) +    
  geom_bar(aes(x = Pclass, fill = Sex), 
    position = "dodge") #esquivar  
```

![](dia_3_visualizacion_files/figure-commonmark/posicion-2.png)

``` r
ggplot(data = titanic) +    
  geom_bar(aes(x = Pclass, fill = Sex), 
    position = "fill") #rellenar 
```

![](dia_3_visualizacion_files/figure-commonmark/posicion-3.png)

### Escalas

Sirven para personalizar los *aesthetics*. Las funciones de la familia
`scale` siempre tienen la misma estructura: scale \_ aesthetic que se
personaliza \_ tipo de escala (p. ej. continua, discreta, manual, etc.).

``` r
miplot +
  scale_color_manual(values = c("darkgreen", "chartreuse")) +
  scale_y_sqrt(breaks = c(9, 16, 25), labels = c("a", "b", "c"))  
```

![](dia_3_visualizacion_files/figure-commonmark/escala-1.png)

👀 Un error muy común es cambiar los ejes del gráfico con las funciones
`scale_x_continuous()` o `scale_y_continuous()` cuando lo que queremos
es hacer zoom. Fijate en las diferencias en el siguiente ejemplo.

``` r
ggplot(data = titanic) +    
  geom_boxplot(aes(x = Pclass, y = Age))  
```

![](dia_3_visualizacion_files/figure-commonmark/plot_limits-1.png)

``` r
ggplot(data = titanic) +    
  geom_boxplot(aes(x = Pclass, y = Age)) + 
  scale_y_continuous(limits = c(10, 80))  
```

![](dia_3_visualizacion_files/figure-commonmark/plot_limits-2.png)

``` r
ggplot(data = titanic) +    
  geom_boxplot(aes(x = Pclass, y = Age)) +   
  coord_cartesian(ylim = c(10, 80)) 
```

![](dia_3_visualizacion_files/figure-commonmark/plot_limits-3.png)

#### Ejercicio

¿Qué harías para cambiar la escala de la edad a un degradado de colores
de azul a amarillo en el siguiente gráfico?

``` r
ggplot(data = titanic, aes(x = Age, y = Fare, color = Age)) +   
  geom_point(size = 3)  
```

    Warning: Removed 177 rows containing missing values or values outside the scale range
    (`geom_point()`).

![](dia_3_visualizacion_files/figure-commonmark/ejer-1.png)

### Los colores en R

Las paletas de colores tipo *manual* y *gradient* se personalizan con el
nombre o código del color.

💡Con [esta herramienta](https://r-charts.com/colors/) puedes elegir
entre cientos de colores y con
[esta](https://medialab.github.io/iwanthue/) crear tu propia paleta.

Las paletas tipo *brewer* y *distiller* utilizan paletas de colores que
pueden ser secuenciales, cualitativas o divergentes, que aunque tienen
utilidad en gran variedad de situaciones, están diseñadas para trabajar
[con mapas o a escalas
pequeñas](https://colorbrewer2.org/#type=sequential&scheme=BuGn&n=3).

Las paletas HCL (*hue-chroma-luminance*) son paletas muy populares que
tienen su propia función (p. ej. colores para representar batimetría).
De entre ellas, *Viridis* se he vuelto muy popular porque está diseñada
para que personas con distintos tipos de daltonismo puedan distinguir
los colores.

``` r
RColorBrewer::display.brewer.all()   
```

![](dia_3_visualizacion_files/figure-commonmark/paletas-1.png)

``` r
RColorBrewer::brewer.pal(name = "Set3", n = 6) # para crear paleta  
```

    [1] "#8DD3C7" "#FFFFB3" "#BEBADA" "#FB8072" "#80B1D3" "#FDB462"

``` r
grDevices::hcl.pals() # HCL Palettes   
```

      [1] "Pastel 1"      "Dark 2"        "Dark 3"        "Set 2"        
      [5] "Set 3"         "Warm"          "Cold"          "Harmonic"     
      [9] "Dynamic"       "Grays"         "Light Grays"   "Blues 2"      
     [13] "Blues 3"       "Purples 2"     "Purples 3"     "Reds 2"       
     [17] "Reds 3"        "Greens 2"      "Greens 3"      "Oslo"         
     [21] "Purple-Blue"   "Red-Purple"    "Red-Blue"      "Purple-Orange"
     [25] "Purple-Yellow" "Blue-Yellow"   "Green-Yellow"  "Red-Yellow"   
     [29] "Heat"          "Heat 2"        "Terrain"       "Terrain 2"    
     [33] "Viridis"       "Plasma"        "Inferno"       "Rocket"       
     [37] "Mako"          "Dark Mint"     "Mint"          "BluGrn"       
     [41] "Teal"          "TealGrn"       "Emrld"         "BluYl"        
     [45] "ag_GrnYl"      "Peach"         "PinkYl"        "Burg"         
     [49] "BurgYl"        "RedOr"         "OrYel"         "Purp"         
     [53] "PurpOr"        "Sunset"        "Magenta"       "SunsetDark"   
     [57] "ag_Sunset"     "BrwnYl"        "YlOrRd"        "YlOrBr"       
     [61] "OrRd"          "Oranges"       "YlGn"          "YlGnBu"       
     [65] "Reds"          "RdPu"          "PuRd"          "Purples"      
     [69] "PuBuGn"        "PuBu"          "Greens"        "BuGn"         
     [73] "GnBu"          "BuPu"          "Blues"         "Lajolla"      
     [77] "Turku"         "Hawaii"        "Batlow"        "Blue-Red"     
     [81] "Blue-Red 2"    "Blue-Red 3"    "Red-Green"     "Purple-Green" 
     [85] "Purple-Brown"  "Green-Brown"   "Blue-Yellow 2" "Blue-Yellow 3"
     [89] "Green-Orange"  "Cyan-Magenta"  "Tropic"        "Broc"         
     [93] "Cork"          "Vik"           "Berlin"        "Lisbon"       
     [97] "Tofino"        "ArmyRose"      "Earth"         "Fall"         
    [101] "Geyser"        "TealRose"      "Temps"         "PuOr"         
    [105] "RdBu"          "RdGy"          "PiYG"          "PRGn"         
    [109] "BrBG"          "RdYlBu"        "RdYlGn"        "Spectral"     
    [113] "Zissou 1"      "Cividis"       "Roma"         

``` r
# X11() 
# example("hcl.colors") 
# hcl.colors(n = 6, palette = "Lajolla") # para crear paleta 

# Viridis   
ggplot(data = titanic, aes(x = Age, y = Fare, color = Age)) +
  geom_point() +    
  scale_color_gradientn(colours = hcl.colors(12, "viridis")) 
```

![](dia_3_visualizacion_files/figure-commonmark/paletas-2.png)

``` r
ggplot(data = titanic, aes(x = Age, y = Fare, color = Age)) +    
  geom_point() +    
  scale_color_viridis_c()
```

![](dia_3_visualizacion_files/figure-commonmark/paletas-3.png)

💡[Aquí](https://ggplot2-book.org/scales-colour) puedes encontrar más
información sobre cómo utilizar colores en {ggplot2}.

### Temas

`theme()` permite la personalización completa de todos los elementos del
gráfico. Los argumentos dentro de la función definen la parte del
gráfico a cambiar. Se les asigna una función de cambio según el elemento
a cambiar dentro de esa parte (parte.del.gráfico =
elemento_a_cambiar(…)): *line*, *rect*, *text*.

``` r
?theme  
miplot +    
  theme(axis.title.x = element_text(color = "red", face = "bold"))  
```

![](dia_3_visualizacion_files/figure-commonmark/theme-1.png)

#### Ejercicio

Dibuja una linea negra que represente los ejes de miplot y quita el
fondo del gráfico.

Existen temas configurados por defecto y un asistente que te ayuda a
personalizar el gráfico.

``` r
miplot + theme_classic()  
```

![](dia_3_visualizacion_files/figure-commonmark/temas_defecto-1.png)

``` r
miplot + theme_light()  
```

![](dia_3_visualizacion_files/figure-commonmark/temas_defecto-2.png)

``` r
miplot + theme_void() 
```

![](dia_3_visualizacion_files/figure-commonmark/temas_defecto-3.png)

#### GgthemeAssist

``` r
# install.packages("ggThemeAssist")  
miplot
```

    Warning: Removed 177 rows containing missing values or values outside the scale range
    (`geom_point()`).

![](dia_3_visualizacion_files/figure-commonmark/theme_assist-1.png)

## Gráficos multipaneles

La librería {patchwork} permite añadir gráficos ([y también
tablas](https://www.tidyverse.org/blog/2024/09/patchwork-1-3-0/)) entre
sí como si fueran diferentes capas.

``` r
# install.packages("patchwork") 
library(patchwork)  

miplot + pnumcat 
```

![](dia_3_visualizacion_files/figure-commonmark/patchwork-1.png)

``` r
miplot / pnumcat   
```

![](dia_3_visualizacion_files/figure-commonmark/patchwork-2.png)

``` r
miplot / pnumcat +    
  plot_annotation(tag_levels = "a", tag_suffix = ")")  
```

![](dia_3_visualizacion_files/figure-commonmark/patchwork-3.png)

En [este
enlace](https://patchwork.data-imaginist.com/articles/guides/layout.html)
puedes ver cómo personalizar mucho más la disposición de los diferentes
elementos de la composición.

## Enlaces de interés sobre visualización de datos

- [Guía de {ggplot2} de
  Posit](https://diegokoz.github.io/intro_ds/fuentes/ggplot2-cheatsheet-2.1-Spanish.pdf)

- [Construye un gráfico capa a
  capa](https://rpubs.com/hadley/ggplot2-layers)

- [Elegant graphics for data analysis](https://ggplot2-book.org/)

- [Tutorial de {ggplot2} de Cedric
  Scherer](https://www.cedricscherer.com/2019/08/05/a-ggplot2-tutorial-for-beautiful-plotting-in-r/)

- [Effective Visual Communication for the Quantitative
  Scientist](https://ascpt.onlinelibrary.wiley.com/doi/full/10.1002/psp4.12455)

- [Graphics principles](https://graphicsprinciples.github.io/): el tipo
  de gráfico que escojamos va a depender del tipo de variable y del
  mensaje que queramos transmitir (es decir, del propósito).

## La exploración de datos y su importancia

Cuando queremos entender y/o predecir un patrón o un proceso (variable
dependiente o respuesta; *y*), lo modelizamos en función de otras
variables que pensamos que lo explican o lo predicen (variables
independientes, covariables o explicativas; *x*). Todas ellas pueden ser
a su vez **cualitativas o cuantitativas**.

![Tipos de variables](images/tipos_variables.png)

La exploración de datos puede llevar hasta el 50% del tiempo de
análisis. Es imprescindible para evitar errores tipo I (determinar que
hay relación entre dos variables cuando no existe), errores tipo II
(determinar que no hay relación entre dos variables cuando existe),
encontrar patrones no lineales o evitar que el resultado esté
determinados por unos pocos puntos discordantes (*outliers*). A
continuación nos vamos a enfocar en herramientas gráficas para la
exploración de variables cualitativas y cuantitativas aunque también
mostraremos test estadísticos que pueden servir (de normalidad,
homogeneidad, etc.). Seguiremos el protocolo de análisis exploratorio de
datos publicado por Zuur, Ieno, and Elphick (2010).

### Detección de outliers

#### En una variable

``` r
# Boxplots
ggplot(data = titanic) + 
  geom_boxplot(aes(y = Age))
```

![](dia_3_visualizacion_files/figure-commonmark/outliers_one-1.png)

``` r
# Jitter
ggplot(data = titanic) + 
  geom_jitter(aes(x = 1, y = Age))
```

![](dia_3_visualizacion_files/figure-commonmark/outliers_one-2.png)

``` r
# group = 1 hace que considere toda la variable como un todo

library(palmerpenguins)

# Cleveland plot
penguins |> 
  mutate(orden = 1:nrow(penguins)) |> 
  ggplot() + 
  geom_point(aes(x = body_mass_g, y = orden)) +
  theme(panel.grid = element_blank(),
    panel.grid.major.y = element_line(size = 0.1, color = "grey90"), 
    panel.background = element_rect(fill = "white", color = "black")) 
```

![](dia_3_visualizacion_files/figure-commonmark/outliers_one-3.png)

#### Outliers condicionales

``` r
# De variables continuas codicionados por variables categóricas

# Cleveland plot por grupos
penguins |> 
  group_by(island) |> 
  mutate(orden = 1:n()) |> 
  ggplot() + 
  geom_point(aes(x = body_mass_g, y = orden, col = island)) +
  facet_grid(island ~ ., scales = "free_y", space = "free_y") + 
  theme(panel.grid = element_blank(),
        panel.grid.major.y = element_line(size = 0.1, color = "grey90"), 
    panel.background = element_rect(fill = "white", color = "black"),
        legend.position = "none")
```

![](dia_3_visualizacion_files/figure-commonmark/outliers_dos-1.png)

``` r
# Boxplot
ggplot(data = titanic) + 
  geom_boxplot(aes(x = Pclass, y = Age)) 
```

![](dia_3_visualizacion_files/figure-commonmark/outliers_dos-2.png)

``` r
# De variables continuas codicionados por otras variables continuas

ggplot(data = titanic) + 
  geom_point(aes(x = Age, y = Fare))
```

![](dia_3_visualizacion_files/figure-commonmark/outliers_dos-3.png)

#### ¿Qué podemos hacer con los outliers?

``` r
# Identificar outliers: ¿a qué observación pertenecen?

# install.packages("plotly")
library(plotly)

# ggplotly(miplot) 

titanic |> 
  mutate(orden = 1:nrow(titanic)) |> 
  ggplot() + 
  geom_point(aes(x = Age, y = Fare)) +
  geom_text(aes(x = Age, y = Fare, label = orden), col = "red", size = 2) 
```

![](dia_3_visualizacion_files/figure-commonmark/outliers_gestion-1.png)

``` r
# Tras su identificación podemos: ¿quitarlos?, ¿ignorarlos?, comprobar los residuos del modelo que ajustemos para estas observaciones, ajustar el modelo con y sin estos datos, transformar la variable.

# Gestionar outliers con transformaciones

pellets <- read_delim(file = "pellets.txt") 
# Longitud y peso de heces de un gusano marino

ggplot(data = pellets) +
  geom_boxplot(aes(y = Length)) 
```

![](dia_3_visualizacion_files/figure-commonmark/outliers_gestion-2.png)

``` r
ggplot(data = pellets) +
  geom_boxplot(aes(y = log10(Length))) 
```

![](dia_3_visualizacion_files/figure-commonmark/outliers_gestion-3.png)

``` r
# Esta transformación acorta distancia en valores altos (quita outliers)
# pero alarga distancias en valores bajos, sobre todo cuanto más cerca de 0 
```

### Normalidad y homogeneidad de Y

Los supuestos de normalidad y homogeneidad en las regresiones lineales
deberían comprobarse sobre los residuos (diferencia entre el valor
observado y el valor predicho) de la regresión a lo largo de las
variables explicativas. Sin embargo, para esto necesitaríamos tener
muchas observaciones en cada valor de la variable explicativa. En
ecología esto rara vez ocurre así que se acaban comprobando los
supuestos sobre el total de los residuos. También se exploran las
variables respuesta en este sentido, ya que si estas son normales y
homogéneas es probable que los residuos también lo sean.

<img src="images/clipboard-1650594255.png" width="367"
alt="Visualización de las asunciones de normalidad y homogeneidad en regresiones lineales. Los puntos representan los valores observados y la línea es la línea de regresión. En cada valor de la covariable asumiminos que las observaciones están distribuidas de forma normal y con la misma dispersión. Extraido de Zuur, Ieno, and Elphick (2010)." />

``` r
# Una variable respuesta en las categorias de otra explicativa

ggplot(data = titanic) + 
  geom_boxplot(aes(y = Fare, x = Pclass), alpha = 0.7)
```

![](dia_3_visualizacion_files/figure-commonmark/homogeneidad-1.png)

``` r
# La relación de dos variables en las categorias de otra

ggplot(data = penguins) + 
  geom_point(aes(y = body_mass_g, x = flipper_length_mm)) +
  facet_wrap(.~species)
```

![](dia_3_visualizacion_files/figure-commonmark/homogeneidad-2.png)

``` r
# Test de homogeneidad

# instal.packages(lawstat)
library(lawstat)

bartlett.test(Fare~Pclass, data = titanic) 
```


        Bartlett test of homogeneity of variances

    data:  Fare by Pclass
    Bartlett's K-squared = 1306.9, df = 2, p-value < 2.2e-16

``` r
# p < 0.05 se rechaza hipótesis nula 
# H0: distribución de la variable = distribución homogénea

lawstat::levene.test(y = titanic$Fare, group = titanic$Pclass)
```


        Modified robust Brown-Forsythe Levene-type test based on the absolute
        deviations from the median

    data:  titanic$Fare
    Test Statistic = 118.57, p-value < 2.2e-16

``` r
# Pensar en los plots, en los residuos del modelo y no fiarse 100% de estos tests
```

``` r
# Histogramas y curvas de densidad para una variable

ggplot(data = titanic) + 
  geom_histogram(aes(x = Age))
```

![](dia_3_visualizacion_files/figure-commonmark/normalidad-1.png)

``` r
ggplot(data = titanic) + 
  geom_density(aes(x = Age))
```

![](dia_3_visualizacion_files/figure-commonmark/normalidad-2.png)

``` r
ggplot(data = titanic) + 
  geom_boxplot(aes(x = Age))
```

![](dia_3_visualizacion_files/figure-commonmark/normalidad-3.png)

``` r
#Con variables cualitativas

summary(titanic$Pclass)
```

    Tercera Segunda Primera 
        491     184     216 

``` r
ggplot(data = titanic) + 
  geom_bar(aes(x = Pclass))
```

![](dia_3_visualizacion_files/figure-commonmark/normalidad-4.png)

``` r
# Una variable en las categorias de otra

titanic |> 
  ggplot() +
  geom_histogram(aes(x = Age), bins = 20) +
  facet_grid(Pclass~.) 
```

![](dia_3_visualizacion_files/figure-commonmark/normalidad-5.png)

``` r
ggplot(penguins) +
  geom_density(aes(x = body_mass_g), color = "darkred") +
  geom_density(aes(x = body_mass_g, group = island, linetype = island))
```

![](dia_3_visualizacion_files/figure-commonmark/normalidad-6.png)

``` r
# Q-Q plots 

ggplot(titanic) +
  geom_qq(aes(sample = Age)) +
  geom_qq_line(aes(sample = Age), color = "darkred") +
  labs(x = "Cuantiles teóricos", y = "Edad")
```

![](dia_3_visualizacion_files/figure-commonmark/normalidad-7.png)

``` r
ggplot(titanic) +
  geom_qq(aes(sample = Age)) +
  geom_qq_line(aes(sample = Age), color = "darkred") +
  labs(x = "Cuantiles teóricos", y = "Edad") +
  facet_grid(.~Pclass)
```

![](dia_3_visualizacion_files/figure-commonmark/normalidad-8.png)

``` r
# Tests de normalidad 

a <- rnorm(800, mean = 0, sd = 1) # Creo dos variables normales y estandarizadas 
b <- rnorm(50, mean = 0, sd = 1)

hist(a)
```

![](dia_3_visualizacion_files/figure-commonmark/normalidad-9.png)

``` r
hist(b)
```

![](dia_3_visualizacion_files/figure-commonmark/normalidad-10.png)

``` r
shapiro.test(a) # p < 0.05 se rechaza hipótesis nula 
```


        Shapiro-Wilk normality test

    data:  a
    W = 0.99877, p-value = 0.8688

``` r
# H0: distribución de la variable = distribución normal
shapiro.test(b)
```


        Shapiro-Wilk normality test

    data:  b
    W = 0.96761, p-value = 0.1848

``` r
ks.test(a, "pnorm") # Kolmogorow-Smirnoff
```


        Asymptotic one-sample Kolmogorov-Smirnov test

    data:  a
    D = 0.026181, p-value = 0.6432
    alternative hypothesis: two-sided

``` r
ks.test(b, "pnorm")
```


        Exact one-sample Kolmogorov-Smirnov test

    data:  b
    D = 0.092588, p-value = 0.7499
    alternative hypothesis: two-sided

``` r
# OJO No se recomienda usar tests para comprobar el supuesto de la normalidad de los residuos/variables, ya que están muy sesgados al número de observaciones. Además, también se permite cierta desviación de la normalidad en los residuos. Los tests son muy restrictivos
```

#### Ejercicio

- Describe la distribución de las tarifas pagadas por los pasajeros con
  la base de datos titanic.

- Haz un histograma de las tarifas y cambia el número de intervalos para
  ver como cambia la distribución de la variable.

### Cantidad de ceros

``` r
# En una variable

titanic |> 
  ggplot() + 
  geom_bar(aes(x = SibSp == 0))
```

![](dia_3_visualizacion_files/figure-commonmark/ceros-1.png)

``` r
# En una variable respecto a la otra

titanic |> 
  ggplot() + 
  geom_count(aes(x = SibSp == 0, y = Parch == 0))
```

![](dia_3_visualizacion_files/figure-commonmark/ceros-2.png)

### Relaciones entre variables

La **colinealidad** es la existencia de correlación entre covariables de
un modelo. Un ejemplo típico en ecología es la altitud con la
precipitación o la temperatura. Si se ignora puede ocurrir que no haya
nada significativo en el modelo o situaciones absurdas como que al
quitar una covariable, el resto se hagan significativas. Si introducimos
una variable en el modelo correlacionada con otras significa que la
información proporcionada por esta variable ya está incluida en el resto
y, además, aumentamos la varianza asociada a la estimación de nuestros
parámetros por lo que podemos estar influyendo la significación de los
mismos.

Aparte de las relaciones entre covariables, es necesario explorar las
**relaciones entre la variable respuesta y las explicativas**, sobre
todo para encontrar posibles patrones no lineales que gestionar en los
modelos de regresión lineal. Explorando las relaciones entre la variable
respuesta y alguna explicativa en los niveles de otras variables
explicatvas podremos explorar **interacciones**.

#### Variables cualitativas

``` r
ggplot(data = titanic) + 
  geom_count(aes(x = Sex, y = Survived))
```

![](dia_3_visualizacion_files/figure-commonmark/dos_cat-1.png)

``` r
titanic <- titanic |> 
  mutate(Survived = factor(Survived, levels = c(0, 1), labels = c("Muerto", "Vivo")))

ggplot(data = titanic) + 
  geom_count(aes(x = Sex, y = Survived))
```

![](dia_3_visualizacion_files/figure-commonmark/dos_cat-2.png)

``` r
table(titanic$Sex, titanic$Survived)
```

            
             Muerto Vivo
      female     81  233
      male      468  109

#### Ejercicio

Haz un gráfico para explorar la relación entre la clase del billete y la
supervivencia con la base de datos titanic.

#### Variables cuantitativas

``` r
pnum <- ggplot(data = titanic, aes(x = Age, y = Fare)) + 
  geom_point(alpha = 0.5)

pnum
```

![](dia_3_visualizacion_files/figure-commonmark/dos_num-1.png)

``` r
pnum + 
  geom_smooth()
```

![](dia_3_visualizacion_files/figure-commonmark/dos_num-2.png)

``` r
# Relación entre variables en los niveles de una tercera

pnum + 
  geom_smooth() +
  facet_grid(.~Pclass)
```

![](dia_3_visualizacion_files/figure-commonmark/dos_num-3.png)

Cuando encontramos relaciones no lineales, podemos **transformar la
variable explicativa** para mejorar la linealidad con `log()`, `sqrt()`,
etc. Esto puede reducir el peso de los outliers y mejorar también la
normalidad y homogeneidad de los residuos. Las desventajas son que la
transformación puede afectar a la relación entre X e Y y entre las
covariables y sus interacciones y es necesario deshacer la
transformación a la hora de representar.

#### Variable cualitativa vs. cuantitativa

``` r
ggplot(data = titanic) + 
  geom_boxplot(aes(x = Pclass, y = Age))
```

![](dia_3_visualizacion_files/figure-commonmark/cat_num-1.png)

``` r
ggplot(data = titanic) + 
  geom_violin(aes(x = Pclass, y = Age), draw_quantiles = 0.5) 
```

![](dia_3_visualizacion_files/figure-commonmark/cat_num-2.png)

``` r
ggplot(data = titanic) + 
  geom_violin(aes(x = Pclass, y = Age, fill = Sex), draw_quantiles = 0.5)
```

![](dia_3_visualizacion_files/figure-commonmark/cat_num-3.png)

💡Echa un vistazo al paquete
{[ggdist](https://mjskay.github.io/ggdist/)} y los [raincloud
plots](https://www.cedricscherer.com/2021/06/06/visualizing-distributions-with-raincloud-plots-and-how-to-create-them-with-ggplot2/)
para combinar diferentes geoms relacionadas con la distribución de los
datos.

#### Múltiples covariables

[ggpairs()](https://ggobi.github.io/ggally/reference/ggpairs.html) de
{GGally} permite hacer **gráficos multipanel** donde, de un vistazo, se
ve la distribución de cada variable dentro de una base de datos y la
relación de las variables todas entre sí. Es muy útil en exploración de
datos.

``` r
# install.packages("GGally")
library(GGally)

penguins |> select(bill_length_mm:body_mass_g) |> 
  ggpairs()
```

![](dia_3_visualizacion_files/figure-commonmark/pairs-1.png)

``` r
penguins |> select(bill_length_mm:body_mass_g, sex) |> 
  filter(!is.na(sex)) |> 
  ggpairs(aes(color = sex),
  lower = list(continuous = wrap("smooth", method = "loess", color = "darkslategrey", alpha = 0.1)),
  diag = list(continuous = wrap("barDiag")))
```

![](dia_3_visualizacion_files/figure-commonmark/pairs-2.png)

Los **correlogramas**, gráficos cuadrados o triangulares que representan
matrices de correlaciones entre variables, son muy útiles para resumir
en un vistazo las relaciones entre las variables de una base de datos.
En [este artículo](https://rpubs.com/Alema/1000474) encontrarás
tutoriales para realizarlos utilizando diferente paquetes.

``` r
penguins_cor <- penguins |> select(bill_length_mm:body_mass_g) |> 
  na.omit() |> 
  cor() 

# install.packages("corrplot")

library(corrplot)
```

    corrplot 0.95 loaded

``` r
corrplot(penguins_cor)
```

![](dia_3_visualizacion_files/figure-commonmark/corr-1.png)

<details>
<summary>
Session Info
</summary>

``` r
Sys.time()
```

    [1] "2024-12-04 01:16:42 CET"

``` r
sessionInfo()
```

    R version 4.4.2 (2024-10-31 ucrt)
    Platform: x86_64-w64-mingw32/x64
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
     [1] corrplot_0.95        GGally_2.2.1         lawstat_3.6         
     [4] plotly_4.10.4        palmerpenguins_0.1.1 patchwork_1.3.0     
     [7] lubridate_1.9.3      forcats_1.0.0        stringr_1.5.1       
    [10] dplyr_1.1.4          purrr_1.0.2          readr_2.1.5         
    [13] tidyr_1.3.1          tibble_3.2.1         ggplot2_3.5.1       
    [16] tidyverse_2.0.0     

    loaded via a namespace (and not attached):
     [1] gtable_0.3.6       xfun_0.49          htmlwidgets_1.6.4  lattice_0.22-6    
     [5] tzdb_0.4.0         Rdpack_2.6.2       vctrs_0.6.5        tools_4.4.2       
     [9] generics_0.1.3     parallel_4.4.2     fansi_1.0.6        pkgconfig_2.0.3   
    [13] Matrix_1.7-1       data.table_1.16.2  RColorBrewer_1.1-3 lifecycle_1.0.4   
    [17] compiler_4.4.2     farver_2.1.2       textshaping_0.4.0  munsell_0.5.1     
    [21] Kendall_2.2.1      htmltools_0.5.8.1  yaml_2.3.10        lazyeval_0.2.2    
    [25] pillar_1.9.0       crayon_1.5.3       boot_1.3-31        nlme_3.1-166      
    [29] ggstats_0.7.0      tidyselect_1.2.1   digest_0.6.37      mvtnorm_1.3-2     
    [33] stringi_1.8.4      labeling_0.4.3     splines_4.4.2      fastmap_1.2.0     
    [37] grid_4.4.2         colorspace_2.1-1   cli_3.6.3          magrittr_2.0.3    
    [41] utf8_1.2.4         withr_3.0.2        scales_1.3.0       bit64_4.5.2       
    [45] timechange_0.3.0   rmarkdown_2.29     httr_1.4.7         bit_4.5.0         
    [49] ragg_1.3.3         titanic_0.1.0      hms_1.1.3          evaluate_1.0.1    
    [53] knitr_1.49         rbibutils_2.3      viridisLite_0.4.2  mgcv_1.9-1        
    [57] rlang_1.1.4        Rcpp_1.0.13-1      glue_1.8.0         rstudioapi_0.17.1 
    [61] vroom_1.6.5        jsonlite_1.8.9     plyr_1.8.9         R6_2.5.1          
    [65] systemfonts_1.1.0 

</details>

<div id="refs" class="references csl-bib-body hanging-indent"
entry-spacing="0">

<div id="ref-zuur2010" class="csl-entry">

Zuur, Alain F., Elena N. Ieno, and Chris S. Elphick. 2010. “A Protocol
for Data Exploration to Avoid Common Statistical Problems: *Data
Exploration*.” *Methods in Ecology and Evolution* 1 (1): 3–14.
<https://doi.org/10.1111/j.2041-210X.2009.00001.x>.

</div>

</div>
