#practice utilizing R functions, learn to read in data
#create data and write files
#lab three

#using the function sample make a function that returns the sums 
#of rolling two dice x amount of times
dice <- function(x) {
  roll1 <- (sample(6, x, replace = TRUE))
  roll2 <- (sample(6, x, replace = TRUE))
  return (roll1 + roll2)
}

#practice plotting a vector 
#create a vector with 10 numbers
v <- 1:10

#using plot, plot the vector
#read in the provided "yahooS.csv", it is a file of the stock price of yahoo at the 
#beginning of each month in 2015 plotting it will display the information from the 
#csv
plot(v, main = "bs", xlab = 'xbs', ylab = 'ybs')
junk <- read.csv("yahooS.csv")
plot(junk, main = "bs", xlab = 'xbs', ylab = 'ybs')

# Call the diceroll function utilized earlier to simualte 10,000 rolls
# and plot it in a histogram
dicebs <- (dice(10000))
hist(dicebs)
#explain the differences of a histogram and a plot to your neighbor

# write your dice roll results into a csv, append = true allows you to append to the file
# as you run, turning it to false will overwrite the file
#make a file of titled myRollsFifty where you append the file, 5 times with 
#each addition being 10,000 rolls, then write another file of just 10,000 files
#then will be overwritten with each run
write.table(dicebs, file = "myRollsFifty.csv", append = FALSE, row.names = FALSE, sep = ',', col.names = 'bs')
write.table(dice(10000), file = "myRollsFifty.csv", append = TRUE, row.names = FALSE, sep = ',', col.names = FALSE)
write.table(dice(10000), file = "myRollsFifty.csv", append = TRUE, row.names = FALSE, sep = ',', col.names = FALSE)
write.table(dice(10000), file = "myRollsFifty.csv", append = TRUE, row.names = FALSE, sep = ',', col.names = FALSE)
write.table(dice(10000), file = "myRollsFifty.csv", append = TRUE, row.names = FALSE, sep = ',', col.names = FALSE)
write.table(dice(10000), file = "myRollsFifty.csv", append = TRUE, row.names = FALSE, sep = ',', col.names = FALSE)

#view your file
bs <- read.csv("myRollsFifty.csv")
View(bs)
