#converting list to a dataframe
do.call(rbind.data.frame, delta_airline)

#Polarity Plot – Customer Sentiments (Delta Airlines)
qplot(factor(polarity), data=delta_airline, geom="bar", fill=factor(polarity))+xlab("Polarity Categories") + ylab("Frequency") + ggtitle("Customer Sentiments - Delta Airlines")

#Customer Sentiment Scores (Delta Airlines)
qplot(factor(score), data=delta_airline, geom="bar", fill=factor(score))+xlab("Sentiment Score") + ylab("Frequency") + ggtitle("Customer Sentiment Scores - Delta Airlines")




#converting list to a dataframe
do.call(rbind.data.frame, jetblue_airline)

#Polarity Plot – Customer Sentiments (JetBlue Airlines)
qplot(factor(polarity), data=jetblue_airline, geom="bar", fill=factor(polarity))+xlab("Polarity Categories") + ylab("Frequency") + ggtitle(" Customer Sentiments - JetBlue Airlines ")

#Customer Sentiment Scores (JetBlue Airlines)
qplot(factor(score), data=jetblue_airline, geom="bar", fill=factor(score))+xlab("Sentiment Score") + ylab("Frequency") + ggtitle("Customer Sentiment Scores - JetBlue Airlines")

#Polarity Plot – Customer Sentiments (United Airlines)
qplot(factor(polarity), data=united_airline, geom="bar", fill=factor(polarity))+xlab("Polarity Categories") + ylab("Frequency") + ggtitle("Customer Sentiments - United Airlines")

#Customer Sentiment Scores (United Airlines)
qplot(factor(score), data=united_airline, geom="bar", fill=factor(score))+xlab("Sentiment Score") + ylab("Frequency") + ggtitle("Customer Sentiment Scores - United Airlines ")

ggplot(data=posNeg , aes(x="" , y=count , fill=airline_sentiment))+geom_bar(width=1,stat="identity")+
  geom_text(aes(y = count/3 + c(0, cumsum(count)[-length(count)]), 
                label =count), size=4)+coord_polar("y") + scale_fill_manual(values=c("#ffbebe", "#fff9be", "#d4ffbe"))
ggplot(tweets, aes(tweets$airline, fill=airline_sentiment)) + geom_bar()
