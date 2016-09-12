m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)
#Cambio de dimensiones de 2x3 a 3x2
dim(m) <- c(3,2)
m
#Crea un matriz con datos
m <- matrix(1:6,3,2)
m

m <- matrix(1:6,3,3,T)
m
str(m)
dim(m) <- c(2,5) #Esto da error porque las dimensiones no concuerdan

x <- c(1,2,3)
y <- c("a","b","c")
z <- c(x,y)
z

m1 <- rbind(m,x)
m1
m2 <- cbind(m,x)
m2
rbind(m1,y)
cbind(m2,y)


#Factores

x <- factor(c("si","no","si","no","si","no"),levels = c("si","no"))
x
table(x)
unclass(x)

x <- factor(c("azul","azul","rojo","azul","amarillo","verde","azul"))
x
table(x)


#Valores Faltantes

x <- c(1,2,NA,10,3)
is.na(x)
is.nan(x)

x <- c(1,2,NaN,10,3)
is.na(x)
is.nan(x)


#Data Frames

x <- data.frame(Erick = 1:4 , Lori = c(T,T,F,F))
row.names(x) <- c("Primero","segundo","tercero","cuarto")
x
nrow(x)
ncol(x)
attributes(x)
names(x) <- c("Yarely","Karen")
x
#Los nombres no son exclusivos de los data frames
x <- 1:3
names(x) #Null
names(x) <- c("Hugo","Paco","Luis")
x

x <- list(a=1:10,b=100:91,c=51:60)
x
names(x) <- c("Seq1","Seq2","Seq3")
x

m <- matrix(1:4,2,2)
m
attributes(m)
dimnames(m) <- list(c("fil1","fil2"),c("col1","col2"))
m


#lectura de datos

getwd()
setwd("~/7 Semestre/Progra/Programacion_Actuarial_3_OT16")
data <- read.csv("Datos_S&P.csv")
data <- read.table("Datos_S&P.csv",T,",")
data 


#Uso de dput y dget
y <- data.frame(a=1,b="a")
dput(y)
dput(y,file="y.R")
nueva.y <- dget("y.R")
y
nueva.y

x <- "Programación Actuarial III"
y <- data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")
rm(x,y)
source("data.R")

aq <- data.frame(airquality)
aq
dput(aq,file="aq.R")

con <- url("http://www.fcfm.buap.mx/","r")
x <- readLines(con,7)
x

#Creamos un vector
x <- c("a","b","c","c","d","e")
#Veamos el vector
x
x[1]
x[2]
#También podemos extraer una secuencia de elementos
x[1:4]
#Es posible extraer los elementos que cumplen una restricción
x[x>"b"]
#De maera equivalente se puede obtener un vector lógico
u <- x=="c"
u
x[u]

#Creamos una lista
x <- list(foo=1:4, bar=0.6)
#Extraemos el primer elemento de la lista
#este elemento es una lista que conriene una secuencia
x[1]

#Extraemos nuevamente el primer elemento de la lista
#ahora el elemento es la secuencia en si
x[[1]]
#Extraemos un elemento por nombre
x$bar
x[["bar"]]
x["bar"]

#Creamos una lista de 3 elementos
x <- list(foo=1:4, bar=0.6, baz="Hola")
#Extraemos el primer y tercer elemento de la lista
x[c(1,3)]
x[[c(1,3)]] #Esto toma el tercer elemento del primer elemento de la lista

#Se puede extraer elementos de los elementos extraídos
x <- list(a=list(10,12,14),b=list(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]

#Subconjuntos de una matriz
x <- matrix(1:6,2,3)
x
#El resultado es un vector
x[1,2]
x[2,1]
x[1,]
x[,2]
#Con drop=FALSE, se mantiene la dimensión y el resultao será una matriz
x[1,2, drop=FALSE]
#Si usamos drop=FALSE, el resultado será una matriz
x[1, ,drop=FALSE]

#R puede encontrar el nombre de algunos objetos de manera parcial con $,
#también podría hacerlo con [[]] pero necesitaríamos hacerlo de manera explicita
x <- list(aarvark=1:5)
x$a
x[["a"]]
x[["a", exact=FALSE]]

#Valores faltantes
airquality[1:6,]
completos <- complete.cases(airquality)
completos
airquality[completos,][1:6,]

#Operacciones vectorizadas
x <- 1:4; y <- 6:9
x+y
x>2
x>=2
y == 8
x*y
x/y
#Operaciones con matrices
x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x*y
x/y
x%*%y

#ciclo while
z <- 5
while(z>=3 && z <=10) {
  print(z)
  moneda <- rbinom(1,1,0.5) #cada intento es independiente del anterior distribucion binomial
  if (moneda==1){ #caminata aleatoria
   z <- z + 1
   }else {
    z <- z -1
   }
}


#Modificar el anterior para que guarde en un solo vector 
x <- c()
z <- 5

while (z>=3  && z<= 10) {
  x <- c(x,z)
  moneda <- rbinom(1,1,0.5)
  
  if (moneda==1)
    
  { 
    z <- z + 1
  }else {
    z <- z -1
    
  }
  
}
x

plot(x) #plot grafic
x

#El mismo anterior pero como el profe


z <- 5
caminata<- vector("numeric")
while (z>=3  && z<= 10) {
  caminata <- c(caminata,z)
  moneda <- rbinom(1,1,0.5)
  
  if (moneda==1)
    
  { 
    z <- z + 0.5
  }else {
    z <- z -0.5
    
  }
  
}
caminata
#plot(caminata)

plot(caminata, type= "l")

#practica

x <- c()
for(i in 1:100){
  z <- 5
  
  while (z>=3  && z<= 10) {
    
    moneda <- rbinom(1,1,0.5)
    
    if (moneda==1)
      
    { 
      z <- z + 1
    }else {
      z <- z -1
      
    }
    
  }
  if(z==2){
    x <- c(x,"Down")
  } else {if(z == 11){x <- c(x, "UP")}}
  
}
table(x)

