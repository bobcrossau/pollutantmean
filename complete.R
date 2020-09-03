complete <- function(directory, id= 1:332) {
  setwd("D:/Documents/Academic/R")
  allfiles <- list.files(directory, full.names=TRUE) #get names of files
  fulltable <- lapply(allfiles, read.csv) #get data into tableframe
  print(c("id    nobs"), quote=FALSE) #print heading
  totsect <- NULL  # this will be a vector of id's
  totnobs <- NULL  # this will be a vector of nobs
  for (i in seq_along(id)) { # string required values together
    sect <- id[i]
    section <- data.frame(fulltable[sect]) #pick out sect of interest
    truecases <- complete.cases(section) # true complete cases
    nobs <- sum(truecases) #no of true cases
    print (c(sect, "  ", nobs), quote=FALSE)
    totsect <- append(totsect, sect) # build id vector
    totnobs <- append(totnobs, nobs) # build nobs vector
  }
  cc <- data.frame(totsect, totnobs)
  colnames(cc) <- c("id", "nobs")
  save(cc, file = "cc.RData") #reload with load("cc.RData")
}





