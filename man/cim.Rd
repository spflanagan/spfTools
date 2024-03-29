% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cim.R
\name{cim}
\alias{cim}
\title{Function to calculate a confidence interval around a mean using the t-distribution}
\usage{
cim(x, alpha = 0.05, output = "both")
}
\arguments{
\item{x}{vector of values}

\item{alpha}{An optional way to change your confidence level of interest. Default is 0.05.}

\item{output}{A way to choose the type of output you want. Choices are "both" or "value". "both" returns the concatenated lower and upper confidence intervals, whereas "value" returns the value to add or subtract from the mean (which is t*sd/sqrt(n)). Default is "both".}
}
\value{
CIs Either a concatenated set of two numbers, one for the upper and one for the lower confidence interval (if output="both") or a single numerical value (if output="value").
}
\description{
Function to calculate a confidence interval around a mean using the t-distribution
}
\examples{
CIs<-cim(sample(1:100,10))
}
