makeCacheMatrix <- function(matrix_1 = numaric()) {
    ## The function make Cache Matrix creates a special matrix object 
    ## that can cache its inverse.       
    ##      
    ## ******** Define Input Variables ********************
    ## matrix_1 is a square invertabl matrix  
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
        matrix_1 <<- matrix_2
        matrix_inverse_2 <<- NULL
    }   ##  End of function set ************************************ 
    ##
    ## get the value of the matrix.   
    get <- function() matrix_1  
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
