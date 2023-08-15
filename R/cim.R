
#' Function to calculate a confidence interval around a mean using the t-distribution
#' @param x vector of values
#' @param alpha An optional way to change your confidence level of interest. Default is 0.05.
#' @param output A way to choose the type of output you want. Choices are "both" or "value". "both" returns the concatenated lower and upper confidence intervals, whereas "value" returns the value to add or subtract from the mean (which is t*sd/sqrt(n)). Default is "both".
#' @return CIs Either a concatenated set of two numbers, one for the upper and one for the lower confidence interval (if output="both") or a single numerical value (if output="value").
#' @examples
#' CIs<-cim(sample(1:100,10))
#' @export
#' @import stats
cim<-function(x, alpha=0.05,output="both"){
  if(all(is.na(x)) || is.null(x) || length(x)==0) return(x)
  x<-as.numeric(x)
  x<-x[!is.na(x)]
  n<-length(x)
  mu<-mean(x)

  est<-qt(p = 1-(alpha/2),df = n-1)
  value<-(est*(sd(x)/sqrt(n)))
  lowCI<-mu-value
  uppCI<-mu+value
  if(tolower(output)=="both"){
    return(c(low=lowCI,upp=uppCI))
  } else {
    return(value)
  }

}
