## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  a=NULL
  set=function(z){
    x=z
    a=NULL
  }
  get=function()x
  setinv=function(inverse) a=inverse
  getinv=function()a
  list(set=set,
       get=get,
       setinv=setinv,
       getinv=getinv)

}


## The above function computes the inverse of the matrix. If the inverse has already been created then it would retreive the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  a=x$getinv()
  if(!is.null(a)){
    message("getting cached data")
    return(a)
  }
  b=x$get()
  a=solve(b,...)
  x$setinv(a)
  a
}
