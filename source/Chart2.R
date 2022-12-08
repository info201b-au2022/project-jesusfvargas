# Chart 2: Visualization for Research Question #2
# Q2: How does one's racial identity affect the  
# percentage of high school students who graduate?
library(ggplot2)
source("source/data_access.R")

# import the ethnicity data
#source("data_access.R")
#View(avg_race)


# calculate the avg_gra_rate
#ethnicity <- data_access_ethnicity()

chart2 <- function() {
  avg_race <- (data_access_ethnicity()%>%
                 group_by(StudentGroup) %>%
                 summarise(avg = mean(avg_grad_rate_2018,avg_grad_rate_2019, avg_grad_rate_2020 )))
  View(avg_race)
  # create a chart
  ggplot(data=avg_race, 
         aes(x= StudentGroup, y=avg, fill = StudentGroup)) +
    geom_bar(stat="identity") + labs(title = "The Average Graduation Rate of Racial Identity from 2018 to 2020", 
            x = "Student Group", y = "Avg_grad_Rate(%) ", caption = "Data Source: Statista")
}








