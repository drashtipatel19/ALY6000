#Print name
print("Drashti Patel")

#Loading packages through pacman
pacman::p_load(FSA, FSAdata, magrittr,plotrix,dplyr, tidyr, plyr, tidyverse)

#Import dataset 
library(readr)
td <- read.csv(file= "C://Users//drash//Downloads//tiktok_top_1000.csv")
view(td)

#removing columns
td <- td[,!(names(td)%in% c("Country","Link","Scraped"))]
head(td)

#structure of dataset
str(td)

#null value checking 
mean(td$Rank)
mean(td$Subscribers.count)
mean(td$Views.avg.)
mean(td$Likes.avg.)
mean(td$Comments.avg.)
mean(td$Shares.avg.)

summary(td)

plot(td$Rank,td$Comments.avg.,xlab = "Rank",ylab = "Comments", main = "Number of Comments of all ranks", col=c("black","red"))

options(scipen=999)
plot(td$Rank,td$Subscribers.count,xlab = "Rank",ylab = "Comments", main = "Number of Comments of all ranks", col=c("black","red"))

#plot 1 Scatter plot with regression line 
options(scipen=999)
x <- td$Rank 
y <- td$Views.avg.
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
# Add regression line
plot(x, y, main = "Views of Top 1000 viewed videos in Tiktok",
     xlab = "Rank", ylab = "Views",
     pch = 19, frame = FALSE , col="green")
abline(lm(y ~ x, data = td), col = "blue")

#plot 2 is a bar graph of subscribers of Top 14 views on Tiktok 
options(scipen=999)
# defining vector
x <- c(41600000,13400000,11400000,135400000,263700,49700000,433300,2000000,1300000,15300000)
names(x)<- c("1","2","3","4","5","6","7","8","9","10")
# plotting vector
barplot(x,xlab = "Rank",
        ylab = "Subscribers", col = "black",
        col.axis = "darkgreen",
        col.lab = "darkgreen",
        cex.axis=0.7,
        cex.names=0.60, width= 1, main="Subscribers of Top 10 views of Tiktok IDs ")
legend(10,135400000,legend = c("1.Billieeilish","2.Badbunny","3.Chipmunksoftiktok","4.Charlidamelio","5.Yessicadcs","6.Therock","7.The_pruld","8.Lukedonkin","9.Mastertingus","10.Txt.bighitent"),bty="n")

#plot 3 is pie chart for Likes of Top 10 Tiktokers 
slices <- c(18100000,7300000,3000000,2600000,1400000,3000000,2700000,2400000,2000000,2200000)
lbls <- c("Billieeilish","Badbunny","Chipmunksoftiktok","Charlidamelio","Yessicadcs","Therock","The_pruld","Lukedonkin","Mastertingus","#Txt.bighitent")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels
pie3D(slices,labels=lbls,
      main="Likes of Top 10 views on tiktok")


# plot 4 Pie Chart of Shares of Top 5 viewed videos on tiktok
slices <- c(54800,106800,64200,35200,138400)
lbls <- c("Billieeilish","Badbunny","Chipmunksoftiktok","Charlidamelio","Yessicadcs")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Shares of Top 5 viewed videos on tiktok")



