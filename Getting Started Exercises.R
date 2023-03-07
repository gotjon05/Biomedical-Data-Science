#Getting Started Exercises
library(downloader) 
library(dplyr)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv" 
download(url, destfile=filename)
df <- read.csv("femaleMiceWeights.csv")


#Q2) What is the entry in the 12th row and second column? 26.25
df[12,2]

#Q3)report the weight of the mouse in the 11th row
df$Bodyweight[11]

#Q4)How many mice are included in our dataset? 24
nrow(df)

#what rows are associated with hf diet and compute the average weight of these mice
#12 ROWS, with mean of 26.83417
hf_diet <- filter(df, Diet == "hf")
mean(hf_diet$Bodyweight)

#take sample of size 1 from numbers 13 to 24
##taking sample of 10 rows from the iris dataset.\
set.seed(1)

#I tried this, wrong. i dont think this data is tied to the data at all
sample(13:nrow(df),1)
#Correct 
sample(df$Bodyweight[13:24] ,1 ) 

