# ŚREDNIA UCINANA 
list_a <- c(7, 6, 9, 6, 7, 10, 2, 8, 5, 10)

# k = % (10% = 0.1)
avg_trim <- function (list_, k) {
  opt_l <- 0
  s_list <- sort(list_, decreasing = FALSE)
  reme_l <- round((length(s_list) * k) / 2)
  if (reme_l >= 1) {
      if (reme_l == 1) {
        opt_l <- s_list[!s_list %in% 1:2]
      }
  }
  return (opt_l)
}

avg_trim(list_a, 0.2)