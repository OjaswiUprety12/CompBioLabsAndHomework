#Lab for Week 11 Data Filtering, Subsetting, Summarizing, and Plotting 
#How does wood density vary across families of tree species? 
install.packages("tidyverse")

#Import the data 
setwd("/Users/ojaswiuprety/Desktop/EBIO4420/CompBioLabsAndHomework/Labs/Lab_11")
GlobalWoodDataSet <- read.csv("GlobalWoodData.csv", stringsAsFactors = F)

#Changing the name of the Density Column 
colnames(GlobalWoodDataSet)
names(GlobalWoodDataSet) [names(GlobalWoodDataSet) =="Wood.density..g.cm.3."] <- "Wood Density g/cm^3"
GlobalWoodDataSet

#Removing the rows with missing data 