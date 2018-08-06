library(dslabs)
library(tidyverse)
data(murders)

p <- murders %>% ggplot(aes(population/10^6, total, label = abb)) + geom_text(nudge_x = 0.075) + scale_x_log10() + 
  scale_y_log10() + xlab("Popln in mill (log scale)") + ylab("Total murders (log scale)") +
  ggtitle("US Gun murders in US 2010")

p <- p + geom_point(aes(col=region), size = 3) #x and y mappings are inherited from when we defined p / aes 

r <- murders %>% summarize(rate = sum(total) / sum(population) * 10^6) %>% .$rate

p <- p + geom_abline(intercept = log10(r), lty = 2, color = "darkgrey") + scale_color_discrete(name = "Region")
