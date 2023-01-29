## These functions cache the inverse of a Matrix##

## The first function, makeCacheMatrix creates a special matrix, as an input
## The solved answer "ans", is set as null

makeCacheMatrix <- function(x = matrix()) {
    ans <- NULL
    set <- function(y) {
      x <<- y
      ans <<- NULL
    }
    get <- function() x
    setInverse <- function(MatrixSolution) ans <<- MatrixSolution
    getInverse <- function() ans
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  }
}


## This function returns the inverse of the special matrix above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ans <- x$getInverse()
  if(!is.null(ans)) {
    message ("Returning cached data")
    return(ans)
    
    data <- x$get()
    ans <- solve(data)
    x$setInverse (ans)
    
    ans
  }
  
  }
}
