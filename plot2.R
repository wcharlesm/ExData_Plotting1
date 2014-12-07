plot2 <- function(energydata = "NODATA", energyfile = FALSE){
  if ( energydata == "NODATA" ){
    source("readProjectData.R")
    if (energyfile == FALSE) {
      energydata <- readProjectData()
    } else {
      energeydata <- readProjectData(energyfile)
    }
  }
  
  png("plot2.png")
  
  plot(energydata$DateTime, energydata$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

  dev.off()
  
}