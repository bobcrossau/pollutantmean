complete1 <- function(directory, id="flag") {
  setwd("D:/bcross/Documents/R")
  allfiles <- list.files(directory, full.names=TRUE) #get names of files
  fulltable <- lapply(allfiles, read.csv) #get data into tableframe
  print(c("id    nobs"), quote=FALSE) #print heading
  if (id == "flag") { # all datapoints required
    sect <- 1
    for (i in 1:length(allfiles)) {
      section <- data.frame(fulltable[sect]) #pick out sect of interest
      truecases <- complete.cases(section) # true complete cases
      nobs <- sum(truecases) #no of true cases
      print (c(sect, "  ", nobs), quote=FALSE)
      sect <- sect+1
    }
  } 
  if (id != "flag")  {  # only 1 datapoint required
    sect <- id
    section <- data.frame(fulltable[sect]) #pick out sect of interest
    truecases <- complete.cases(section) # true complete cases
    nobs <- sum(truecases) #no of true cases
    print (c(sect, "  ", nobs), quote=FALSE)
  } 
}
