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
 
#----50 Example DPLYR--------
#from
URL <- "https://www.listendata.com/2016/08/dplyr-tutorial.html#"

mydata = read.csv("https://raw.githubusercontent.com/deepanshu88/data/master/sampledata.csv")

## 1. Random from df
sample_n(mydata, 2) 

## 2. random in percent
sample_frac(mydata, 0.1) #10%

## 3. remove duplicate row
x <- distinct(mydata)

## 4. remove duplicate par
x <- distinct(mydata, Index, .keep_all = T)

## 5. Select
select(mydata, Index, State)

## 6. Select several column
select(mydata, Index:Y2005)

## 7.Eliminating some column
x <- select(mydata, -Index)

## 8. Select variable start string "Y"
x <- select(mydata, -starts_with("Y"))

## 9. Select variable contain string "I"
x <- select(mydata, contains("I"))

## 10. Reorder
x <- select(mydata, State, everything())

## 11. Rename variable
x1 <- rename(df, origin.flight=origin)
names(df)
names(x1)

## 12. filter column
x1 <- filter(df, origin=="JFK")
head(x1)
x1 <- filter(df, origin %in% c("JFK","LGA"))
head(x1)
x1 <- filter(flights, month %in% c(3,5,7) & carrier %in% c("UA", "AA","B6","DL")) #using and
view(x1)
x1 <- filter(flights, month %in% c(3) | carrier %in% c("UA", "AA")) #using OR
View(x1)
x1<-filter(flights, !month %in% c(1,12,5)) #exclude some variable
distinct(x1, month)
x1 <- filter(flights, grepl("AA",tailnum)) #filter tailnum contains AA word
View(x1)