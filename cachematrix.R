## This pair of functions will compute the inverse of a matrix, then
## cache the result. If the inverse has already been calculated, and
## no changes have been made to the matrix, then the function will
## return the cached value, rather than recalculate the inverse.

## This function stores the cached inversion, and creates the list of
## functions that make the cached value of the inverse available, or clears the cached
## value if a new matrix is entered.

makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL

  inputMatrix <- function(y) {
    x <<- y
    invMatrix <<- NULL   #This new value for x means the inverse must be recalculated
  }
  fetchMatrix <- function() {
    x
  }
  saveInverse <- function(newInverse) {
    invMatrix <<- newInverse
  }
  fetchInverse <- function() {
    invMatrix
  }
  list(inputMatrix = inputMatrix, fetchMatrix = fetchMatrix, saveInverse = saveInverse, fetchInverse = fetchInverse)
}

## This function can compute the inverse of a matrix, or retrieve a
## cached result, if available from the previous function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  invMatrix <- x$fetchInverse()
  if (!is.null(invMatrix)) {
    message("fetching cached value")
    return(invMatrix)
  }
  
  newMatrix <- x$fetchMatrix()
  invMatrix <- solve(newMatrix)
  x$saveInverse(invMatrix)
  
  invMatrix
}