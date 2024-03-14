# Load necessary packages
library(testthat)

# Load the functions to test
source("../R/is_algebra.R")

# Define tests for is_algebra function
test_that("is_algebra correctly identifies algebras", {
  # Define sample space and sets
  universe <- c(0, 1, 2)
  sets <- list(c(0), c(1, 2), universe)
  
  # Test if sets form an algebra
  expect_true(is_algebra(universe, sets))

  # Define sample space and sets
  universe <- c("a", "b", "c")
  sets <- list(c("a"), c("b", "c"), universe)
  
  # Test if sets form an algebra
  expect_true(is_algebra(universe, sets))
})

test_that("is_algebra correctly identifies non-algebras", {
  # Define sample space and sets
  universe <- c("a", "b", "c", "d")
  sets <- list(c("a", "b"), c("c", "d"), c("a", "b", "e"))
  
  # Test if sets form an algebra
  expect_false(is_algebra(universe, sets))
})
