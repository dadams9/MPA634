# Introductory Script
# Initial: January 7, 2019
# Revision: January 7, 2019
# Ray Nelson
# Homework Revisions made by Devin Adams, January 10, 2019

# Libraries
library(tidyverse)

# mpg data set
data(mpg)
?mpg
glimpse(mpg)

# Simple scatterplot of mileage on displacement

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point()

# Add a loess line
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

# Add a linear regression line
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(color = "red") +
  geom_smooth(method = "lm")

# Looking at the data by class of car
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  geom_smooth(method = "lm")

#Map a continuous variable to color
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = cty)) + 
  geom_point()

#Map a continuous variable to size
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, size= cty, color = displ < 5)) + 
  geom_point()

#Map a continuous variable to shape
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, shape = displ)) + 
  geom_point()

#Use facet
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = trans)) + 
  facet_wrap(~ class, nrow = 2)


