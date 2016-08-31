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

