# Matthew Miesle
# CUNY SPS
# IS 607 SECT 01
# Week 2 Quiz

# 1. Vector of 20 numbers
vector.1 <- c(1, 4, 5, 3, 7, 2, 2, 7, 9, 3)
vector.1 <- c(vector.1, vector.1)

# 2. Convert vector1 to character vector
as.character(vector.1)

# 3. Convert vector1 to vector of factors
as.factor(vector.1)

# 4. Show how many levels vector from Question 3 has
length(levels(as.factor(vector.1)))

#5. create vector that takes vector1 and performs 3x^2-4x+1 on it
vector.5 <- 3 * vector.1 ^ 2 - 4 * vector.1 +1

# 6. Implement least squares regression in matrix form as specified.
col1.X <- rep(1, 8)
col2.X <- c(5, 4, 6, 2, 3, 2, 7, 8)
col3.X <- c(8, 9, 4, 7, 4, 9, 6, 4)
X <- matrix(c(col1.X, col2.X, col3.X), nrow = 8, ncol = 3 )
y <- c(45.2, 46.9, 31.0, 35.3, 25.0, 43.1, 41.0, 35.1)
Beta.hat <- solve(t(X) %*% X) %*% t(X) %*% y
Beta.hat
# referenced http://www.statmethods.net/advstats/matrix.html
# to find function for matrix inverse and transpose

# 7. Create a named list
list.7 <- list(first = 1, second = 2, third = 3, fourth =4)

# 8. Create a data frame with four columns - one each of character, factor (w/ 3 levels),
#    numeric, and date.  data frame should ave <= 10 observations (rows)
chrs <- letters[1:10]
color <- as.factor(c("red", "red", "brown", "red", "red", "yellow", "yellow","brown", "yellow", "red"))
buttons <- c(1, 3, 2, 4, 2, 3, 2, 3, 1, 2)
mfred <- c(0:9)
mfred <- as.Date(mfred, origin = "2014-08-01")
df.8 <- data.frame(chrs, color, buttons, mfred)

# 9. Add row w/ value for factor column of Question 8 that isn't in list of levels
#    (may take more than 1 line of code)
color <- as.factor(c(as.character(color), "blue"))
# is there a better alternative?

# 10. Show code to read in CSV file called temperatures.csv from working directory
temps <- read.table(file = "temperatures.csv", header = TRUE, sep = ",")
# location 1793 in R for Everyone Kindle book

# 11. Show code to read TSV file called measurements.txt from diretory outside
msrments <- read.table(file = "C:/Users/MattM/Downloads/measurements.txt", header = TRUE, sep = "\t")
# can't copy paste path from windows explorer
# back slashes paste but path must contain forward slashes

# 12. Show the code that will read in a delimited file with a pipe separator
#     (the “|” symbol) from a website location. (You may make up an appropriate URL.)
the.URL <- "http://homepages.wmich.edu/~m3schul1/pipetest.psv"
dfile <- read.table(file = the.URL, sep = "|")

# 13. Write a loop that calculates 12-factorial.
f <- 1
for (n in 1:12)
{
    f = n * f
}

# 14. Use a loop to calculate the final balance, rounded to the nearest cent, in an
#     account that earns 3.24% interest compounded monthly after six years if the
#     original balance is $1,500.
balance <- 1500
interest <- 3.24 / 100
months <- 6 * 12
for (ctime in 1:months)
{
    balance = balance * (1 + interest)
}

# 15. Create a numeric vector of length 20 and then write code to calculate the sum
#     of every third element of the vector you have created.
v.15 <- 1:20
sum.15 <- 0
for (i in v.15)
{
    if (i %% 3 == 0)
    {
        sum.15 <- sum.15 + v.15[i]
    }
}
# Is there a way to do this vectorized?

# 16. Use a for loop to calculate specified summation for x=2
sum <- 0
x <- 2
for (i in 1:10)
{
    sum <- sum + x ^ i
}

# 17. Use a while loop to accomplish the same task as in Question 16.
sumw <- 0
xw <- 2
iw <- 1
while (iw <= 10)
{
    sumw <- sumw + xw ^ iw
    iw = iw + 1
}

# 18. Solve the problem from the previous two exercises without using a loop.
x.18 <- rep(2, 10)
i.18 <- c(1:10)
sum(x.18 ^ i.18)

# 19. Show how to create a numeric vector that contains the sequence from 20 to 50 by 5.
v.19 <- seq(20, 50, 5)

# 20. Show how to create a character vector of length 10 with the same word,
#     “example”, ten times.
v.20 <- rep("example", 10)

# 21. Show how to take a trio of input numbers a, b, and c and implement the quadratic equation.
##
##
# print ("Please enter a, b, & c as prompted")
# print ("The quadratic roots will be returned")
# a <- readline(prompt = "a = ")
# b <- readline(prompt = "b = ")
# c <- readline(prompt = "c = ")
a <- 1
b <- 10
c <- 4
r1 <- (-b + sqrt(as.complex(b ^ 2 - 4 * a * c))) / 2 * a
r2 <- (-b - sqrt(as.complex(b ^ 2 - 4 * a * c))) / 2 * a
r1
r2
# referenced http://www.johnmyleswhite.com/notebook/2009/12/18/using-complex-numbers-in-r/
# to learn to use as.complex()
# trouble implementing the user input
# referenced http://www3.nd.edu/~sjones20/JonesUND/BioStats_files/Rinput%26output_1-15-13.pdf
# but still had trouble