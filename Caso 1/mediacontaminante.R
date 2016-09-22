#Parte 1 - Media Contaminante

directorio ="~/Progra/Programacion_Actuarial_3_OT16/specdata" 
#Este sólo aplica para mi, por lo que se debe modificar para otro usuario

mediacontaminante <- function(directorio,contaminante,id = 1:332){
  j <- numeric()
  for (i in id){
    id123 <- formatC(i,width = 3 ,flag = "0")
    readen <- read.csv(paste(id123,".csv",sep=""),header = T)
    if (contaminante == "sulfate"){
      j <- c(j,readen$sulfate)
    } else if (contaminante == "nitrate"){
      datos <- c(j,readen$nitrate)
    } else {
      paste("El contaminante",contaminante,"no existe.")
    } 
  }
  promedio <- mean(j,na.rm = T)
  promedio
}
