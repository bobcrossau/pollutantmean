complete1 <- function(directory, id = “flag”) {
  setwd("D:/bcross/Documents/R")
  allfiles <- list.files(directory, full.names=TRUE) #get names of files
  fulltable <- data.frame(lapply(allfiles, read.csv)) #get data into tableframe
  print(c(“id   nobs”, quote=FALSE)) #print heading
        if (id == "flag") { # all datapoints required
          id <- 1
          for (i in 1:length(allfiles)) {
            truecases <- (complete.cases(fulltable[id])) # true complete cases
            nobs <- sum(truecases) #no of true cases
            print (c(id, nobs))
            id <- id+1
          } else {  # only 1 datapoint required
            truecases <- (complete.cases (fulltable[id])) # true complete cases
            nobs <- sum(truecases) #no of true cases
            print (c(id, nobs))
          } 
        }
}

