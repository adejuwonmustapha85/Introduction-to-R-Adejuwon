######## Data ########

install.packages("rmarkdown")

data()
 #### some datasets  needs packages to access 
 install.packages("AMR")
 library("AMR")

 ###accessing iris 
iris 
DNase

#### First set your working directory using setwd() or get 


### load .csv file

library(tidyverse)

rlibrary(readr)
d1 <- read.csv("dataset_class4.csv")
print(d1)
glimpse(d1)

typeof(d1$minutes_to_nearest_facility)
dim(d1)
attributes(d1)
summary(d1)
is.character(d1$smoker)
table(d1$smoker)
####Look at smoke status by residence 

table(d1$county, d1$residence, d1$smoker)

install.packages("arsenal")
library(arsenal)


d3 <- tableby(county ~ residence + smoker, data = d1)

summary(d3)

class(as.factor(d1$residence))


#### We are changing/ recording column residence; rural to be 1 and urban to be 2 and changing back 

d1$residence <- ifelse(d1$residence == "urban", "1", "2")
view(d1)

table(d1$residence)


d1$residence <- ifelse(d1$residence == "1", "urban", "rural")
view(d1)
table(d1$residence)

### - select() - in package dplyr, helps us to select columns in a data frame
### pipe(|>) - control + shift + m

d2 <- d1 %>% 
  select(county, residence, smoker)
view(d2)


d3 <- d1 %>% 
  select(-c(residence, smoker))  
view(d3)
dim(d3)


#### merge data d2 and d3.
### we use the function merge()
#### To join the two data sets, we need to have common column name 

d4 <- merge(d2, d3, by.x = "county", by.y = "county", all.x = TRUE)
dim(d4)
