#' RMSECV - Root-mean-squared error of cross-validation
#'
#' first script in R
#' 
#' @param x vector
#' @param y vector
#' @param data required dataset
#' @param RMSEC Root-mean-squared error of cross-validation
#' 
#' @author Tim Forkmann
#' @export
#' @examples
#' RMSECV(dataset.csv)

RMSECV <- function(dataname){
    
    #Read Data
    data <- read.table(dataname, header=T, sep=",")
    
    #Split into vectors 
    x <-data$x
    y <-data$y

    #Build RMSECV
    RMSECV <- function(a,b) sqrt (mean(a-b)^2)

	#Show RMSECV
    RMSECVModell <- RMSECV(x,y)
    RMSECVModell
}