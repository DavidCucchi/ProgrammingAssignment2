##R Coursera programming assignment week 3

## Put comments here that give an overall description of what your
## functions do

## make matrix and cache content

makeCacheMatrix <- function(x = matrix()) {
        mi <- NULL
        set <- function(y) { 
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) mi <<- inverse
        getinverse <- function() mi
        list(set = set, get = get, setinverse = setinverse, 
             getinverse = getinverse)
}


## Calculate inverse if inverse not yet cached

cacheSolve <- function(x, ...) {
        mi <- x[[getinverse()]]
        if(!is.null(mi)) {
                message("getting cached data")
                return(mi)
        }
        m <- x[[get()]]
        mi <- solve(data, ...)
        x[[setinverse(mi)]]
        mi
}

