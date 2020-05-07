## Coursera Assignment 2

## matrix to cache the inverse

makeCacheMatrix <- function(x = matrix()) {
i<-NULL
set <- function( matrix ) {
            x <<- matrix
            i <<- NULL
    }

get<-function()x

setInv<-function(inverse) i<<-inverse

getInv<-function()i

 list(set = set, get = get, setInv = setInv,getInv = getInv)
}


## compute inverse if not done already

cacheSolve <- function(x, ...) {
        i<-x$getInv()
	  if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
	  data <- x$get()
        i <- inverse(data, ...)
        x$setInv(i)
        i
}
