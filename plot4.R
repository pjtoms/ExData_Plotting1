##
## Exploratory Data Analysis - Coursera Data Science Course 4
## Project 1: Data Plotting
## File: plot4.R
##
## Description:
##    Produce plot 4
##
## Output:
##    File ./plot4.png
##
## Author:
##    pjtx4657 Patrick (Pat) T...
##

message("\nINFO: plot4 entry")

# Do common setup.
source("setup.R")

# Output png file name.
pngFile <- "plot4.png"

# Produce the plot.
#   Setup the png file for 480 by 480.
#   Produce the plot based on the assignment sample.
#       Note minor labeling differences on some of the plots.
#   Close the graphics device.

message("INFO: plot4 getting data and building png file")

png(filename = pngFile, width = 480, height = 480)

# We want a 2x2 plot, drawn by rows.
par(mfrow = c(2, 2))

# Top left plot, 1,1.
with(hpc.df, plot(x = Date_time, y = Global_active_power, type = "n",
                  xlab = "", ylab = "Global Active Power"))
with(hpc.df, lines(x = Date_time, y = Global_active_power))

# Top right plot, 1,2.
with(hpc.df, plot(x = Date_time, y = Voltage, type = "n",
                  xlab = "datetime", ylab = "Voltage"))
with(hpc.df, lines(x = Date_time, y = Voltage))

# Bottom left plot, 2,1.
with(hpc.df, plot(x = Date_time, y = Sub_metering_1, type = "n",
                  xlab = "", ylab = "Energy sub metering"))
with(hpc.df, lines(x = Date_time, y = Sub_metering_1, col = "black"))
with(hpc.df, lines(x = Date_time, y = Sub_metering_2, col = "red"))
with(hpc.df, lines(x = Date_time, y = Sub_metering_3, col = "blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty=1)

# Bottom right plot, 2,2.
with(hpc.df, plot(x = Date_time, y = Global_reactive_power, type = "n",
                  xlab = "datetime", ylab = "Global_reactive_power"))
with(hpc.df, lines(x = Date_time, y = Global_reactive_power), lwd = 2)


message("INFO: plot4 output in ", pngFile)
dev.off()

message("INFO: plot4 exit")
