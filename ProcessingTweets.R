delta_txt = sapply(delta_tweets, function(t) t$getText() )
jetblue_txt = sapply(jetblue_tweets, function(t) t$getText() )
united_txt = sapply(united_tweets, function(t) t$getText() )
noof_tweets = c(length(delta_txt), length(jetblue_txt),length(united_txt))
airline<- c(delta_txt,jetblue_txt,united_txt)

