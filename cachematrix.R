## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverseCache <- NULL
	set <- function (y){
		x <<- y
		inverseCache <<- NULL
	}

	get <- function() x

	cacheInverse <- function( x ) {
		inverseCache <<- x
	}

	getInverse <- function() inverseCache

	list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        inv <- x$getInverse ( )

        if ( !if.null (inv) )
        {
        	message ( "getting cached data" )
        	return (inv)
        }

        inv <- solve ( y$getMatrix ( ) )
        y$cacheInverse (inv)

        inv
}
