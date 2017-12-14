## First we read the data into R, remove NAs while reading (NA are shown as ? in the dataset)
library(readr)
df <- read_delim("datasciencecoursera/Exploratory Data Analysis/household_power_consumption.txt",
";", escape_double = FALSE, col_types = cols(Date = col_date(format = "%d/%m/%Y"), Time = col_character()), na = "?",
trim_ws = TRUE)
## Read only the rows with data for the two gien dates
df2 <- df[df$Date >= "2007-02-01"& df$Date <= "2007-02-02",]

## Code for the plot plot1.R
hist(df2$Global_active_power,col = "Red", main = "Global Active Power", 
     xlab = "Global Active Power(Kilowatts)")
## Save graph
dev.copy(png,'~/datasciencecoursera/Exploratory Data Analysis/RPlot1.png')
dev.off()
