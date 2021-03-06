compute <- function(input_string) {
  # Perform simple arithmetic encoded in input string
  # e.g. '1 + 2' -> 3, or '1 - 2' -> -1
  #
  # Args:
  #   input_string: the string containing the operation
  #                 to be performed.
  #
  # Returns:
  #   The numeric result of the arithmetic operation.
  values <- unlist(strsplit(input_string, ' '))
  num0 <- as.integer(values[1])
  operator <- values[2]
  num1 <- as.integer(values[3])
  result <- switch(operator,
                   '+' = num0 + num1,
                   '-' = num0 - num1,
                   '*' = num0 * num1,
                   '/' = num0 / num1,
                   NA)
  if (is.na(result)) {
    print('unknown operator!')
  }
  return(result)
}