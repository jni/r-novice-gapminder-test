compute = function(input_string) {
  # Perform simple arithmetic encoded in input string
  # e.g. '1 + 2' -> 3, or '1 - 2' -> -1
  values = unlist(strsplit(input_string, ' '))
  num0 = as.integer(values[1])
  operator = values[2]
  num1 = as.integer(values[3])
  if (operator == '+') {
    return(num0 + num1)
  } else if (operator == '-') {
    return(num0 - num1)
  } else {
    print('unknown operator!')
    return(NA)
  }
}
