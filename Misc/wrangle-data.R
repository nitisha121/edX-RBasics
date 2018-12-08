library(tidyverse)
murders <- read_csv("murders.csv")
murders <- murders %>% mutate(region = factor(region), rate = total / population * 10^5)
save(murders, file = "murders.rda")