electric <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
data <- subset(electric, Date=="1/2/2007" | Date == "2/2/2007")
head(data)

Global_active_power <- as.numeric(as.character(data$Global_active_power))

hist(Global_active_power, main = "Global Active Power", xlab = "Global Active Power(kilowatts)", col = "red")

dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()
