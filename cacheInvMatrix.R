cacheInvMatrix <- function(m = matrix()) {
  setwd("D:/Documents/Academic/R")
  InverseMatrix <- solve(m) # time-consuming matrix inversion
  saveRDS(InverseMatrix, file = "inverse.Rds") # save the file
  # I can then call the inverse matrix from another function
  if (file.exists("inverse.Rds")) {
    InverseMatrix <- readRDS("inverse.Rds") # get pre-calculated result
    print("Getting precalculated result")
  } else {
    print("Recalculating result") # recalculate inverse matrix
    InverseMatrix <- solve(m)
  }
  IdentityMatrix <- m %*% InverseMatrix
  print("Matrix")
  print(m)
  print("Matrix Inversion")
  print(InverseMatrix)
  print("IdentityMatrix")
  print(IdentityMatrix)
}









