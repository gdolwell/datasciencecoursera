add2 <- function(x, y) {
  x+y
}

above10 <- function(x){
  y <- x > 10
  x[y]
}

above <- function(x, n =10){
  y <- x >n
  x[y]
}

columnmean <- function(y, removeNA = T){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  means
}

