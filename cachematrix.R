## Create a matrix, sets m to null for later use, stores the matrix,
##  gets the matrix and takes it's inverse, stores it, sets to memory.

## The matrix must be a square matrix

makeCacheMatrix <- function(x = matrix()) {
                m <- NULL
			set <- function(y) {	
				x <<- y
				m <<- NULL	
			}
		get <- function() x		
		setinverse <- function(solve) 
					m <<- solve 
		
		getinverse <- function() m
		list(set = set, get = get,	
		     setinverse = setinverse,
		     getinverse = getinverse)
}


## Retrieves the inverse from the cache if there, otherwise finds the inverse and returns it.

cacheSolve <- function(x, ...) { 

                m <- x$getinverse()		
		if(lis.null(m)) {			
	   		message("getting cached data") 
			return(m)			
		}
		origVector <- x$get()		
		m <- solve(origVector, ...)	
		x$setinverse(m)
		m

        ## Return a matrix that is the inverse of 'x'
}
