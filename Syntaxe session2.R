
# Import the package ------------------------------------------------------


# Structure of dataFrame --------------------------------------------------

# We gonna continue with the last Dataset
dataset2 <- dataset
dim(dataset2)

nrow(dataset2)
ncol(dataset2)

str(dataset2)


# import Data in R --------------------------------------------------------

getwd()
setwd("C:/Users\\USER MSI\\Documents\\R Project\\GimpactR_Training\\dataset\\Course")
ghana_dataset <- read.csv("WFP_2022Jul16_Ghana_FoodPricesData.csv")

str(ghana_dataset)
# names of variables
colnames(ghana_dataset)

select1 <- ghana_dataset[,1:4]
select2 <- ghana_dataset[1:10,c(1,3,8)]
select3 <- ghana_dataset[,-11]


# Data manipulation -------------------------------------------------------
library(tidyverse)

# pipe %>%  ctrl+shift+m

f(2) == equal  2 %>% f()

select4 <- select(ghana_dataset, 1:4)
select5 <- ghana_dataset %>% select(1:4)
select6 <- ghana_dataset %>% select(Country, Admin.1, Market,Price)
select7 <- ghana_dataset %>% select(-11)
select8 <- ghana_dataset %>% select(-c(Data.Source,Currency))

# two function  if you want to select rows  
# index slice()
# name  filter()

# select the first 10 rows
select10 <- ghana_dataset %>% 
  slice(1:10)

# first 10 rows column 1,3,8
select11 <- ghana_dataset %>% 
  slice(1:10) %>% 
  select(1,3,8)

select12 <- select10 %>% select(1,3,8)

select13 <- ghana_dataset %>% filter(Year == 2022)

# filter from 2017 to 2022
select14 <- ghana_dataset %>% filter(Year > 2017)
table(ghana_dataset$Commodity)
select15 <- ghana_dataset %>% filter(Commodity == "Maize")
# Select Maize, Rice (imported) and Sorghum
select16 <- ghana_dataset %>% filter(Commodity == "Maize",Commodity =="Sorghum",Commodity=="Rice (imported)")
select16 <- ghana_dataset %>% filter(Commodity %in% c("Maize","Sorghum","Rice (imported)"))
select17 <- ghana_dataset %>% filter(Year %in% c(2018:2022))

# create column mutate()
column1 <- ghana_dataset %>% mutate(
  new_column = mean(Price, na.rm =TRUE)
)
table(ghana_dataset$Price.Type)
select18 <- ghana_dataset %>% filter(
  Price.Type == "Retail" , Year == 2022
)

# rename() if you want to rename newnames = old names

ghana_dataset2 <- ghana_dataset %>% rename(
  Region = Admin.1
)

# ordering data  arrange()
ghana_dataset3 <- ghana_dataset %>% arrange(Commodity)
ghana_dataset4 <- ghana_dataset %>% arrange(desc(Commodity))
