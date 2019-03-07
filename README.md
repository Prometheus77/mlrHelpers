# mlrHelpers
Helper functions for the `mlr` package. Meant to run in combination with `mlr`; you will want to load both libraries together.

# How to install
```
devtools::install_github("Prometheus77/mlrHelpers")
```

If that didn't work, try this first:
```
install.packages("devtools")
```
...then try again.

# Incomplete list of new functions
* `cv(n)`: Creates a `ResampleDesc` object indicating cross-validation using the given number of folds. Equivalent to `makeResampleDesc("CV", n)`.
* `testJoin(measure, or list of measures)`: Modifies a `Measure` object (or a list of `Measure` objects) to aggregate by joining all test samples and then evaluating the combined prediction set, rather than the default of behavior of taking the mean of the errors of the individual test prediction sets.

# Other changes
* Provides underscore case aliases for all standard `mlr` functions, e.g. `makeClassifTask` becomes `make_classif_task`.
