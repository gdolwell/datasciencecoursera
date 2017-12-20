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


best <- function(state, outcome) {
  if(state %in% outcome_of_care$State ){
     
  } else {
    return(print("State not found, use two letter abbreviation, ie:
                 AZ."))
  }
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
  print("State and condition are valid")
  
  state_slice <- outcome_of_care[outcome_of_care$State == state, ]
  sorted <- state_slice[order(as.numeric(state_slice[, n])), ]
  print(sorted[1, 2])
  #min_mort_hospital <- sort(state_slice[min(as.numeric(state_slice[,n])), 2])
  #return(min_mort_hospital[])
}


#best('AZ' , "heart attack")
best("TX", "heart attack")
best("TX", "heart failure")
best("MD", "heart attack")
best("MD", "pneumonia")
