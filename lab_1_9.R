#odchylenie przeciętne

list_a <- c(4, 5, 6, 1)

mean_dev <- function (list_) {
  if (length(list_) > 0) {
    avg_ <- mean(list_)
    sum <- 0
    for (x in list_) {
      r <- x - avg_
      if (r < 0) {
        r <- r * (-1)
      }
      sum <- sum + r
    }
    return (sum / length(list_))
  } else {
   return (0)
  }
}

mean_dev(list_a)