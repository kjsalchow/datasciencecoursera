## Week 2 Programming Assignment for R Programming Course
pollutantMean <- function(directory, pollutant, id = 1:332) {
  CompDataFrame <- data.frame()  
  for (i in 1:length(id)){
        CompDataFrame <- rbind(CompDataFrame, read.csv(paste(directory,"/",formatC(id[i], width=3, flag="0"),".csv",sep="")))
    }
  mean(CompDataFrame[,pollutant], na.rm = TRUE)
}

complete <- function(directory, id = 1:332){
  nobsFrame <- data.frame()
  for (i in 1:length(id)){
    countFrame <- read.csv(paste(directory,"/",formatC(id[i], width=3, flag="0"),".csv",sep=""))
    nobsCount <- cbind(id[i],sum(complete.cases(countFrame)))
    nobsFrame <- rbind(nobsFrame,nobsCount)
  }  
  nobsFrame
}

corr <- function(directory, threshold = 0){
  corrVector <- vector(mode = "numeric")
  idX<-0
  dirList <- dir(directory)
  for (i in 1:length(dirList)){
    currentFile <- read.csv(paste(directory,"/",dirList[i],sep=""))
    if (sum(complete.cases(currentFile)) > threshold) {
      idX <- idX + 1
      nitrateVector <- currentFile[complete.cases(currentFile),"nitrate"]
      sulfateVector <- currentFile[complete.cases(currentFile),"sulfate"]
      corrVector[idX] <- cor(nitrateVector,sulfateVector)
    }
  }
  corrVector
}