
#Ejercicio 1

ggplot(data = titanic, aes(x = Sex, y = Pclass)) + geom_count(color = "purple")

#Ejercicio 2: 

ggplot(data = titanic) + geom_point(aes(x = Age, y = Fare, shape = Embarked), color = "darkred")


#Ejercicio 3

ggplot(data = titanic, aes(x = Fare)) + geom_histogram() + geom_density(color = "red")

ggplot(data = titanic) + geom_density(aes(x = Fare))

ggplot(data = titanic) + geom_boxplot(aes(y = Fare, fill = Pclass, x=Pclass)) + geom_histogram()

#Ejercicio 4

ggplot(data = titanic) + geom_bar(aes(x = Survived, fill = Pclass))

ggplot(data = titanic) + geom_bar(aes(x = Pclass, fill = Survived))

#Ejercicio 5

pnumcat + coord_flip()

#Ejercicio 6

ggplot(data = titanic, aes(x = Age, y = Fare, color = Age)) + geom_point() + scale_color_gradient(low = "blue", high = "yellow")

#Ejercicio 7

miplot2 + theme(panel.background = element_rect(fill = "transparent"), axis.line = element_line(color = "black", size = 1))




