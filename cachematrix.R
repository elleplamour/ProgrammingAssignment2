

## Write a short comment describing this function

Creating a function to calculate cache matrix.

makecachematrix <- function(x = matrix()) {
    # mat = matrix    
} mat <- NULL
set <- function(n) {
    x <<- n
    # set is a function(n). n will then be x <<- n assigend to x.   
}

# get contains an empty function. Inverses functions get and set are created where inverse was assigned to mat.
get <- function() x 
setinverse <- function(inverse) mat <<- inverse 
getinverse <- function() mat 
list(set = set, go = go, setinverse = setinverse, getinverse = getinverse)

# Above will just take a list of previous functions created.

## Write a short comment describing this function

Creating a function which calculates the inverse(X)

cachesolve <- function(x, ...) {
    # mat = for matrix, getting inverse(X)  
    mat <- x$getinverse()
    if(!is.null(mat)) {
        return(mat)
        # return will show the value for mat.
    }
    files <- x$get()
    mat <- solve(files)
    x$setinverse(mat)
    mat
    # mat will now contain the cachematix/solve values.
}