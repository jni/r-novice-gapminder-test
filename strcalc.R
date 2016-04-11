compute = function(input_string) {
  values = unlist(strsplit(input_string, ' '))
  num0 = as.integer(values[1])
  operator = values[2]
  num1 = as.integer(values[3])
  if (operator == '+') {
    return(num0 + num1)
  } else {
    print('unknown operator!')
    return(0)
  }
}
