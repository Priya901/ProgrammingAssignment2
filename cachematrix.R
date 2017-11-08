## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makeCacheMatrix is used for setting the functions and variables for getting the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(y){
        
        x<<-y
        inverse <<-NULL
}
        
 get <- function()x
 setInverse <- function()inverse
 list(set=set,get=get,setInverse = setInverse,getInverse = getInverse)
}

## Write a short comment describing this function
##Cachesolve function returns the inverse of the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <-x$getInverse()
if(!is.null(inv))
{
        message("getting cached data")
        return(inv)
 }
  mat <- x$get()
  inv <-solve(mat,...)
  x$setInverse(inv)
  inv
}




}
