# MEDIANA (1.5)
list_a <- c(2, 5, 6, 2, 1, 8, 10, 22)
list_b <- c(2, 5, 6, 2, 1, 8, 10, 22, 44)

mediana <- function(list_) {
  s_list <- sort(list_, decreasing = FALSE)
  res <- 0
  if (length(list_) %% 2) {
    it <- length(list_)/2 + 0.5
    res <- s_list[it:it]
  } else {
    n1 <- length(list_) / 2
    n2 <- n1 + 1
    res <- (s_list[n2:n2] + s_list[n1:n1]) / 2
  }
  return (res)
}
 
print("MEDIANA lista a:")
mediana(list_a)
median(list_a)

print("MEDIANA lista b:")
mediana(list_b)
median(list_b)