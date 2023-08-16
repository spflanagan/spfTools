

#' Function to read in data frames with strings as factors = FALSE
#' @param filename The name of the file
#' @param ... Other function calls
#' @return A data.frame containing the contents of filename
#' @export
#' @examples
#' df<-read.df(system.file("extdata", "exdf.txt", package = "spfTools"),sep='\t',header=TRUE)
#' @import utils devtools knitr pander
read.df<-function(filename,...){

  if(!file.exists(filename)) stop('The file does not exist')
  df<-read.delim(filename,stringsAsFactors = FALSE,...)
  return(df)
}


