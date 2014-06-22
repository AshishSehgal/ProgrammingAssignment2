## Pair of functions that cache the inverse of a matrix.


## function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	##set function to enter the value of matrix
	set<-function(y){			
	x<<-y
	m<<-NULL
       }
       ##get function to display the value
        get<-function()x 
        setsolve<-function(solve) m<<-solve						getsolve<-function() m								list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)			}

## function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
     m<-x$getsolve()
        if(!is.null(m)){
          message("Getting cached data")## Checks for cached value
          return(m)
       }
         data<-x$get()
         m<-solve(data, ...)
        x$setsolve(m)
        m
    }
