#' Probability of Equiprobable Events
#'
#' This function calculates the probability of an event occurring given the number
#' of positive cases for that event and the total number of cases.
#'
#' @param positive_cases Number of positive cases for the event.
#' @param total_cases Total number of cases.
#' @return The probability of the event occurring.
#' @examples
#' equiprobable_probability(3, 10)
#' # Output: 0.3
#' @export
equiprobable_probability <- function(positive_cases, total_cases) {
  if (!is.numeric(positive_cases) || !is.numeric(total_cases)) {
    stop("Both positive_cases and total_cases must be numeric.")
  }
  
  if (positive_cases < 0 || total_cases < 0) {
    stop("Both positive_cases and total_cases must be non-negative.")
  }
  
  if (positive_cases > total_cases) {
    stop("Number of positive cases cannot be greater than total number of cases.")
  }
  
  probability <- positive_cases / total_cases
  return(probability)
}
