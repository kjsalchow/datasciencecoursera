## Week 2 Programming Assignment for R Programming Course
pollutantMean <- function(directory, pollutant, id = 1:332) {
  CompDataFrame <- data.frame()  
  for (i in 1:length(id)){
      if(id[i] < 10) {
        CompDataFrame <- rbind(CompDataFrame, read.csv(paste(directory,"/00",id[i],".csv", sep="")))
      }
      else if (id[i] < 100){
        CompDataFrame <- rbind(CompDataFrame, read.csv(paste(directory,"/0",id[i],".csv", sep="")))
      }
      else {
        CompDataFrame <- rbind(CompDataFrame, read.csv(paste(directory,"/",id[i],".csv", sep="")))
      }
    }
  mean(CompDataFrame[,pollutant], na.rm = TRUE)
}

complete <- function(directory, id = 1:332){
  nobsFrame <- data.frame()
  for (i in 1:length(id)){
    if (id[i] < 10){
      countFrame <- read.csv(paste(directory,"/00",id[i],".csv", sep=""))
    }
    else if (id[i] < 100) {
      countFrame <- read.csv(paste(directory,"/0",id[i],".csv", sep=""))
    }
    else {
      countFrame <- read.csv(paste(directory,"/",id[i],".csv", sep=""))
    }
    nobsCount <- cbind(id[i],sum(complete.cases(countFrame)))
    nobsFrame <- rbind(nobsFrame,nobsCount)
  }  
  nobsFrame
}

corr <- function(directory, threshold = 0){
    ## 'directory' is a character vector of lenght 1 indicating the location fo 
    ## the CSV files.
    
    ## 'threshold' is a numeric vector of length 1 indicating the number of
    ## completely observed observations (on all variables) required to compute
    ## the correlation between nitrate and sulfate; the default is 0
    
    ## Retrun a numeric vector of corrrelations.
    ## NOTE: Do not round the result!!
    
    
    
}