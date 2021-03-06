

plot1 <- function(energydata = "NODATA", energyfile = FALSE){
  if ( energydata == "NODATA" ){
    source("readProjectData.R")
    if (energyfile == FALSE) {
      energydata <- readProjectData()
    } else {
      energeydata <- readProjectData(energyfile)
    }
  }
  
  png("plot1.png")
  
  hist(energydata$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
  
  dev.off()
  
}