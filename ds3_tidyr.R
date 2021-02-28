#Data cleaning and preparation
library(tidyr) #or


library(tidyverse)

#using default dataset

# 1.Gather
view(table4a)

table4a %>% gather('1999','2000', key = "year", value = "case")

table4a %>% gather('1999','2000', key = "year", value = "population")


# 2.spreading
view(table2)

table2 %>% spread(key = type, value = count)
