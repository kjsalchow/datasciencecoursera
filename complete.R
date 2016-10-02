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