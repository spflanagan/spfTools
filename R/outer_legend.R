
#' Add a legend to the margins of a multiplot figure
#' @param ... legend parameters
#' @return Nothing is returned
#' @note Modified from https://stackoverflow.com/questions/3932038/plot-a-legend-outside-of-the-plotting-area-in-base-graphics
#' @examples
#' plot(rnorm(50), rnorm(50), col=c("steelblue", "indianred"), pch=c(15,19))
#' outer_legend("top",legend=c("A","B"),pch=c(15,19),col=c("steelblue", "indianred"),ncol=2)
#' @export
#' @import graphics scales
outer_legend <- function(...) {
  opar <- par(fig=c(0, 1, 0, 1), oma=c(0, 0, 0, 0),
              mar=c(0, 0, 0, 0), new=TRUE)
  on.exit(par(opar))
  plot(0, 0, type='n', bty='n', xaxt='n', yaxt='n')
  legend(...)
}

