## ----setup, include = FALSE---------------------------------------------------
library(actimetrics)
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
path <- actiread::acti_example_gt3x()
data <- actiread::acti_read_gt3x(path, verbose = FALSE)
data <- data[1:12000, ]

## -----------------------------------------------------------------------------
summary <- acti_calculate_measures(
  data,
  calculate_mims = FALSE,
  calculate_ac = FALSE,
  flag_data = FALSE
)
summary

## ----eval = FALSE-------------------------------------------------------------
# counts <- acti_calculate_counts(data)
# wear <- acti_calculate_nonwear(counts)
# head(counts)
# head(wear)

## -----------------------------------------------------------------------------
processed <- mims_default_processing(data[1:6000, ], round_after_processing = TRUE)
head(processed)

## ----eval = FALSE-------------------------------------------------------------
# calibrated <- acti_calibrate(data)
# get_transformations(calibrated)

