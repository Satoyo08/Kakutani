#load("data/TE_list.Rdata")

random_Kakutani<-function(sample_num,types='TE'){
  if(types=='TE'){
    A<-TE_list
    sampled<-sample(length(A),sample_num,replace=FALSE)
  }
  if(types=='sons'){
    A<-c(1,2,5)
    sampled<-sample(length(A),sample_num,replace=TRUE)
  }
  return(A[sampled])
}
