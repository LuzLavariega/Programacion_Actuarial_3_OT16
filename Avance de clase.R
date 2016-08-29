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