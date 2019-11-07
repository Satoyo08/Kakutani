plot_Kakutani<-function(){
  par(mar=c(0,0,0,0))

  if(sample(c(0,1),1)==1){
    load("data/kakutan_magnet.RData")
    x<-magnet
    pal=c(0,1)
  }else{
    load("data/kakutan-scaled.Rdata")
    x<-normal
    pal=c(1,"#ECFFFF",0)
  }
  y <- t(x[nrow(x):1,ncol(x):1])[ncol(x):1,]
  image(as.matrix(y),col=pal,xaxt="n",yaxt="n")
  return("summoning cactan...")
}
