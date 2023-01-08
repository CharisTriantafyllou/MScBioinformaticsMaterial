#!/usr/bin/Rscript

input<-file('stdin','r')
row <- readLines(input,n=1)

seq_char <- strsplit(row,split = "")[[1]]
seq_num <- rep(0,length(seq_char))

hydrophob <- read.table("hydrophobicity.txt")

if(mean(seq_char %in% as.character(hydrophob[,3]))!=1){
  stop("Non canonical aminoacid characters found !!!")
}

for(i in 1:length(seq_char)){
  seq_num[i] <- hydrophob[as.character(hydrophob[,3])==seq_char[i],4]
}

starts <- c()
ends <- c()
#initiate
start=1

while(start < length(seq_num)){
  
    while(seq_num[start] < 0.75){
      start=start+1
      if(start>=length(seq_num)){
        break
      }
    }
  
    #print(start)
    starts <- c(starts,start)
    
    #initiate
    avg=seq_num[start]
    end=start
    
    while(avg > 0.75){
      #we start elongation
      end=end+1
      if(end>=length(seq_num)){
        break
      }
      avg=mean(seq_num[start:end])
    }
    #print(end)
    ends <- c(ends,end)
    start=end
}
start

#Collect results
res <- as.data.frame(cbind(starts,ends))
res$avg <- 0
res$seq <- "char"
for(i in 1:nrow(res)){
  res$avg[i] <- mean(seq_num[res[i,1]:res[i,2]])
  res$seq[i] <- paste0(seq_char[res[i,1]:res[i,2]],collapse = "")
  res$length[i] <- length(seq_num[res[i,1]:res[i,2]])
}
res <- res[res$avg >=0.7,]
colnames(res) <- c("Start","End","Hydrophobocity Average","Sequence","Length")
rownames(res) <- NULL

#Print results
print(res)

