## Comments on makeCacheMatrix
## creates a variable, cache, that will be used to 
## cache matrices. There are 2 functions within 
## the makeCacheMatrix function. THe first one
## sets the cache to store the desired matrix.
## The second retrieves what is in the cache.

makeCacheMatrix<-function(m) {
  cache<<-NULL
  set_cache<-function(m) {
    cache<<-m  
  }
  get_cache<-function() cache
  list(set_cache=set_cache, get_cache=get_cache)
}

## Comments on cacheSolve
## searches the cache to see if any matrices
## can be retrieved. If so, it displays a 
## message before it returns what is stored
## in the cache. If the cache is empty,
## the inverse of the matrix will be solved
## and stored into the cache.

cacheSolve<-function(m) {
  x<-makeCacheMatrix()
  if (!is.null(cache)) {
    message ("getting cached data")
    return(cache)
  }
    m_inverse<-solve(m)
    x$set_cache(m_inverse)
    x$get_cache()
}
