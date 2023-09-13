install.packages("DescTools")
library(DescTools)
data2 <- factor(c("T","S","T","S","S","T","S","S","S","T"))
RunsTest(data2)

data3 <- factor(c(0,
                  0,
                  0,
                  1,
                  1,
                  1,
                  0,
                  0,
                  1,
                  0,
                  1,
                  1,
                  0,
                  0,
                  1,
                  1,
                  0,
                  0,
                  0,
                  1,
                  1,
                  1,
                  1,
                  0,
                  1,
                  1,
                  0,
                  0,
                  0,
                  1
))
RunsTest(data3)

#signtest
data4 <- c(90,
           110,
           105,
           85,
           95,
           100,
           105,
           120,
           150,
           85,
           100,
           110,
           90,
           75,
           105,
           120,
           100,
           105,
           90,
           100
)
result <- SignTest(data4, mu=100, alternative="two.sided")
result

sebelum <- c(4,
             3.2,
             3.8,
             1.8,
             3,
             5.3,
             5.7,
             3,
             2.7,
             2.9,
             2.8,
             1.8,
             2.6)
sesudah <- c(3.1,
             3,
             3.5,
             1,
             1.8,
             3.9,
             2.2,
             2.1,
             1.4,
             2.9,
             2.6,
             1.4,
             2.5)
result <- SignTest(sebelum, sesudah, alternative="greater")
result
