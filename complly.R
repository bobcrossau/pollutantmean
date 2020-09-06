complly <- function(directory, id= 1:332) {  
  # same result as 'complete' function using 'lapply' instead of 'if'
  setwd("D:/Documents/Academic/R")
  allfiles <- list.files(directory, full.names=TRUE) #get file names
  fulltable <- lapply(allfiles, read.csv) #get data into tableframe
  totsect <- as.vector(id)  # vector of id's
  totnobs <- as.integer(lapply(lapply(fulltable[id], complete.cases), sum))
        # vector of nobs
  cc <- data.frame(totsect, totnobs)  #result
  colnames(cc) <- c("id", "nobs")
  print(cc)
  save(cc, file = "cc.RData") #reload with load("cc.RData")
}






