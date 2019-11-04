library("NNLM")
data <- read.table("0725cL-50um-e10.selected.tsv",header=T)
normdata=log(sweep(t(data),2,colSums(t(data)),"/")*10000+1)
nmf.results = nnmf(t(normdata),11)
write.table(nmf.results$W,file="0725cL-50um-e10.W-11.selected.norm.tsv",sep="\t")
write.table(t(nmf.results$H),file="0725cL-50um-e10.Ht-11.selected.norm.tsv",sep="\t")
