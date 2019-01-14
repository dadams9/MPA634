library(tidyverse)

data(mpg)

ggplot(data = mpg, mapping = aes(x=class, fill=drv))+
  geom_bar(position = "fill")+
  facet_grid(rows = vars(year))

  