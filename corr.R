corr  <- function(directory, threshold = 0) {
  setwd("D:/bcross/Documents/R")
  allfiles <- list.files(directory, full.names=TRUE) #get names of files
  fulltable <- lapply(allfiles, read.csv) #get data into tableframe
  sect <- 1
  sulfate <- NULL
  nitrate <- NULL
  for (i in 1:length(allfiles)) {
    section <- data.frame(fulltable[sect]) #pick out sect of interest
    truecases <- complete.cases(section) # true complete cases
    nobs <- sum(truecases) #no of true cases
    if (nobs >= threshold) {
      sulfate <- rbind(sulfate, section[, 2])
      nitrate <- rbind(nitrate, section[, 3])
      sect <- sect+1
    }
  } 
  correlation <- cor(sulfate, nitrate, use = "complete.obs") # is use reqd
  print(correlation)
  symnum(correlation)
}

