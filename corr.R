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