# Data manipulations
library(dplyr)
library(nycflights13)

#pada contoh ini akan digunakan contoh data flight

ls_data <- list(flights,airlines, airports, planes, weather)

#cek data
head(ls_data[1])
head(ls_data[2])
head(ls_data[3])
head(ls_data[4])
head(ls_data[5])

#mengambil data dari list
#-----to data frame
df <- as.data.frame(ls_data[1])

#-----to array
arr <- df$tailnum #just an example

#-----to obj
obj <- arr[12] #just an example

## beberapa fungsi yang sering digunakan pada dplyr
#-----select (Memilih kolom)
df <- select(flights, year, dep_time)
head(df)
df <- select(flights, -year)
head(df)

#-----filter
df <- filter(flights, hour>=5)
head(df)

#-----arange
df <- arrange(flights, hour)

#-----group by & summirise
df <- flights %>% group_by(origin) %>% summarise(flighthour = sum(hour),
                                                 avdist = mean(distance))

#-----distict
distinct(flights, origin)

#-----mutate
df <- flights %>% group_by(origin) %>% summarise(flighthour = mean(hour),
                                                 avdist = mean(distance)) %>% mutate(av_a = avdist/flighthour)
 
