#Random Variables Exercise
library(downloader) 
library(dplyr)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )

#What is the average of these weights?
x %>% unlist %>% mean

#Find mean absolute difference between sample of 5 and all the values
set.seed(1)
avg_sample <- x %>% sample(5) %>% mean
total <- x %>% mean 
abs(avg_sample - total)

#change to set.seed(5) and find absolute difference 
set.seed(5)
sample_sd5 <- x %>% sample(5) %>% mean
total <- x %>% mean 
abs(sample_sd5 - total)

#the mean absolute difference was different because average of the samples is a random variable


#random sample of 5 mice 1,000 times. Save these averages. 
set.seed(1)
v <- numeric(0)
for(i in 1:1000){
  v[i] <- sample(x,5) %>% mean
}

#What percent of these 1,000 averages are more than 1 away from the average of x?
abs(mean(v) - mean(x))
#0.07209378  

#redo the sample to 10,000.  5 mice 10,000 times. Save these averages. What percent of these 10,000 averages are more than 1 ounce away from the average of x ?
set.seed(1)
z <- numeric(0)
for(i in 1:10000){
  z[i] <- sample(x,5) %>% mean
}
abs(mean(z) - mean(x))
#0.004859378





