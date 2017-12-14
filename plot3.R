## This code is run AFTER the data has been read into R and properly subsetted(in plot1.R)
## AND also after Date and Time are combined into a single POSIX variable column, dt (plot2.R)
## First plot the graphs and then the lines. 

 with(df2, {
        plot(dt,Sub_metering_3,pch ="",xlab = "",ylab = "") 
        plot(dt,Sub_metering_2,pch ="",xlab = "",ylab = "") 
        plot(dt,Sub_metering_1,pch="",xlab = "",ylab = "Energy sub metering")})
with(df2, {
        lines(dt,Sub_metering_3,col = "Blue")
        lines(dt,Sub_metering_2,col = "Red")
        lines(dt,Sub_metering_1)})
legend("topright",cex = 0.7, lty = 1,col = c("Blue","Red","Black"),legend = c("Sub_metering_3","Sub_metering_2","Sub_metering_1"))

## save the plot to a png file
dev.copy(png,'~/datasciencecoursera/Exploratory Data Analysis/RPlot3.png')
dev.off()