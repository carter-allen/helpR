#' A helpR function
#'
#' This function allows you to easily paste a mean and sd into a 
#' readable form for tables, graphs, text, etc...
#' @param x A vector of numeric data to summarize
#' @param na.rm Remove NAs from x
#' @param digits Number of decimals to round to 
#' @export
#' @examples
#' x <- rnorm(100)
#' mean_sd(x)

mean_sd <- function(x,na.rm = FALSE,digits = 2)
{
    if(!is.numeric(x))
    {
        return("Error: Non-numeric data")
    }
    else
    {
        return(paste(round(mean(x,na.rm = na.rm),digits = digits),paste("(",round(sd(x,na.rm = na.rm),digits = digits),")",sep = "")))
    }
}