## Inverse the matrix


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv1 <- NULL
        set <- function(y) {
                x <<- y
                inv1 <<- NULL}
        get <- function () x
        setinverse <- function (inverse) inv1 <<- inverse
        getinverse <- function () inv1
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv1 <- x$getinverse()
        if(!is.null(inv1)){
                message("getting cached data")
                return(inv1)
                }
        
        data <- x$get()
        inv1 <- solve(data)
        x$setinverse(inv1)
        inv1
}
