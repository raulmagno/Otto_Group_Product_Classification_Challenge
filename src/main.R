setwd('/home/raul/R/RProjects//Otto_Group_Product_Classification_Challenge/DATA/')
library(ggplot2)
library(dplyr)
library(caret)
train <- read.csv("train.csv",sep = ",")
test <- read.csv("test.csv", sep = ",")

inTrain <- createDataPartition(y = train$target, p = 0.7 , list = FALSE)
training <- train[inTrain,]
testing <- train[-inTrain,]
