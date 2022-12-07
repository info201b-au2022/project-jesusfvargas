# Chart 3: Visualization for Research Question #3
# Q3:How does a person's social status(Income) affect their likelihood of graduating 
# from high school, and is it possible to judge that the prevalence of 
# education is closely related to the social status of family members?
library(ggplot2)

# import income data
#source("data_access.R")
#income <- data_access_income()
  
chart3 <- function(input_year) {
    # create a new table
  
  StudentGroup <- c("Low-Income", "Low-Income", "Low-Income", "Non-Low-Income", "Non-Low-Income", "Non-Low-Income")
  year <- c("2018", "2019", "2020","2018", "2019", "2020")
  rate <- c( "74.79852", "75.83700", "76.59279", "85.32674", "86.19026", "86.31141")
  
data <- data.frame(income, year, rate)

#View(data)
    # create a chart
    ggplot(data = data, aes(x = year, y = rate, group = StudentGroup , colour = StudentGroup)) +
     # scale_x_continuous(breaks=seq(2018,2020,1)) +
      geom_line() +
      geom_point() +
    
    labs(title = "The Average Graduation Rate of social status from 2018 to 2020", 
         x = "Year", y = "Avg_gra_Rate(%) ", caption = "Data Source: Statista")
}
              
