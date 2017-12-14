## This is the code for plot2.png
## This code is run AFTER the data has been read into R and properly subsetted(in plot1.R)
## First join Date and Time columns into one object using as.POSIXct
## as.POSIXct(paste(x$date, x$time), format="%Y-%m-%d %H:%M:%S")

dateTime <- as.POSIXct(paste(df2$Date, df2$Time), format="%Y-%m-%d %H:%M:%S")
df2$dt <- dateTime
## Code for the plot
plot(df2$dt,df2$Global_active_power,xlab = "",
     ylab = "Global active power(kilowatts)",pch ="")
lines(df2$dt,df2$Global_active_power)        

## save the plot to the png file
dev.copy(png,'~/datasciencecoursera/Exploratory Data Analysis/RPlot2.png')
dev.off()

