# Programming Assignment for Month 2 Week 4
# of Data Science Specialization, Coursera
# answers by gdolwell
# 19 December 2017

# set local working directory
setwd("~/Code/R/datasciencecoursera/R_Programming/ProgrammingAssignment3/")

# read in outcome csv
outcome_of_care <- read.csv("outcome-of-care-measures.csv", stringsAsFactors = F)

# view outcome head
head(outcome_of_care)
dim(outcome_of_care)

#re-enter column 11 as numeric
outcome[, 11] <- as.numeric(outcome[,11])

# produce a histogram of column 11
hist(outcome[ , 11])

#sum((outcome[, 11]) >=90)
#sum((outcome[, 11])<90)
names(outcome)


best <- function(state = "all", outcome, rank = 1) {
  # verify state is correct format
  if(state %in% outcome_of_care$State || state == "all"){
     # do nothing
  } else {
    return(print("State not found, use two letter abbreviation, ie:
                 AZ."))
  }
  
  # verify condition is correct format
  if(outcome == "heart attack"){
    n <- 11
  } else if (outcome == "heart failure"){
    n <- 17
  } else if (outcome == "pneumonia"){
    n <- 23
  } else {
    return("Print Invalid outcome, options: heart attack, heart failure
           pneumonia.")
  }
  
  #verify rank is in scope, or a valid input
  if(max(rank) > nrow(outcome_of_care) & rank != "worst"){
    return("Rank out of scope.")
  }
  
  # return argument acceptance
  #print("State and condition are valid")
  
  # get slice of outcome_of_care according to state input
  state_slice <- outcome_of_care[outcome_of_care$State == state, ]
  
  # get rid of coecion warning by changing Not Available to NA
  state_slice[,n] <- gsub("Not Available", NA, state_slice[, n])
  
  # sort slice as numerice by outcome column, then by name
  if(rank == "worst"){
    sorted <- state_slice[order(c(as.numeric(state_slice[, n])), state_slice[2],
                                decreasing = T, na.last = T), ]
    rank <- 1
  } else {
    sorted <- state_slice[order(c(as.numeric(state_slice[, n])), state_slice[2]), ]
  }
  #return winner
  return(sorted[rank, 2])
   
}


rankall <- function(outcome, number){
  state_names <- sort(unique(outcome_of_care$State))
  winners.df <- data.frame(nrow = length(state_names), ncol = 2)
  i = 0
  for (state_name in state_names){
    winners.df[i, 1] <- state_name
    winners.df[i, 2] <- best(state_name, outcome, number)
    i <- i + 1
  }
  colnames(winners.df)[1:2] <- c("State", "Hospital")
  return(winners.df)
}



#best('AZ' , "heart attack")
best("TX", "heart attack", "worst")
best("TX", "heart failure", 1:5)
best("MD", "heart attack", "worst")
best("MD", "pneumonia")

rankall("heart attack", 20)
tail(rankall("pneumonia", "worst"), 3)
best("GU", "pneumonia", "worst")
