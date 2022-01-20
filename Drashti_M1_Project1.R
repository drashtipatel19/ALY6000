print ("Drashti Patel")

install.packages("vcd")

library(vcd)

sales <- c(7, 11, 15, 20, 19, 11, 18, 10, 6, 22)
temperature <-c(69, 81, 77, 84, 80, 97, 87, 70, 65, 90)
mean(temperature)
sd(temperature)
cor(sales, temperature)
plot(sales, temperature)

sales <- sales[! sales %in% c(20)]
sales

sales <- append(sales, 16, 3)
sales

names <- c("Tom", "Dick", "Harry")
names

y <- matrix(1:10, nrow = 5, ncol = 2)
y

icSales <- data.frame(sales, temperature)

str(icSales)

summary(icSales)

student <- read.csv(file= 'D://Student.csv', header=TRUE, sep=",")
names(student)

q()