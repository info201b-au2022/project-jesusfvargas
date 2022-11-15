# Chart 1: Visualization for Research Question #1
# Q1 How does one's gender identity affect the percentage of 
# high school students who graduate?
library(ggplot2)
library(hrbrthemes)

#source("data_access.R")
#gender <- data_access_gender()

# import the gender data

chart1 <- function(gender) {

  #number_of_students_2018 
  #number_of_students_2019 
  #number_of_students_2020
  
  Graduate_f <- as.vector(t(gender[1,2:4]))
  Graduate_m <- as.vector(t(gender[3,2:4]))
  Graduate_x <- as.vector(t(gender[2,2:4]))
  
  Graduation_Rate_f <- as.vector(t(gender[1,5:7]))
  Graduation_Rate_m <- as.vector(t(gender[3,5:7]))
  Graduation_Rate_x <- as.vector(t(gender[2,5:7]))
  
  #plot(Graduate_f, Graduation_Rate_f,type='p') 
  #points(Graduate_m, Graduation_Rate_m)
  plot(Graduate_f, Graduation_Rate_f,type='p', main="Gender identity", 
       xlab="numer_of_students", ylab="Avg_gra_Rate", col="red", cex=3,xlim=c(100,4200), ylim=c(0.5,1))
  points(Graduate_m, Graduation_Rate_m,col="blue", cex=3)
  points(Graduate_x, Graduation_Rate_x,col="black", cex=3)
  legend("topleft", c("female","male","gender X"), fill=c("red","blue", "black"))
  print(chart1)
}

