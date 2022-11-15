# Chart 2: Visualization for Research Question #2
# Q2: How does one's racial identity affect the  
# percentage of high school students who graduate?
library(ggplot2)

# import the ethnicity data
#source("data_access.R")


# calculate the avg_gra_rate
#ethnicity <- data_access_ethnicity()

chart2 <- function(ethnicity) {
  ethnicity$avg <- (ethnicity$avg_grad_rate_2018 + 
                      ethnicity$avg_grad_rate_2019 + 
                      ethnicity$avg_grad_rate_2020)/3 * 100
  print(ethnicity$avg)
  
  # create a chart
  ggplot(data=ethnicity, aes(x=StudentGroup, y=avg, fill = StudentGroup)) +
    geom_bar(stat="identity") + labs(title = "The Average Graduation Rate of Racial Identity from 2018 to 2020", 
            x = "Student Group", y = "Avg_gra_Rate(%) ", caption = "Data Source: Statista")
  print(chart2)
  }








