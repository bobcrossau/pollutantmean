pollutantmean <- function(directory, pollutant, id = "flag")   {
setwd("D:/bcross/Documents/R")
allfiles <- list.files(directory, full.names=TRUE) #get names of files
fulltable <- lapply(allfiles, read.csv) #get data into tableframe
if (pollutant == 'sulfate')  {column <- 2} #determine which column
else {column = 3}
if (id == "flag") # all datapoints required
for (i in 1:length(allfiles)) {
fullcolumn <- (data.frame(fulltable[i]) [, column])
} else {  # only 1 datapoint required
fullcolumn <- (data.frame(fulltable[id]) [, column])
}
m <- mean(fullcolumn, na.rm = TRUE)
print(m)
}
pollutantmean("specdata", "sulfate")
pollutantmean("specdata", "sulfate", 3)
pollutantmean("specdata", "sulfate")
head(allfiles)
allfiles <- list.files(directory, full.names=TRUE)
allfiles <- list.files("specdata", full.names=TRUE)
head(allfiles)
wd()
getwd()
setwd(bcross)
setwd(d:)
setwd("d:")
getwd()
setwd("D:")
getwd()
setwd("D:/")
getwd()
setwd(bcross/Documents/R)
getwd()
setwd(bcross)
ls
ls()
getwd()
ls()
setwd(/bcross)
arg(pollutantmean)
args(pollutantmean)
getwd()
setwd("D:/bcross/Documents/R")
getwd()
pollutantmean("specdata", "sulfate", 3)
pollutantmean("specdata", "nitrate", 3)
pollutantmean("specdata", "sulfate")
pollutantmean("specdata", "sulfate", 1)
pollutantmean("specdata", "nitrate")
