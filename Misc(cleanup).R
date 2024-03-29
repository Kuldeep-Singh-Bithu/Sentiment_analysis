library(dplyr)
library(tm)
library(reshape2)
tweets = read.csv('./Tweets.csv')
names(tweets)
tweets$date <-  as.Date(tweets$tweet_created)
posNeg = tweets %>% group_by(airline_sentiment) %>% dplyr::summarise(count = n())
posNeg
airlines= tweets %>% group_by(airline) %>% dplyr::summarise(count=n())
posNegByAirline <-dcast(tweets, airline ~ airline_sentiment)
