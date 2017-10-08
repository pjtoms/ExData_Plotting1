##
## Exploratory Data Analysis - Coursera Data Science Course 4
## Project 1: Data Plotting
## File: plot1.R
##
## Description:
##    Produce plot 1
##
## Output:
##    File ./plot1.png
##
## Author:
##    pjtx4657 Patrick (Pat) T...
##

message("\nINFO: plot1 entry")

# Do common setup.
source("setup.R")

# Output png file name.
pngFile <- "plot1.png"

# Produce the plot.
#   Setup the png file for 480 by 480.
#   Produce the plot based on the assignment sample.
#     future - is there a good way to dynamically determine the number of breaks
#              instead of counting the breaks on the example histogram.
#   Close the graphics device.

message("INFO: plot1 getting data and building png file")

png(filename = pngFile, width = 480, height = 480)
# Base plot.
with(hpc.df, hist(Global_active_power, col = "red", breaks = 12,
                  main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))

message("INFO: plot1 output in ", pngFile)
dev.off()

message("INFO: plot1 exit")
