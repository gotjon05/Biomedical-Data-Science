#dplyr exercises

url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- "msleep_ggplot2.csv" 
download(url, destfile=filename)
df <- read.csv("msleep_ggplot2.csv")

#determine what type of object is returned? "data.frame"
class(df)

#filter only the primates, find number of rows
#extract the sleep (total) for the primates.

df %>% filter(order == "Primates")%>%select(sleep_total) %>% class


#average amount of sleep for primates: 10.43373
df %>% filter(order == "Primates")%>%select(sleep_total) %>% unlist %>% mean





