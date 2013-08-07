#' Predict SVM - Predict Support Vector Maschine
#'
#' 4. script in R
#' 
#' @param x vector
#' @param y vector
#' @param data required dataset
#' @param SVM Support Vector Maschine
#' 
#' @author Tim Forkmann
#' @export
#' @examples
#' predicts SVM

# Predict labels on test
ypred = predict(svp,xtest)
table(ytest,ypred)

# Compute accuracy
sum(ypred==ytest)/length(ytest)

# Compute at the prediction scores
ypredscore = predict(svp,xtest,type="decision")

# Check that the predicted labels are the signs of the scores
table(ypredscore > 0,ypred)

# Package to compute ROC curve, precision-recall etc...

library(ROCR)
pred <- prediction(ypredscore,ytest)

# Plot ROC curve
perf <- performance(pred, measure = "tpr", x.measure = "fpr")
plot(perf)

# Plot precision/recall curve
perf <- performance(pred, measure = "prec", x.measure = "rec")
plot(perf)

# Plot accuracy as function of threshold
perf <- performance(pred, measure = "acc")
plot(perf)