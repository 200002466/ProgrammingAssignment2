## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## The function make Cache Matrix creates a special matrix object 
    ## that can cache its inverse.       
    ##      
    ## ******** Define Input Variables ********************
    ## x is a square invertabl matrix  
    ## 
    ## ******* Define Local Varriables ****************** 
    ## matrix_inverse_1 is the inverse of the matrix_1  
    ##   
    ##    
    ## ******* Define parent Varriables ******************     
    ## matrix_2 .
    ## matrix_inverse_2 is a logical varible T/F
    ## 
    ##
    matrix_inverse_2 <- NULL 
    ##
    ## set the value of the matrix 
    set <- function(matrix_2) {
        ## the <<- rebinds an existing name in the parent of the current enveiroment.  
        x <<- matrix_2
        matrix_inverse_2 <<- NULL
    }   ##  End of function set ************************************ 
    ##
    ## get the value of the matrix.   
    get <- function() x  
    ##
    ## set the value of the inverse here and in the parent enviroment.
    setinverse <- function(matrix_inverse_1) matrix_inverse_2 <<- matrix_inverse_1 
    ##
    ## get the value of the inverse  
    getinverse <- function() matrix_inverse_2 
    ##
    ##  the following lines stores the 4 functions. 
    list(set = set, 
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    ##
}  ## End of Function makeCacheMatrix *****************************




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## The function: Cache Solve, computes the inverse of the  
    ## special "Matrix" returned by makeCacheMatrix. If the inverse
    ## matrix has already been calculated and the matrix has not 
    ## changed, then the cachesolve should retrieve the inverse from
    ## the cache. The matrix must be invertable for this function to work. 
    ## Note: If The determinat of a matrix is zero it is not invertable.  
    ## Return a matrix that is the inverse of 'x'
    ##
    ## ******** Define Input Variables **************************
    ## x is a square matrix of numbers.
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
    matrix_inverse_1 <- x$getinverse()  
    ##
    if (!is.null(matrix_inverse_1)) {
        message ("getting cached data")
        return(matrix_inverse_1)
    }  ## end of if
    ##
    matrix_2 <- x$get()
    ##
    matrix_inverse_1 <- mean(matrix_2, ...)
    ##
    x$setinverse(matrix_inverse_1)
    ##
    matrix_inverse_1
    ##
}  ## End of Function CacheSolver --------------------------------


