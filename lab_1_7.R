#WARIANCJA
list_a <- c(7, 9, 3, 5, 8, 4)
pow <- function (x, y) {
  if (y == 0) {
    return (1)
  } else {
      return (x * pow(x, y-1))
    }
}

var_ <- function (list_) {
  if (length(list_) > 0) {
    sum <- 0
    avg_ <-  mean(list_)
    for (x in list_) {
      sum <- sum + pow((x - avg_), 2)
    }
    return(sum / length(list_))
  } else {
    return (0)
  }
   
}

var_(list_a)
