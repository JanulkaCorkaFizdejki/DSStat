#Średnia winsorowska

list_a <- c(2, 3, 1, 4, 6, 5, 8, 7, 10, 9)

wins <- function (list_) {
  list_ = sort(list_, decreasing = FALSE)
    ws <- round (0.175 * length(list_)) 
    if (ws >= 1) {
      min_ <- list_[ws + 1]
      max_ <- list_[length(list_) - ws]
      min_n <- list_[ws + 2]
      max_n <- list_[length(list_) - (ws + 1)]
      sum <- 0
      for (x in list_) {
        if (x <= min_) {
          x <- min_n
        }
        if (x >= max_) {
          x <- max_n
        }
        sum <- sum + x
      }
      print(sum/ length(list_))
    } else {
      return(mean(list_))
    }
}

wins(list_a)