complete <- function(directory, id= 1:332) {
  setwd("D:/Documents/Academic/R")
  allfiles <- list.files(directory, full.names=TRUE) #get names of files
  fulltable <- lapply(allfiles, read.csv) #get data into tableframe
  print(c("id    nobs"), quote=FALSE) #print heading
  sect <- id
  n <- min(id)
  for (i in 1:length(id)) { # string required values together
    section <- data.frame(fulltable[sect]) #pick out sect of interest
    truecases <- complete.cases(section) # true complete cases
    nobs <- sum(truecases) #no of true cases
    print (c(sect, "  ", nobs), quote=FALSE)
    n <- n+1
  } 
}
