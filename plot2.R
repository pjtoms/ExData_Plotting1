##
## Exploratory Data Analysis - Coursera Data Science Course 4
## Project 1: Data Plotting
## File: plot2.R
##
## Description:
##    Produce plot 2
##
## Output:
##    File ./plot2.png
##
## Author:
##    pjtx4657 Patrick (Pat) T...
##

message("\nINFO: plot2 entry")

# Do common setup.
source("setup.R")

# Output png file name.
pngFile <- "plot2.png"

# Produce the plot.
#   Setup the png file for 480 by 480.
#   Produce the plot based on the assignment sample.
#   Close the graphics device.

message("INFO: plot2 getting data and building png file")

png(filename = pngFile, width = 480, height = 480)
# Base plot.
with(hpc.df, plot(x = Date_time, y = Global_active_power, type = "n",
                  xlab = "", ylab = "Global Active Power (kilowatts)"))
# Plot line.
with(hpc.df, lines(x = Date_time, y = Global_active_power))

message("INFO: plot2 output in ", pngFile)
dev.off()

message("INFO: plot2 exit")
