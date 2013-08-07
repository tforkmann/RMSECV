#' Cross-Validation SVM - Cross-Validation Support Vector Maschine
#'
#' 5. script in R
#' 
#' @param x vector
#' @param y vector
#' @param data required dataset
#' @param SVM Support Vector Maschine
#' 
#' @author Tim Forkmann
#' @export
#' @examples
#' Cross Validation SVM

cv.folds <- function(n,folds=3)
## randomly split the n samples into folds
{
split(sample(n),rep(1:folds,length=length(y)))
}