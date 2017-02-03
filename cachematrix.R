## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                inv <- NULL
        
        #getters and setters of x and inv vars
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        
        get <- function() m

        setInv <- function(inverse) inv <<- inverse 
        
        getInv <- function() inv
        
        l <- list(set = set, get = get, 
                setInv = setInv,
                getInv = getInv)
        return(l)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inv <- matrix$getInv()
        
        if(!is.null(inv)) {
                message("Getting the computed value of inv")
                return(inv)
        }
        
        
        data <- matrix$get()
        
        if(det(data) == 0) {
              stop("The matrix has no inverse because det = 0")  
        } else {
                inv <- solve(data)
                matrix$setInv(inv)
        }
        
        inv
}
