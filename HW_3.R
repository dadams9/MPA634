# Introductory Script
# Initial: January 7, 2019
# Revision: January 7, 2019
# Ray Nelson

# Libraries
library(tidyverse)

# mpg data set
data(mpg)
glimpse(mpg)


# Plot 1
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() +
  geom_smooth(method = 'loess',se= FALSE)

# Plot 2
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() +
  geom_smooth(method = 'loess',se= FALSE, mapping = aes(group = drv))

# Plot 3
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() +
  geom_smooth(method = 'loess',se= FALSE, mapping = aes(group = drv))

# Plot 4
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(method = 'loess',se= FALSE)

# Plot 5
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(method = 'loess',se= FALSE, mapping = aes(linetype = drv))

# Plot 6
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point(shape = 21, color = "white", mapping = aes(fill = drv), stroke = 3, size = 5) 

#OR

#Plot 6 (this is the correct one I believe)
ggplot(data = mpg, mapping = aes(x=displ, y = hwy))+
  geom_point(color = "white", size = 7)+
  geom_point(mapping = aes(color = drv), size = 4)

