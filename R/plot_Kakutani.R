#load("data/magnet.RData")
#load("data/normal.Rdata")
plot_Kakutani<-function(){
  par(mar=c(0,0,0,0))

  if(sample(c(0,1),1)==1){
    x<-magnet
    pal=c(0,1)
  }else{
    x<-normal
    pal=c(1,"#ECFFFF",0)
  }
  y <- t(x[nrow(x):1,ncol(x):1])[ncol(x):1,]
  image(as.matrix(y),col=pal,xaxt="n",yaxt="n")
  return("summoning cactan...")
}
