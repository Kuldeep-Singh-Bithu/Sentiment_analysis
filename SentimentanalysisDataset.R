# we can start processing the tweets to calculate the sentiment score.
scores = score.sentiment(airline, pos.words,neg.words , .progress='text')


#Create a variable in the data frame.
scores$airline = factor(rep(c("Delta", "JetBlue","United"), noof_tweets))


# Calculate positive, negative and neutral sentiments.
scores$positive <- as.numeric(scores$score >0)
scores$negative <- as.numeric(scores$score <0)
scores$neutral <- as.numeric(scores$score==0)


#Split the data frame into individual datasets for each airline.
delta_airline <- subset(scores, scores$airline=="Delta")
jetblue_airline <- subset(scores,scores$airline=="JetBlue")
united_airline <- subset(scores,scores$airline=="United")


#Create polarity variable for each data frame.


delta_airline$polarity <- ifelse(delta_airline$score >0,"positive",ifelse(delta_airline$score < 0,"negative",ifelse(delta_airline$score==0,"Neutral",0)))

jetblue_airline$polarity <- ifelse(jetblue_airline$score >0,"positive",ifelse(jetblue_airline$score < 0,"negative",ifelse(jetblue_airline$score==0,"Neutral",0)))

united_airline$polarity <- ifelse(united_airline$score >0,"positive",ifelse(united_airline$score < 0,"negative",ifelse(united_airline$score==0,"Neutral",0)))
