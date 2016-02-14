## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invert <- NULL
set <- function(y) {
  x <<- y
  invert <<- NULL
}
get <- function() x
setInverse <- function(inverse) invert <<- inverse
getInverse <- function() invert
list(set = set,
     get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}

## Return a matrix that is the inverse of 'x'
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invert <- x$getInverse()
  if(!is.null(invert)) {
    message("getting cached data")
    return(invert)
  }
  data <- x$get()
  invert <- solve(data, ...)
  x$setInverse(invert)
  invert
}
