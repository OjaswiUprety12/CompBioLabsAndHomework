library(tidyverse)
ggplot2::mpg
ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy))
ggplot(data=mpg)
#???
ggplot(data = <DATA>) + 
  <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

ggplot(data = mpg)

?mpg

ggplot(data=mpg) + geom_point(mapping = aes(x=hwy, y=cyl))
#Not useful just single points no relationship. There is no trend to follow for the data. 
ggplot(data=mpg) + geom_point(mapping = aes(x=class, y=drv))

#Trying the aesthetic properties 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#This is advised against, hard to visualize
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

# Transperancy of the points 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#Shapes of the points, can only plot 6. 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

#Can make all of the points blue 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

#Making subplots of the class of cars in the dataframe
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

# facet my plot on the combination of two variables. not sure whats going on here? 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)

#not facet in the rows or columns dimension. 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(. ~ cyl)

?facet_wrap

#Trying a smooth graph 
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))  
  
#Add multiple line types
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

# Add points and lines. 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()

#Adding points and lines, and for points adding the different classes shown in different colors. 
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth()

#If you want to make a trend line specifcally for subcompact cars
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)

#Predict the outcome. This graph is going to have lines and points and its gonna be categorized by color based of the three drv. 
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  #if you make this true it show gray areas. You cannot remove the se=FALSE. Where do I put the showlegend= FALSE
  geom_smooth(se = FALSE) 





