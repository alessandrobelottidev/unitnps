library(testthat)

# Load the functions to test
source("../R/equiprobable_probability.R")

test_that("equiprobable_probability correctly calculates events", {
  expect_identical(equiprobable_probability(3, 10), 3/10)
  expect_identical(equiprobable_probability(1, 6), 1/6)
})