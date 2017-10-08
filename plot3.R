##
## Exploratory Data Analysis - Coursera Data Science Course 4
## Project 1: Data Plotting
## File: plot3.R
##
## Description:
##    Produce plot 3
##
## Output:
##    File ./plot3.png
##
## Author:
##    pjtx4657 Patrick (Pat) T...
##

message("\nINFO: plot3 entry")

# Do common setup.
source("setup.R")

# Output png file name.
pngFile <- "plot3.png"

# Produce the plot.
#   Setup the png file for 480 by 480.
#   Produce the plot based on the assignment sample.
#   Close the graphics device.

message("INFO: plot3 getting data and building png file")

png(filename = pngFile, width = 480, height = 480)
# Base plot.
with(hpc.df, plot(x = Date_time, y = Sub_metering_1, type = "n",
                  xlab = "", ylab = "Energy sub metering"))
# Plot lines.
with(hpc.df, lines(x = Date_time, y = Sub_metering_1, col = "black"))
with(hpc.df, lines(x = Date_time, y = Sub_metering_2, col = "red"))
with(hpc.df, lines(x = Date_time, y = Sub_metering_3, col = "blue"))
# Legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty=1)
       
message("INFO: plot3 output in ", pngFile)
dev.off()

message("INFO: plot3 exit")
