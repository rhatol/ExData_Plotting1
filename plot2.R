## read file that is already filtered feb 1-2, 2007
PROJ1 <- read.table("d:\\household_power_consumption_2-1-07_to_2-2-07.txt", header=TRUE, sep=";", as.is = FALSE, dec=".", stringsAsFactors=FALSE,colClasses=c("character","character",rep("numeric",7)))

## covert Date & Time variable to a single DateTime column
DateTime <- strptime(paste(PROJ1$Date,PROJ1$Time),"%d/%m/%Y %H:%M:%S")
PROJ1$DateTime <- DateTime

## do the plot
plot(PROJ1$DateTime,PROJ1$Global_active_power, type="l",ylab="Global Active Power (kilowatts)", xlab="")

#copy to device png
dev.copy(png,file="plot2.png")
dev.off()
