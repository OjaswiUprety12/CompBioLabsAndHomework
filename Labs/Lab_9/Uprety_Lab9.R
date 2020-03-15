#Lab 09: Parsing Dates and Times from a Real Data File
setwd("/Users/ojaswiuprety/Desktop/EBIO4420/CompBioLabsAndHomework/Labs/Lab_9")
CameraData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)

#Problem 1 
#Installing Lubridate 
library(tidyverse)
library(lubridate)
library(nycflights13)
today()
now()

#This is the format we want to implement. I am not sure why it is not showing month, day, year? We can use helper functions to deal with time zones: with_tz() and force_tz()
mdy_hm("09/19/2013 04:29")

#We would want to convert the TestVector into the desired function. I thought this would work because it is similar to the format in line 13. 
mdy_hm(TestVector)

#Converting the dates and times into actual objects that represent time. Creating a new variable to test on.
TestVector <- CameraData$DateTime[1]

#So we want the 1st DateTime column to look like "09/19/2013 4:29". Trying to use the strptime function, the dates are already stored as strings.
summary(CameraData)

#In the online example I am looking at, this should exist as an integer. But to me it would make more sense to be a character? 
typeof(TestVector)

#The online format looks like this "%m- %d- %Y %H:%M:%S", not sure if I am entering the format string correctly due to NA being printed. 
#I also tried putting the dates like "%09- %19- %2013 %04:%29:%00" I could not figure out how to get an output. 
CameraData$DateTime <- strptime(CameraData$DateTime, "09-19-2013 04:29:00")
CameraData

