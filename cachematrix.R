## The make matrix creates a special matrix and caches its inverse 
## It contains a list of functions that
## Sets the value of the matrix
## Gets the value of the matrix 
## Sets the value of the inverse matrix 
## Gets the value of the inverse matrix 
makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  setMatrixInverse <- function(matrixInverse) inv <<- matrixInverse
  getMatrixInverse <- function() inv
  list(set = set, get = get, setMatrixInverse = setMatrixInverse, getMatrixInverse = getMatrixInverse)

}


## This is the function that computes the inverse of the matrix 

cacheSolve <- function(x, ...) {
  inv <- x$getMatrixInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  
  data <- x$get()
  inv <- solve(data,...)
  x$setMatrixInverse(inv)
  i
}
