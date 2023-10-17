library(tidyverse)
load(RData/murders.RData)

murders %>% mutate(abb = reorder(abb,rate)) %>% 
  ggplot(aes(abb,rate))+
  geom_bar(width = 0.5, stat = "identity", colour = "black")+
  coord_flip()

ggsave("figs/barplot.png")
