#' @title Cross-validation
#'
#' @description
#' Quickly create a cross-validation strategy with a few keystrokes
#'
#' @param folds Number of folds to use
#' @param aggr Aggregation strategy
#'
#' @export
cv <- function(folds = 5) {
  mlr::makeResampleDesc(method = "CV", iters = folds)
}
