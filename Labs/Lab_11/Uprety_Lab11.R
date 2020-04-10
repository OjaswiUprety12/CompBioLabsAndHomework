#Lab for Week 11 Data Filtering, Subsetting, Summarizing, and Plotting 
#How does wood density vary across families of tree species? 
install.packages("tidyverse")
library(ggplot2)

#Import the data 
setwd("/Users/ojaswiuprety/Desktop/EBIO4420/CompBioLabsAndHomework/Labs/Lab_11")
GlobalWoodDataSet <- read.csv("GlobalWoodData.csv", stringsAsFactors = F)

#Changing the name of the Density Column 
colnames(GlobalWoodDataSet)
names(GlobalWoodDataSet) [names(GlobalWoodDataSet) =="Wood.density..g.cm.3."] <- "Wood Density"
GlobalWoodDataSet

#First identifying the rows with missing data 
GlobalWoodDataSet [! complete.cases(GlobalWoodDataSet),]

#Removing the row with the missing data 
GlobalWoodDataSet[-c(12150),]

#Reassigning my dataframe in order to drop this row entirely 
GlobalWoodDataSet<- GlobalWoodDataSet[-c(12150),]

#Problem 5: Creating a new data frame 
#Now it includes only Family and Binominal 
NewGlobalWoodDataSet<-select(GlobalWoodDataSet, 2, 3, 4)
library(dplyr)

#It only has one of each species listed 
NewGlobalWoodDataSet %>% distinct(Binomial, .keep_all=TRUE)

#Now it should include the mean of the Density measurements for each species. I do not think I understand the summarise function too well. 
NewGlobalWoodDataSet %>% summarise(mean(Wood Density))

#Try the problem in a new way 
GlobalWoodDataSet <- noNAdata %>%
  group_by(Binomial, Family) %>%
  summarise (MeanDensity = mean(Density))

GlobalWoodDataSet <- summarise(
  group_by(Binomial, Family), 
  MeanDensity= mean(Density))

#Problem number 6: Making a new dataframe that has the average density for each family 
MeanFamilyDensity <- select (GlobalWoodDataSet, 2, 4)
MeanFamilyDensity %>% distinct(Family, .keep_all=TRUE)

#sorting the results by aescending order 
MeanFamilyDensity[order(MeanFamilyDensity$WoodDensity),]

#Plotting in ggplot 
ggplot(MeanFamilyDensity) + geom_boxplot(aes(x=Family, y=WoodDensity))



