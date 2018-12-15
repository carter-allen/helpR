#' A helpR function
#'
#' This function allows you to easily paste a mean and credible interval into a 
#' readable form for tables, graphs, text, etc...
#' @param x A vector of numeric data to summarize
#' @param na.rm Remove NAs from x
#' @param digits Number of decimals to round to 
#' @param cred Level of credible interval between 0 and 1.
#' @export
#' @examples
#' x <- rnorm(100)
#' mean_CRI(x)

mean_CRI <- function(x,na.rm = FALSE,digits = 2,cred = 0.95)
{
    if(!is.numeric(x))
    {
        return("Error: Non-numeric data")
    }
    else
    {
        a = 1-cred
        int = paste(round(quantile(x,c(0.025,0.975)),digits = digits),collapse = ", ")
        return(paste(round(mean(x,na.rm = na.rm),digits = digits),paste("(",int,")",sep = "")))
    }
}