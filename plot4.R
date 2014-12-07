plot4 <- function(energydata = "NODATA", energyfile = FALSE){
  if ( energydata == "NODATA" ){
    source("readProjectData.R")
    if (energyfile == FALSE) {
      energydata <- readProjectData()
    } else {
      energeydata <- readProjectData(energyfile)
    }
  }

  
  png("plot4.png")
  
  par(mar = c(4,4,2,2))
  
  par(mfrow = c(2,2))
  
  plot(energydata$DateTime, energydata$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
  
  plot(energydata$DateTime, energydata$Voltage, type="l", ylab="Voltage", xlab="datetime")
  
  plot(energydata$DateTime, energydata$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", col="black")
  lines(energydata$DateTime, energydata$Sub_metering_2, col="red")
  lines(energydata$DateTime, energydata$Sub_metering_3, col="blue")
  
  plot(energydata$DateTime, energydata$Global_reactive_power, type="l", xlab="datetime")

  dev.off()
  
}