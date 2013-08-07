#' Train SVM - Train Support Vector Maschine
#'
#' third script in R
#' 
#' @param x vector
#' @param y vector
#' @param data required dataset
#' @param SVM Support Vector Maschine
#' 
#' @author Tim Forkmann
#' @export
#' @examples
#' creates own data

# load the kernlab package
library(kernlab)

# train the SVM
svp <- ksvm(xtrain,ytrain,type="C-svc",kernel='vanilladot',C=100,scaled=c())
Look and understand what svp contains

# General summary
svp

# Attributes that you can access
attributes(svp)

# For example, the support vectors
alpha(svp)
alphaindex(svp)
b(svp)

# Use the built-in function to pretty-plot the classifier
plot(svp,data=xtrain)