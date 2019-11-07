plot_full_Kakutani<-function(){
  par(mar=c(0,0,0,0))
  load("data/full_kakutani.Rdata")
  x<-full
  y <- t(x[nrow(x):1,ncol(x):1])[ncol(x):1,]
  image(as.matrix(y),col=c(1,"#15099E","red","#777777","#7C93D7","#FED268","#A7C6E5","#B9FDFE",0),xaxt="n",yaxt="n")
  return("Nanika omoshiroikoto mitsukarimashitaka?")
}

