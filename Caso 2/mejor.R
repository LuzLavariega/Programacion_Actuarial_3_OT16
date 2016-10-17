mejor <- function(estado,resultado){
  data <- read.csv("outcome-of-care-measures.csv")
  N <- FALSE
  n <-nrow(data)
  if(resultado== "infarto"){
    r <- 11
  } else if (resultado== "falla"){
    r <- 17
  } else if (resultado== "neumonia"){
    r <- 23
  }
  if (!((resultado == "infarto")|(resultado == "falla")| (resultado == "neumonia"))){
    stop("Resultado Inválido")
  }
  x <- matrix(data[,r],n,1)
   data[,r] <- suppressWarnings(as.numeric(x))
   data[,2] <- as.character(data[,2])
  y <- data[grep(estado,data$State),]
  ordenar <- y[order(y[,r], y[,2], na.last=NA),]
  z <- matrix(data[,7], n,1)
  for (i in 1:length(z))
    if(estado == z[i]){
      N <- TRUE
    }
  if(!N){
    stop("Estado Inválido")
  }
  ordenar[1,2]
}