#load("data/test_list.Rdata")
#load("data/Araport11_all_sorted.RData") #V6; 1=pc,2=pseudo,3=TEgene,4=noncoding,5=noveltranscrived
#load("data/chrom_length.RData")
#load("data/Exp_seedling_Col.RData")
grasp_Kakutani<-function(gene_list){
  mat <- matrix(c(1,2,4,1,2,5,3,3,3), 3, 3, byrow = TRUE);mat
  layout(mat)
  colnames(arapo)<-c("Chr","st","en","ID","d","type","V7")
  arapo$Chr <- lapply(arapo$Chr, gsub, pattern="M", replacement = 6) ;arapo$Chr <- lapply(arapo$Chr, gsub, pattern="C", replacement = 7) ;arapo$Chr<-as.numeric(unlist(arapo$Chr))
  arapo[,ncol(arapo)+1]<-abs(arapo$en-arapo$st) # length をV8行に
  clensum<-c(0,0);for(i in 1:nrow(CL)){clensum[i+1]<-clensum[i]+as.numeric(CL[i,2])}
  arapo[,ncol(arapo)+1]<-mapply(function(x,y){clensum[x]+y},arapo$Chr,arapo$st) # distribution 用遺伝子座標
  #set gene lists
  XX<-arapo
  PC<-subset(XX,XX$Chr!="C"&XX$Chr!="M"&XX$type==1)
  GOI<-XX[XX$ID %in% gene_list,]
  #length box
  par(mar=c(3,3,3,3))
  boxplot(
    PC$V8,GOI$V8, col=c("gray","orange2"),border=rgb(0,0,0,1),cex.axis=1,cex.main=1,main="",cex.names=1,cex=0.05,lwd=1,notch=TRUE,outline=F)
  legend("topleft",legend=c("all_protein_coding","the list"),fill=c("gray","orange2"),cex=1,box.col = 0,title="length(bp)")
  #Exp box
    boxplot(
    E[,2],E[E$ID %in% gene_list,2], col=c("gray","orange2"),border=rgb(0,0,0,1),cex.axis=1,cex.main=1,main="",cex.names=1,cex=0.05,lwd=1,notch=TRUE,outline=F)
  legend("topleft",legend=c("all_protein_coding","the list"),fill=c("gray","orange2"),cex=1,box.col = 0,title="Exp(RPKM)")



  #subchromosomal distribution
  library(MASS)
  par(mar=c(1,1,1,1))
  truehist(PC$V9,xlim=c(0,max(arapo$V9)),h = max(arapo$V9)/300,col = "#ff990080", border = "#ff990080",axes = FALSE, xlab = "", ylab = "",main="chromosomal distribution")
  par(new = TRUE);truehist(subset(arapo$V9,arapo$type==3), xlim=c(0,max(arapo$V9)),h = max(arapo$V9)/300, col = "#66990080", border = "#66990080",axes = FALSE, xlab = "", ylab = "")
  par(new = TRUE);truehist(GOI$V9, xlim=c(0,max(arapo$V9)),h = max(arapo$V9)/300, col = rgb(0,0.5,0.8,1), border = rgb(0,0.5,0.8,1),axes = FALSE, xlab = "", ylab = "")
  abline(v=clensum,lty=2)
  legend("topright",legend=c("all_protein_coding","TE_gene","the_list"),fill=c("#ff990080","#66990080",rgb(0,0.5,0.8,1)),cex=1,box.col = 0)

  #piechart
  par(mar=c(2,2,2,3))
  names<-c("ProteinCoding","pseudo","TE gene","noncdoding","novel_transcribed")
  pcpie<-table(arapo$type);pie(pcpie,labels =paste(names,'\n(',pcpie,')'));text(0.8,0.8,paste("all",'\n(',nrow(arapo),')'))
  goipie<-table(GOI$type);pie(goipie,labels =paste(names,'\n(',goipie,')'));text(0.8,0.8,paste("the list",'\n(',nrow(GOI),')'))
  par(mfrow=c(1,1))
  return("DONE")

}
