##makeCacheMatrix: turns input into square matrix. caches the 
##inverse then returns the square matrix
makeCacheMatrix<-function(M) {
        elements_in_M<-length(M)
        nrow<-sqrt(elements_in_M)
        ncol<-nrow
        matricize<-matrix(M,nrow,ncol)
        x.inv<-solve(matricize)
        cache<<-x.inv
matricize
                                }

##cacheSolve: takes the output of makeCacheMatrix, retrieves 
##inverse from cache

cacheSolve<-function(M){
        specialM<-makeCacheMatrix(M)
        specialM.inv<-solve(specialM)
        if (all.equal(specialM.inv,cache)) 
{cache}                 
                        }

##Note to editor (I'd appreciate if you could comment on below!)

##Things I didn't understand about this assignment:
##1)makeCacheMatrix: what is the special matrix?
##2)cacheSolve: how could the matrix have changed? 
