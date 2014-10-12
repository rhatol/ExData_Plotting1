PROJ1 <- read.table("d:\\household_power_consumption_2-1-07_to_2-2-07.txt", header=TRUE, sep=";", as.is = FALSE, dec=".", stringsAsFactors=FALSE,colClasses=c("character","character",rep("numeric",7)))

PROJ1$Date <- strptime(PROJ1$Date,"%d/%m/%Y")

hist(PROJ1$Global_active_power,xlab="Global Active Power (kilowatts)",col="red")
dev.copy(png,file="plot1.png")
dev.off()
