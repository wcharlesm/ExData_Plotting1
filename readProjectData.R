readProjectData <- function(datafile="household_power_consumption.txt") {
  
  
  data <- read.table(
    datafile,
    header = TRUE,
    sep = ";",
    na.strings = "?",
    comment.char = "",
    colClasses = c(
        'character',
        'character',
        'numeric',
        'numeric',
        'numeric',
        'numeric',
        'numeric',
        'numeric',
        'numeric'
      ))
  
  data <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
  
  makeTime <- function(date, time) {
    dateTime <- as.character(paste(date, time, sep=" "))
    
    strptime(dateTime, format="%d/%m/%Y %H:%M:%S")
    
    dateTime
    
  }
  
  
  data <- cbind(mapply(makeTime, data$Date, data$Time), data)
  
  colnames(data)[1] <- "DateTime"
  
  data
}