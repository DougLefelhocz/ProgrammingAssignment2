## Program to calculate the inverse of a matrix

## Write a short comment describing this function

# makeCacheMatrix is like a "class" in Object Oriented Programming which
# sets the value of the matrix, gets the value of the matrix
# sets the value of the inverse of the matrix
# and gets the value of the inverse of the matrix
# It does this through the solve function

makeCacheMatrix <- function(x = matrix()) {
# NULL is stored in M        
        m <- NULL
# this function stores y in x, and NULL in m in the makeCacheMatrix
# environment
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
# gets the matrix
        get <- function() x
# sets the inverse of the matrix
        setinverse <- function(solve) m <<- solve
# finds the inverse of the matrix
        getinverse <- function() m
# returns all of the above sub-functions stored in a list
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
# This computes the inverse of a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
# gets the inverse of x and stores it in the variable m
        m <- x$getinverse()
# if m is not null, then we have "getting cached data" printed
# until m is computed and then returned
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
# stores get from above in the variable "data"
        data <- x$get()
# finds the inverse of data and stores in the variable "m"
        m <- solve(data, ...)
# sets the inverse of the matrix
        x$setinverse(m)
# returns m
        m
}
