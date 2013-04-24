#' RMSECV - Root-mean-squared errof of cross-validation
#'
#' first script in R
#' 
#' @param x cector of measured distance values
#' @param c Vector of measured concentration values
#' @param sd cector of absolute uncertainty in concentration
#' @param startdata required dataset
#' @param detrenddata_constant Constant Detrends Transformation of startdata(c)
#' @param detrenddata_linear Linear Detrends Transformation of startdata(c)
#' 
#' @author Tim Forkmann
#' @export
#' @examples
#' detrends(dataset.csv)

RMSECV <- function(dataname){
    
    #Read Data
    data <- read.table(dataname, header=T, sep=",")
    
    #Split into vectors 
    x <-data$x
    y <-data$y

    #Build RMSECV
    RMSECV <- function(a,b) sqrt (mean(a-b)^2)

	# plot data
    RMSECVModell <- RMSECV(x,y)
    RMSECVModell
}