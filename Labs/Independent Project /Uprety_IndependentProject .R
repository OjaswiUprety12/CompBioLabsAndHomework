#Ocean Acidfication Consequences for Small Spotted CatSharks 
#CO2 is released in the atmosphere by anthropogenic activites such as the burning of fossil fuels and deforestation. 
#This graph was created using the data from NASA, Vital Signs of the Planet. 
#This graph shows atmospheric CO2 levels measured at Mauna Loa Observatory, Hawaii, from 2005-2020. The latest measurement in Februar shows atmospheric CO2 to be 413ppm.
#Create a graph 
library(tidyverse)
library(dplyr)

setwd("/Users/ojaswiuprety/Desktop/EBIO4420/CompBioLabsAndHomework/Labs/Independent Project /")
CO2.data <- read.csv(file="CO2 data .csv")
Plot1 <- ggplot() + geom_line(aes(y=CO2, x=Year),
                              data=CO2.data)
Plot1 + labs(title= "Relentless Rise of Atmospheric CO2 from 2005-2020", x= "Year", y= "CO2 parts per million", caption= "Data: https://climate.nasa.gov/vital-signs/carbon-dioxide")
#Import data 
Blood.Chemistry.Data <- read.csv(file="Blood Chemistry Data .csv")
NewBloodChemistryData <- select(Blood.Chemistry.Data, 1, 6, 7, 9)

#Graph of Dissolved CO2 comparison 
ggplot(NewBloodChemistryData, aes(x=Treatment, y=Dissolved.CO2.g.L, fill=Treatment)) +
  geom_bar(stat="identity", width=0.7) +
  ggtitle("Dissolved CO2 vs treatment")

#Graph of HCO3- 
ggplot(NewBloodChemistryData, aes(x=Treatment, y= mM.HCO3., fill=Treatment)) +
  geom_bar(stat="identity", width=0.7) +
  ggtitle("HC03- vs treatment")

#Graph of Na+ mmol/L
ggplot(NewBloodChemistryData, aes(x=Treatment, y= Na..mmol.L, fill=Treatment)) +
  geom_bar(stat="identity", width=0.7) +
  ggtitle("Na+ vs treatment")

#Behavioral Data 
Swimming.Behaviour.Data <- read.csv(file="Swimming Behaviour Data .csv")

#Find the missing data 
Swimming.Behaviour.Data [! complete.cases(Swimming.Behaviour.Data),]
Swimming.Behaviour.Data[-c(134),]
New.Swimming.Behaviour.Data <- Swimming.Behaviour.Data[-c(134),]

#Check there is a difference in rows 
nrow(Swimming.Behaviour.Data)
nrow(New.Swimming.Behaviour.Data)

#Comparing males and females and their total swimming time take out the unsexed data 
GendersSwimmingBehaviourData <- select(New.Swimming.Behaviour.Data, 1, 2, 6)
#To omit the Unsexed
NewGendersSwimmingBehaviourData <-GendersSwimmingBehaviourData[-c(135:150),] 
#Create a graph 
ggplot(data = NewGendersSwimmingBehaviourData) + 
  geom_point(mapping = aes(x = Treatment, y =Total.swimming.time, color=Sex, ))

#calculate the averages 
MeanOfGenders <- NewGendersSwimmingBehaviourData %>% group_by(Treatment, Sex) %>% summarise(mean(Total.swimming.time))


#Import the lateralisation data 
Lateralization.data <- read.csv(file="Lateralisation Data .csv")

#Try plotting data 
ggplot(data = Lateralization.data, mapping = aes(x = Treatment, y = Absolute.lateralization)) + 
  geom_boxplot() +
  ggtitle("Absolute lateralization")



