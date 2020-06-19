## Put comments here that give an overall description of what your
## functions do

## This function creates a cached matrix which computes and stores inverse of matrix passed to it.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
      x <- y
      i <- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <- inverse
  getinverse <- function() i
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function returns the cached inversed matrix computed and stored by makeCacheMatrix function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)){
            message("getting cached data")
            return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse()
        i
}
