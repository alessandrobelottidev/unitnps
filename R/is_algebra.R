union_sets <- function(set1, set2) {
  # Convert the vectors to sets to remove duplicates
  set1 <- unique(set1)
  set2 <- unique(set2)
  
  # Perform the union of the two sets
  union_set <- union(set1, set2)
  
  return(union_set)
}

#' Check if a collection of sets is an algebra
#' @param universe The sample space (vector)
#' @param sets A list of sets (list of vectors)
#' @return TRUE if sets is an algebra, FALSE otherwise
#' @export
is_algebra <- function(universe, sets) {
  # CONDITION 1: Sample/universe space must be included
  idx <- which(sapply(sets, function(x) identical(x, universe)))
  if (length(idx) == 0) {
    return(FALSE)
  }

  # CONDITION 2: Closure under complementation (each set and its complement must be present in the collection)
  for (i in 1:length(sets)) {
    if (i != idx) {
      set_i <- sets[[i]]
      complement_i <- setdiff(universe, set_i)
      
      # Check if the complement of the set is in the collection
      if (!any(sapply(sets, function(x) identical(x, complement_i)))) {
        return(FALSE)
      }
    }
  }

  # CONDITION 3: Closure under union
  # Use union_sets to unite all sets and then check if that set is part of sets
  union_set <- Reduce(union_sets, sets)
  if (!any(sapply(sets, function(x) identical(x, union_set)))) {
    return(FALSE)
  }

  return(TRUE)
}
