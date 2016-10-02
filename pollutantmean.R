pollutantMean <- function(directory, pollutant, id = 1:332) {
  if(id[1] < 10){
    CompDataFrame <- read.csv(paste(directory,"/00",id[1],".csv", sep=""))
  }
  else if(id[1] < 100){
    CompDataFrame <- read.csv(paste(directory,"/0",id[1],".csv", sep=""))
  }
  else {
    CompDataFrame <- read.csv(paste(directory,"/",id[1],".csv", sep=""))
  }
  if (length(id) > 1) {
    for (i in 2:length(id)){
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
  }
  mean(CompDataFrame[,pollutant], na.rm = TRUE)
}