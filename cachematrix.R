## this function will help us to cache the inverse matrix

## the makecachematrix function is used for get and set the matrix and its inverse matrix

makeCacheMatrix <- function(x = matrix()) {
s <- matrix()
    set_matrix <- function(y){
        x <<- y
        s <<- matrix()
    } 
    get_matrix <- function() x
    setinverse_matrix <- function(solve) s <<- solve
    getinverse_matrix <- function() s
    
    list(set_matrix = set_matrix, get_matrix = get_matrix, setinverse_matrix = setinverse_matrix, getinverse_matrix = getinverse_matrix)
}


## the cachesolve function is used for getting the cached inverse matrix when the condition is satisfied.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getinverse_matrix()
        
    if(!is.na(s[1])){
        message("get cached inverse matrix")
        print(s)
    }
    matrix_2 <- x$get_matrix()
    s <- solve(matrix_2,...)
    x$setinverse_matrix(s)
    s

}
