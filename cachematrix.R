## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function takes a matrix is an argument, sets the value of the matrix, gets the value
## sets the value of the inverse, and then gets the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  setInverse <- function(solve) i <<- solve
  getInverse <- function() i
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function
## This function takes the argument x which is a matrix, and and solves for it's 
## inverse. However, it first checks to see if the inverse has already been 
## calculated. If so, it gets the inverse from cache. Otherwise, it solves for the
## inverse of the matrix, and sets the inverse in the cache. 


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
    
      }
  data <- x$get()
  i <- solve(data, ...)
  x$setInverse(i)
  i
  
}
