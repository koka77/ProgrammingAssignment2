## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m_inv <- NULL
        set <- function(y) {
                x <<- y
                m_inv <<- NULL
        }
        get <- function() x
        setinv <- function(invert) m_inv <<- invert
        getinv <- function() m_inv
        list(set = setmin, get = getmin,
             getinv = getinv,
             getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(m)
        inv

}
