#practica

CamA <- vector("numeric")
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
    CamA <- c(CamA,"Down")
  } else if(z == 11){CamA <- c(CamA, "Up")}
  
}
table(CamA)
