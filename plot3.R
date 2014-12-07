plot3 <- function(energydata = "NODATA", energyfile = FALSE){
  if ( energydata == "NODATA" ){
    source("readProjectData.R")
    if (energyfile == FALSE) {
      energydata <- readProjectData()
    } else {
      energeydata <- readProjectData(energyfile)
    }
  }
  
  png("plot3.png")
  
  plot(energydata$DateTime, energydata$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", col="black")
  lines(energydata$DateTime, energydata$Sub_metering_2, col="red")
  lines(energydata$DateTime, energydata$Sub_metering_3, col="blue")

  dev.off()
  
}