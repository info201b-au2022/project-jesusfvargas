# Define server function  
library(shiny)
library(hrbrthemes)
library(shinythemes)

source("source/data_access.R")
source("source/Chart1.R")
source("source/Chart2.R")
source("source/Chart3.R")

server <- shinyServer(function(input, output) {
  
  output$txtout <- renderText({
    paste( input$txt1, input$txt2, sep = " " )
  })
  
  output$circle_chart <- renderPlot({
    gender_data <- gender %>%
      filter(StudentGroup %in% input$gender_select)
    
    Graduate_f <- as.vector(t(gender_data[1,2:4]))
    Graduate_m <- as.vector(t(gender_data[3,2:4]))
    Graduate_x <- as.vector(t(gender_data[2,2:4]))
    
    Graduation_Rate_f <- as.vector(t(gender_data[1,5:7]))
    Graduation_Rate_m <- as.vector(t(gender_data[3,5:7]))
    Graduation_Rate_x <- as.vector(t(gender_data[2,5:7]))
    
    #plot(Graduate_f, Graduation_Rate_f,type='p') 
    #points(Graduate_m, Graduation_Rate_m)
    plot(Graduate_f, Graduation_Rate_f, type='p', main="Gender identity", 
         xlab="numer_of_students", ylab="Av g_gra_Rate", col="black", cex=3,xlim=c(100,4200), ylim=c(0.5,1))
    points(Graduate_m, Graduation_Rate_m,col="black", cex=3)
    points(Graduate_x, Graduation_Rate_x,col="black", cex=3)
    #points(Graduate_x, Graduation_Rate_x,Graduate_f, Graduation_Rate_f, Graduate_m,Graduation_Rate_m  col="black", cex=9)
    #legend("topleft", c("female","male","gender X"), fill=c("red","blue", "black"))
  })
  
  output$bar_chart <- renderPlot({
    
    filter_race <- avg_race %>%
      filter(StudentGroup %in% input$race_select)
    ggplot(data=filter_race, 
           aes(x= StudentGroup, y=avg, fill = StudentGroup)) +
      geom_bar(stat="identity") + labs(title = "The Average Graduation Rate of Racial Identity from 2018 to 2020", 
                                       x = "Student Group", y = "Avg_grad_Rate(%) ", caption = "Data Source: Statista")
  })
  
  output$line_chart <- renderPlot({
    data_filter1 <- data %>%
      filter(income %in% input$select_income)
    
    data_filter <- data_filter1 %>%
      filter(year >= input$year_input[1], year <= input$year_input[2])
      
    ggplot(data = data_filter, 
           aes(x = year, y = rate, group = income , colour = income)) +
      #scale_x_continuous(breaks=seq(2018,2020,1)) +
      geom_line() +
      geom_point() +
      labs(title = "The Average Graduation Rate of social status from 2018 to 2020", 
           x = "Year", y = "Avg_grad_Rate(%) ", caption = "Data Source: Statista")
  })
}) # server

