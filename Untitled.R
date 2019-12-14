list_a <- c(2, 3, 4, 5, 9)

cus_avg <- function (list_, option_loop) {
  sum <- 0
  count <- 0
  
  if (option_loop == 1) {
   
    for (v in list_) {
      sum <- sum + v
      count <- 1 + count
    }
    return (sum / count)
  }
  else if (option_loop == 2) {
    count <- count + 1
    while (count < length(list_) + 1) {
      sum <- sum + list_[count: count]
      count <- count + 1
    }
    return (sum / length(list_))
  }
  else if (option_loop == 3) {
    count <- 1
    repeat{
      sum <- sum + list_[count: count]
      if (count == length(list_) ) {
        break
      }
      count <- count + 1
    }
    return (sum / length(list_))
  }
}

print("Loop: FOR")
cus_avg (list_a, 1)
print("Loop: WHILE")
cus_avg (list_a, 2)
print("Loop: REPEAT")
cus_avg (list_a, 3)
print("MEAN")
mean(list_a)





