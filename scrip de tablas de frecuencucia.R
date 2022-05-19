#_____Tablas de frecuencias________

# 1.- Importar la matriz iris

data("iris")

# 2.- Exploración la matriz iris
#dimensión de la matriz tiene 150 individuos y 5 variables
dim(iris)

#3.- Nombre de las variables
colnames(iris)

#4 tipos de variables

str(iris)

# 5.- Visualización de una variable especifica
iris$Species

#6.-En busca de valores perdidos 
anyNA(iris)
#--------------------------------------------
#7.- Generación de las tablas de frecuencia
#---------------------------------------------


#1.- Posicionarnos en una variable especifica Petal. lenght.
# Indico que me acorte el nombre a PL, lo que resulte de esa indicación quiero que
# lo ponga en formato tabla, lo que resulte aduiera un formato de data.frame
#A partir de lo anterior voy a generar una nueva variable (objeto)
#tabla_Pl
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))


#2.- Frecuencia absoluta 
tabla_PL

#3.- Se contruye la tabla de frecuencias completa redondeando
# a 3 decimales

transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

#4.- Agrupacion de variables 8 claes
tabla_clases<-as.data.frame(table(Petal.Lenght=factor(cut(iris$Petal.Length,
                                                          breaks = 8))))
#5.- Visualizacion de la tabla
tabla_clases

#6.-Contruccion de tabla de frecuencias completa redondeado a 3 decimales
tabla<-transform(tabla_clases,
                 freqAc=cumsum(Freq),
                 Rel=round(prop.table(Freq),3),
                 RelAc=round(cumsum(prop.table(Freq)),3))
#7.- Visualizar la tabla.
tabla