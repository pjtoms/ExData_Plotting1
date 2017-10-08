##
## Exploratory Data Analysis - Coursera Data Science Course 4
## Project 1: Data Plotting
## File: setup.R
##
## Description:
##    General setup script for the project. Checks the environment,
##    makes sure the input is available, read in the file to a data frame
##    and perform basic data time house-keeping.  
##
## Output:
##    'true' if setup was successful, otherwise 'false'.
##
## Author:
##    pjtx4657 Patrick (Pat) T...
##

#message("\nINFO: Setup entry")

# Set some local variables for the various project files.
fileBase <- "./household_power_consumption"
figureDir <- "./figure"
dataURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataZip <- paste(fileBase, "zip", sep=".")

# Make this global.
dataFile <- paste(fileBase, "txt", sep=".")

# Check the environment and if missing a required package error out.
if (!require(envDocument) || !require(sqldf)) {
  message("ERROR: Local environment issues, please install required packages. See previous messages")
  stop("Environment issues found.")
}

# Check that we're in the proper R Session directory.
scriptDirectory <- dirname(getScriptPath())
cwd <- getwd()
if (cwd != scriptDirectory) {
  message("ERROR: Local environment issues, please change your R session directory to: ", scriptDirectory)
  stop("Environment issues found.")
}

# If needed, download and unzip the data file in the current directory.
if (!file.exists(dataFile)) {
  if (!file.exists(dataZip)) {
    download.file(dataURL, dataZip)
  }
  unzip(zipfile=dataZip, exdir=".")
}

# Go ahead and read in the file and do basic date time stuff.

# Set file information.
hpcFile <- file(dataFile)
attr(hpcFile, "file.format") <- list(sep = ";", header = TRUE) 

# Read the file and get the data subset. Set date time value.
hpc.df <<- sqldf("select * from hpcFile where Date = '1/2/2007' or Date = '2/2/2007'")
hpc.df$Date_time <- strptime(paste(hpc.df$Date, hpc.df$Time), format = "%d/%m/%Y %H:%M:%S")

# Close the file.
close(hpcFile)

#message("\nINFO: Setup exit")
