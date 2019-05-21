library(tidyverse)
library(datasauRus)

datasaurus_dozen%>%
  group_by(dataset) %>%
  summarise(
    mean_x = mean(x),
    sd_x = sd(x),
    mean_y = mean(y),
    sd_y = sd(y),
    cor = cor(x, y)
  )



datasaurus_dozen %>%
  ggplot(aes(x = x, y=y)) +
  geom_point(aes(colour = dataset)) +
  geom_smooth(method = "lm", se = FALSE) +
  facet_wrap(~dataset, ncol = 3, scales = "free") +
  guides(colour = FALSE)
  theme_minimal()