## This code is run AFTER the data has been read into R and properly subsetted(in plot1.R)
## AND also after Date and Time are combined into a single POSIX variable column, dt (plot2.R)
## First plot the graphs and then the lines. 

png(filename = '~/datasciencecoursera/Exploratory Data Analysis/RPlot4.png', height = 480, width = 480)
par(mfrow = c(2,2))
## Plot#1 upper left
with(df2,{plot(dt,Global_active_power,pch ="", xlab = "",ylab = "Global active power") 
        lines(dt, Global_active_power)})

## Plot #2 upperright
with(df2,{plot(dt,Voltage,pch ="", xlab = "datetime", ylab = "Voltage" ) 
        lines(dt, Voltage)})



## Plot#3 bottom left
with(df2, plot(dt,Sub_metering_3,pch ="",xlab = "",ylab = "", ylim = c(0,40), axes = FALSE))
        par(new = TRUE)
    with(df2, plot(dt,Sub_metering_2,pch ="",xlab = "",ylab = "",ylim = c(0,40),axes = FALSE)) 
        par(new = TRUE)
        with(df2, plot(dt,Sub_metering_1,pch="",xlab = "",ylab = "Energy sub metering")) 

        
        with(df2,lines(dt,Sub_metering_3,col = "Blue"))
           with(df2, lines(dt,Sub_metering_2,col = "Red"))
        with(df2, lines(dt,Sub_metering_1))
legend("topright",lty = 1,col = c("Blue","Red","Black"), legend = c("Sub_metering_3","Sub_metering_2","Sub_metering_1"))

## Plot #4 Lower Right
with(df2,{plot(dt,Global_reactive_power,pch ="", xlab = "datetime", ylab = "Global reactive power") 
        lines(dt, Global_reactive_power)})

## turn off the graphical device
dev.off()
