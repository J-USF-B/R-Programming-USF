A <- matrix(c(2, 0, 1, 3), ncol=2)
A
B <- matrix(c(5, 2, 4, -1), ncol = 2)
B

result_addition = A + B
result_addition
result_subtraction = A - B
result_subtraction

diag_matrix <- diag(c(4, 1, 2, 3))
diag_matrix

custom_matrix <- diag(3, 5, 5)
custom_matrix[1, 2:5] <- 1
custom_matrix[2:5, 1] <- 2

custom_matrix
  