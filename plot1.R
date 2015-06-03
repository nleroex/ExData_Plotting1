BIG <- read.table("household_power_consumption.txt", sep = ";", header=T)
BIG$Date <- as.Date(BIG$Date, format="%d/%m/%Y")
power <- BIG[BIG$Date >= as.Date("2007-02-01") & BIG$Date <= as.Date("2007-02-02"),]
power$Global_active_power <- as.numeric(as.character(power$Global_active_power))
hist(power$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png, file="plot1.png", width = 480, height = 480)
dev.off()