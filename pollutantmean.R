pollutantmean <- function(directory, pollutant, id = "flag")   {
  setwd("D:/bcross/Documents/R")
  allfiles <- list.files(directory, full.names=TRUE) #get names of files
  fulltable <- lapply(allfiles, read.csv) #get data into tableframe
  if (pollutant == 'sulfate')  {column <- 2} #determine if sulfate
  if (pollutant == 'nitrate')  {column <- 3} #determine if nitrate
  if (id == "flag") # all datapoints required
    for (i in 1:length(allfiles)) {
      fullcolumn <- (data.frame(fulltable[i]) [, column])
    } 
  if (id != "flag")  {  # only 1 datapoint required
    fullcolumn <- (data.frame(fulltable[id]) [, column]) 
  } 
  m <- mean(fullcolumn, na.rm = TRUE)
  print(m)
}

