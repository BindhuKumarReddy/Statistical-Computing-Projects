# problem 1
install.packages("PASWR")
library("PASWR")
attach(data)
hist(Rat$survival.time,col=c(1,2,3,4,5,6,7),main="Survival time of rats")
# problem 2
data<-read.csv("C:\\Users\\pbkr\\Downloads\\Gapminder.csv")
head(data,5)
install.packages("ggplot2")
library("ggplot2")
aggregate(country~continent,a,function(x) length(unique(x)))
ggplot(gm, aes(x = gdpPercap, y = lifeExp))
ggplot(gm, aes(x = gdpPercap, y = lifeExp)) + geom_point(aes(col=continent), size=3)+xlim(0,1200000)
# problem 3
data<-read.csv("C:\\Users\\pbkr\\Downloads\\website traffic.csv")
a<-data
plot(a$DayOfWeek,a$Visits,col=seq(1,7),main="traffic on each day of the week",xlab="day of week",ylab="traffic")
plot(a$DayOfWeek,a$Visits,col=seq(1,7),main="traffic on each day of the week",xlab="day of week",ylab="traffic",order=c("Friday","Monday","Saturday","Sunday","Thursday","Tuesday","Wednesday"))
summary(a$DayOfWeek,a$Visits)
summary(a)
# problem 4
Name<-c("ana","brian","cathy","dough","john","lucas","marcus","nabin","william","zoe")
test1<-c(56,78,87,89,95,98,59,78,87,98)
test2<-c(86,67,78,89,87,67,94,78,81,83)
df1<-data.frame(Name,test1)
df2<-data.frame(Name,test2)
df<-merge(df1,df2)

sprintf("the number of students scored more in test 2 than test 1 are %d ",sum(df$test2>df$test1))
sprintf("the number of students scored more in test 1 than test 2 are %d ",sum(df$test1>df$test2))
sprintf("the number of students scored equal in both tests are %d ",sum(df$test1==df$test2))
sprintf("mean and standard deviation of test 1 are %f,%f",mean(df$test1),sd(df$test1))
sprintf("mean and standard deviation of test 1 are %f ,%f",mean(df$test2),sd(df$test2))
# problem 5
b<-read.table("https://archive.ics.uci.edu/ml/machine-learning-databases/auto-mpg/auto-mpg.data")
names<-c("mpg","cylinders","displacement","horsepower","weight","acceleration","model year","origin","car name")
colnames(b)<-names
print(colnames(b))
print("dimensions including missing values")
dim(b)
b[b=='?']<-NA
print("After deleting rows with missing values is")
dim(na.omit(b))
boxplot(b$mpg,b$cylinders)
# problem 6
vote<-read.table("http://www.stat.berkeley.edu/~statlabs/data/vote.data",header=T)
names(vote)
# graphical representation
pie(table(vote$race),labels=c("missing","white","hispanic","black","asian","other"))
hist(vote$race,main="the distribution of the voter's race")




