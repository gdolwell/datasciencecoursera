# Exercise 1 for week two fo R_Programming
# By gdolwell
# Date 12/16/2017

# if stringr is not installed do so now.
#install.packages("stringr")

# load library used in padding numer to form file name
library(stringr)

# where on my system csvs are located
y <- "~/Code/R/datasciencecoursera/R_Programming/specdata/"

# part one: open directory, load files and add data for specified pollutant
#  to vector n, then return mean of n, na.rm = T
PollutantMean <- function(directory, pollutant, id = 1:332){
  setwd(directory)
  
  n <- vector()
  z <- 1
  
  if (pollutant == "sulfate") {
    for(i in id){
      x <- read.csv(paste(str_pad(i , 3, pad="0"), ".csv", sep=""), header = T)
      n <- c(n, x$sulfate)
      z <- z+1
    }
  }
  else if(pollutant == "nitrate"){
    for(i in id){
      x <- read.csv(paste(str_pad(i , 3, pad="0"), ".csv", sep=""), header = T)
      n <- c(n, x$nitrate)
      z <- z +1
    }
  }
  else{print("Invalid pollutant choice.")}
  return(mean(n, na.rm = T))
}

# verify results
PollutantMean(y, "sulfate", 1:10)
PollutantMean(y, "nitrate", 70:72)
PollutantMean(y, "nitrate", 23)


# part two: define a function that opens a directory, and sums all Complete
# observation in a given range of files
Complete <- function(directory, id = 1:332){
  setwd(directory)
  n.df <- data.frame()
  
  for (i in id){
    x <- read.csv(paste(str_pad(i , 3, pad="0"), ".csv", sep=""), header = T)
    n.df <-rbind(n.df, c(i, sum(complete.cases(x))))
  }
  colnames(n.df) <- c('id', 'noobs')
  return(n.df)
}

# verify results
Complete(y, 1)
Complete(y, c(2, 4, 8, 10 , 12))
Complete(y, 30:25)
Complete(y, 3)

# part three: define a function that given a directory, and number 
# of complete observations strictly greater thant a supplied threshold, 
# return correlation between nitrate and sulfate
Corr <- function(directory, threshold = 0){
  setwd(directory)
  n.vect <- numeric(length = 0)
  
  for (thing in list.files(directory)){
    x <- read.csv(thing, header = T)
    if (sum(complete.cases(x)) > threshold){
      #print(c(thing,"Greater Than"))
      n.vect <- c(n.vect, cor(x$nitrate, x$sulfate, use="pairwise.complete.obs"))
    } else{next}
    
  }
  return(n.vect)
}  

cr <- Corr(y, 150)
head(cr)
summary(cr)

cr <- Corr(y, 400)
head(cr)
summary(cr)

cr <- Corr(y, 5000)
summary(cr)
length(cr)

cr <- Corr(y)
summary(cr)
length(cr)




