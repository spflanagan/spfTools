

#' Function to calculate the standard error of the mean
#' @param x vector of values
#' @return sem A numeric that is the SEM
#' @examples
#' se<-sem(sample(1:100,10))
#' @export
#' @import stats
sem<-function(x){
  if(all(is.na(x)) || is.null(x) || length(x)==0) return(NA)
  x<-as.numeric(x)
  x<-x[!is.na(x)]
  n<-length(x)
  se<-sd(x)/sqrt(n)
  return(se)
}
