#Parte 2 - Completos

directorio ="~/Progra/Programacion_Actuarial_3_OT16/specdata" 
#Este sólo aplica para mi, por lo que se debe modificar para otro usuario

completos <- function(directorio, id = 1:332){
  nobs <- vector("numeric", length(id))
  j <- 1
  for (i in id){
    id123 <- formatC(i,width = 3 ,flag = "0")
    readen <- read.csv(paste(id123, ".csv",sep=""), header=T)
    x <- (readen$sulfate)
    y <- (readen$nitrate)
    midata <- data.frame(x, y)
    nobs[j] <- nrow(midata[complete.cases(midata),])
    j <- j+1
  }
  datos <- data.frame(id=id,nobs=nobs)
  datos
}
