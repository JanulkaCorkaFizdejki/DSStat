# ŚREDNIA UCINANA 
list_a <- c(7, 6, 9, 6, 7, 10, 2, 8, 5, 10)

# k = liczba elementów do usunięcia, np. 2 - dwie najniższe wartości i 2 najwyższe
avg_trim <- function (list_, k) {
  opt_l <- 0
  s_list <- sort(list_, decreasing = FALSE)
  if (k > 0 && k < round (length(list_) / 2)) {
      for (i in 0:k) {
        if (i == 1) {
          opt_l <- s_list[s_list != s_list[i]]
          opt_l <- opt_l[opt_l != opt_l[length(opt_l)]]
        } else {
          opt_l <- opt_l[opt_l != opt_l[i - 1]]
          opt_l <- opt_l[opt_l != opt_l[length(opt_l)]]
        }
      }
  }
  return (mean(opt_l))
}

avg_trim(list_a, 1)
