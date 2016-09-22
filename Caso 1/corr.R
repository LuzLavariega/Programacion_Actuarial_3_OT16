#Parte 3 - Correlación

directorio ="~/Progra/Programacion_Actuarial_3_OT16/specdata" 
#Este sólo aplica para mi, por lo que se debe modificar para otro usuario

corr <- function(directorio, horizonte=0){
  correlacion <- vector("numeric",0)
  j <- 1
  for (i in 1:332){
    id123 <- formatC(i,width = 3 ,flag = "0")
    readen <- read.csv(paste(id123, ".csv",sep=""),header = T)
    midata <- data.frame(readen$sulfate,readen$nitrate)
    completo <- midata[complete.cases(midata),]
    n <- nrow(completo)
    if (n > horizonte){
      length(correlacion) <- length(correlacion)+1
      correlacion[j] <- cor(completo[,1],completo[,2])
      j <- j + 1
    }
  }
  correlacion
}
