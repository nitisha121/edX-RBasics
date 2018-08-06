library(tidyverse)
load("murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>% ggplot(aes(abb, rate)) + 
  geom_bar(width = 0.5, stat = "identity", color = "black") + coord_flip()

#use ggsave to save the visual created in order to use later
ggsave("barplot.png")
