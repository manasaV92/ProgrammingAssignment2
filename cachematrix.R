## Put comments here that give an overall description of what your
## functions do

## The function defines the get and set function for both the matrix vector and the matrix inverse value.

makeCacheMatrix <- function(x = matrix()) {

  #x is the input matrix vector. Initialize it to null.
  matrix_inverse <- NULL
  #set the value of the matrix by passing it as a parmeter.
  #initialize the matrix inverse to null to flush any previous inverse value stored in it.
  set <- function(y) {
    x <<- y
    matrix_inverse <<- NULL
  }
  #get the value of the matrix.
  get <- function() {
    x
  }
  # set the value for the matrix inverse.
  setmatrix_inverse <- function(mi)
    matrix_inverse <<- mi
  #get the value of the matrix inverse.
  getmatrix_inverse <- function()
    matrix_inverse
  list(
    set = set, get = get,
    setmatrix_inverse = setmatrix_inverse,
    getmatrix_inverse = getmatrix_inverse
  )
}


## Prior to computing the value for the matrix inverse, verify if the cahce store the value of the inverse.
#if value in cache do not compute again. Return the value stored in cache.
#else compute the value, store in cache and return the computed value.

cacheSolve <- function(x, ...) {
  inv <- x$getmatrix_inverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setmatrix_inverse(m)
  inv
}
