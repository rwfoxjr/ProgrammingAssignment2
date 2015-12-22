## This pair of functions will compute the inverse of a matrix, then
## cache the result. If the inverse has already been calculated, and
## no changes have been made to the matrix, then the function will
## return the cached value, rather than recalculate the inverse.

## This function stores the cached inversion, and creates the list of
## functions that make the cached value available.

makeCacheMatrix <- function(x = matrix()) {

}


## This function can compute the inverse of a matrix or retrieve a
## cached result, if available from the previous function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
