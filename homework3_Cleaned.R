setwd("C:/Users/user/Desktop")
rm(list=ls())

library(tidyverse)
library(fs)

ausDs <- read.csv("AustraliaDataScienceJobs.csv")
id <- c(0:7)
State <- c("New South Wales","Victoria","Queensland","South Australia","Western Australia","Tasmania","Northern Territory","Australian Capital Territory")
keyPair <- data.frame(id, State)

ausDs <- ausDs %>% group_by(State) %>% summarise(Estimate.Base.Salary = mean(Estimate.Base.Salary))
write.csv(ausDs,"AustraliaDataScienceEBS.csv", row.names = FALSE)
