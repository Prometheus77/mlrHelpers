#' @title Cross-validate and join folds
#'
#' @description
#' Wrapper to force cross-validation to join all folds before
#' evaluating, rather than taking the mean of each fold separately
#'
#' @param measures Measure or list of measures to apply join aggregation to
#'
#' @export
testJoin <- function(measures) {
  if (class(measures) == "Measure") {
    mlr::setAggregation(measures, test.join)
  } else if (class(measures) == "list") {
    lapply(measures, function(x) mlr::setAggregation(x, test.join))
  } else {
    stop("Parameter measures must be either a valid mlr measure, or a list of measures")
  }
}

test_join <- testJoin
