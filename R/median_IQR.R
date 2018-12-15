#' A helpR function
#'
#' This function allows you to easily paste a median and IQR into a 
#' readable form for tables, graphs, text, etc...
#' @param x A vector of numeric data to summarize
#' @param na.rm Remove NAs from x
#' @param digits Number of decimals to round to 
#' @param IQR.type The type parameter to be passed to stats::IQR()
#' @export
#' @examples
#' x <- rnorm(100)
#' median_IQR(x)

median_IQR <- function(x,na.rm = FALSE,digits = 2,IQR.type = 7)
{
    if(!is.numeric(x))
    {
        return("Error: Non-numeric data")
    }
    else
    {
        return(paste(round(median(x,na.rm = na.rm),digits = digits),paste("(",round(IQR(x,na.rm = na.rm,type = IQR.type),digits = digits),")",sep = "")))
    }
}