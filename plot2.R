
PROJ1 <- read.table("d:\\household_power_consumption_2-1-07_to_2-2-07.txt", header=TRUE, sep=";", as.is = FALSE, dec=".", stringsAsFactors=FALSE,colClasses=c("character","character",rep("numeric",7)))

DateTime <- strptime(paste(PROJ1$Date,PROJ1$Time),"%d/%m/%Y %H:%M:%S")
PROJ1$DateTime <- DateTime

plot(stagePROJ1$DateTime,stagePROJ1$Global_active_power, type="l",ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png,file="plot2.png")
dev.off()
