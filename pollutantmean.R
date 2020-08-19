pollutantmean <- function(directory, pollutant, id = 1:332)   {
  setwd("D:/Documents/Academic/R")
  allfiles <- list.files(directory, full.names=TRUE) #get names of files
  fulltable <- lapply(allfiles, read.csv) #get data into tableframe
  if (pollutant == 'sulfate')  {column <- 2} #determine if sulfate
  if (pollutant == 'nitrate')  {column <- 3} #determine if nitrate
  fullcolumn <- integer()
  n <- min(id)
  for (i in 1:length(id)) { # string required values together
    thiscolumn <- (data.frame(fulltable[n]) [, column])
    fullcolumn <- append(fullcolumn, thiscolumn)
        n <- n + 1
  } 
    m <- mean(fullcolumn, na.rm = TRUE) #determine mean
  print(m)
}


