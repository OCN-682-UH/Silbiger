### This is my first script ####
### Created by: Nyssa Silbiger ####
### Created on: 2024-09-03 ####


### libraries #####
library(tidyverse)
library(here)


### Read in my data #####
WeightData<-read_csv(here("Week_02","Data","weightdata.csv"))


# analysis ######
head(WeightData)
tail(WeightData) ## looks at the bottom 6 lines
view(WeightData)
