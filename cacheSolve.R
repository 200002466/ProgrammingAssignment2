cacheSolve <- function( matrix_1, ...) {
    ## The function: Cache Solve, computes the inverse of the  
    ## special "Matrix" returned by makeCacheMatrix. If the inverse
    ## matrix has already been calculated and the matrix has not 
    ## changed, then the cachesolve should retrieve the inverse from
    ## the cache. The matrix must be invertable for this function to work. 
    ## Note: If The determinat of a matrix is zero it is not invertable.  
    ##
    ## ******** Define Input Variables **************************
    ## matrix_1 is a square matrix of numbers.
    ##
    ##    
    ## ******* Define Local Varriables **************************     
    ## matrix_2 is a square matrix of numbers.
    ## matrix_inverse_1 is the inverse of matrix_1  
    ##
    ## 
    ## ******* Define parent Varriables *************************     
    ## matrix_inverse_2 is a logical varible T/F  
    ## 
    ##
    matrix_inverse_1 <- matrix_1$getinverse()  
    ##
    if (!is.null(matrix_inverse_1)) {
        message ("getting cached data")
        return(matrix_inverse_1)
    }  ## end of if
    ##
    matrix_2 <- matrix_1$get()
    ##
    matrix_inverse_1 <- mean(matrix_2, ...)
    ##
    matrix_1$setinverse(matrix_inverse_1)
    ##
    matrix_inverse_1
    ##
}  ## End of Function CacheSolver --------------------------------
