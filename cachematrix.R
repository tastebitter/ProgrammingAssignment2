## A pair of functions that cache the invere of a matrix


## Create a special vector, which is really a list containing a funtion
## 1.set the value of the vector
## 2.get the value of the vector
## 3.set the value of the inverse of a matrix
## 4.get the value of the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
    m<- NULL
    set<- function(y){
        x<<- y
        m<<- NULL
    }
    
    get<- function()
    {
        x
    }
    
    setInverse<- function(Inverse) {
        m<<- Inverse
    }
    getmean<- function(){
        m
    }
    
    list(set = set, get= get, setInverse = setInverse, getInverse= getInverse)
}


## Caculate the inverse of the special vector created with the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<- x$getInverse()
        if(!is.null(m)){
            message("getting cached data")
            return(m)
        }
        
        data<- x$get()
        m<- solve(data,...)
        s$setInverse(m)
        m
}
