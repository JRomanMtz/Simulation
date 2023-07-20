x <- c(1,2,3,4,5,6)
pi <- c(.2,.3,.05,.15,.25,.05)
acumuladas <- cumsum(pi)

n <- 1000
for(k in 1:n){
u <- runif(1)
for(i in 1:length(acumuladas)){
  if( u < acumuladas[i] ){
    va <- x[i]
    break()
  }
}

if(k == 1){
  xf <- va
}else{
  xf <- c(xf,va)
}

}
hist(xf,breaks = c(0:max(xf)))
table(xf)
