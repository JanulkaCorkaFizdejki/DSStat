#Rozstęp próby

list_a <- c(4, 1, -50, 20, 8)

gap_ <- function (list_) {
  if (length(list_) > 0) {
    if (length(list_) == 1) {
      return (list_[1:1])
    } else {
      return (max(list_) - min(list_))
    }
  } else {
    return (0)
  }
}

gap_(list_a)