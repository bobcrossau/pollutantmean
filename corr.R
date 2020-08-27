corr  <- function(directory, threshold = 0) {
  setwd("D:/Documents/Academic/R")
  allfiles <- list.files(directory, full.names=TRUE) #get names of files
  fulltable <- lapply(allfiles, read.csv) #get data into tableframe
  cr <- NULL                   # 'cr' will hold result
  id <- 1:length(allfiles)
  for(i in seq_along(id)) {
    section <- data.frame(fulltable[i]) #pick out next section
    truecases <- complete.cases(section) # true complete cases
    nobs <- sum(truecases) #no of true cases
    thiscorr <- cor(section$sulfate, section$nitrate, use = "pairwise.complete.obs")
      if (nobs >= threshold) {  #only add to cr if section at threshold
        cr <- append(cr, thiscorr)
      }
  } 
  save(cr, file = "cr.RData") #reload with load("cr.RData")
}

