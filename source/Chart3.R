# Chart 3: Visualization for Research Question #3
# Q3:How does a person's social status(Income) affect their likelihood of graduating 
# from high school, and is it possible to judge that the prevalence of 
# education is closely related to the social status of family members?
library(ggplot2)

# import income data
#source("data_access.R")
#income <- data_access_income()
  
chart3 <- function(income) {
    # create a new table
    datn <- read.table(header=TRUE, text='
    StudentGroup year rate
    Low-Income 2018  0.7479852
    Low-Income 2019  0.7583700
    Low-Income 2020  0.7659279
    Non-Low-Income 2018  0.8532674
    Non-Low-Income 2019  0.8619026
    Non-Low-Income 2020  0.8631141
    ')
    
    new_rate <- datn$rate * 100
    datn$new_rate <- new_rate
    
    # create a chart
    ggplot(data = datn, aes(x = year, y = new_rate, group = StudentGroup , colour = StudentGroup)) +
      scale_x_continuous(breaks=seq(2018,2020,1)) +
      geom_line() +
      geom_point() +
    
    labs(title = "The Average Graduation Rate of social status from 2018 to 2020", 
         x = "Year", y = "Avg_gra_Rate(%) ", caption = "Data Source: Statista")
}
              
