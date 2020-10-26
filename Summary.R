#The code below will 
#summarize the overall positive, negative and neutral scores
df = ddply(scores, c("airline"), summarise,
           pos_count=sum( positive ),
           neg_count=sum( negative ),
           neu_count=sum(neutral))
df$total_count = df$pos_count +df$neg_count + df$neu_count

df$pos_prcnt_score = round( 100 * df$pos_count / df$total_count )
df$neg_prcnt_score = round( 100 * df$neg_count / df$total_count )
df$neu_prcnt_score = round( 100 * df$neu_count / df$total_count )

attach(df)
lbls &lt;-paste(df$airline,df$pos_prcnt_score)
lbls &lt;- paste(lbls,"%",sep="")
pie(pos_prcnt_score, labels = lbls, col = rainbow(length(lbls)), main = "Positive Comparative Analysis - Airlines")
