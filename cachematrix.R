## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
#makeCacheMatrix <- function(x = matrix()) {
#}
## Write a short comment describing this function

#cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
#}

makecachematrix<-function(x=matrix()){        
  inv<-NULL              
  set <- function(y){         
    x<<- y                
    inv<<-NULL              		
  }
  get <- function() x
  setinverse <- function(inverse) inv<<-inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse = setinverse, getinverse = getinverse)
}
testmatrix<-makecachematrix(matrix(1:4, nrow =2, ncol=2))  #test sample
testmatrix$get()
testmatrix$getinverse()
cachesolve <- function(x, ...){
  inv<-x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data, ...)
  x$setinverse(inv)
  inv
}
cachesolve(testmatrix)
