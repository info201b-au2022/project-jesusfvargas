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
  
    gender_data <- data_access_gender() %>%
      filter(StudentGroup %in% input$gender_select)
    
    Graduate_f <- as.vector(t(gender_data[1,2:4]))
    Graduate_m <- as.vector(t(gender_data[3,2:4]))
    Graduate_x <- as.vector(t(gender_data[2,2:4]))
    
    Graduation_Rate_f <- as.vector(t(gender_data[1,5:7]))
    Graduation_Rate_m <- as.vector(t(gender_data[3,5:7]))
    Graduation_Rate_x <- as.vector(t(gender_data[2,5:7]))
    
    #plot(Graduate_f, Graduation_Rate_f,type='p') 
    #points(Graduate_m, Graduation_Rate_m)
    plot(Graduate_f, Graduation_Rate_f, type='p', main="The Average Graduation Rate of Gender identity from 2018 to 2020", 
         xlab="Number of students", ylab="Different Gender Identity Average Graduation Rate",
         col="black", cex=3,xlim=c(100,4200), ylim=c(0.5,1))
    points(Graduate_m, Graduation_Rate_m,col="red", cex=3)
    points(Graduate_x, Graduation_Rate_x,col="seagreen4", cex=3)
    #points(Graduate_x, Graduation_Rate_x,Graduate_f, Graduation_Rate_f, Graduate_m,Graduation_Rate_m  col="black", cex=9)
    #legend("topleft", c("female","male","gender X"), fill=c("red","blue", "black"))
  })
  
  output$bar_chart <- renderPlot({
    avg_race <- (data_access_ethnicity()%>%
                   group_by(StudentGroup) %>%
                   summarise(avg = mean(avg_grad_rate_2018,avg_grad_rate_2019, avg_grad_rate_2020 )))
    
    filter_race <- avg_race %>%
      filter(StudentGroup %in% input$race_select)
    ggplot(data=filter_race, 
           aes(x= StudentGroup, y=avg, fill = StudentGroup)) +
      geom_bar(stat="identity") + labs(title = "The Average Graduation Rate of Racial Identity from 2018 to 2020", 
                                       x = "Student Group", y = "Average graduation Rate(%)", caption = "Data Source: Statista")
  })
  
  output$line_chart <- renderPlot({
    StudentGroup <- c("Low-Income", "Low-Income", "Low-Income", "Non-Low-Income", "Non-Low-Income", "Non-Low-Income")
    year <- c("2018", "2019", "2020","2018", "2019", "2020")
    rate <- c( "74.79852", "75.83700", "76.59279", "85.32674", "86.19026", "86.31141")
    
    data <- data.frame(StudentGroup, year, rate)
    
    data_filter1 <- data %>%
      filter(StudentGroup %in% input$select_income)
    
    data_filter <- data_filter1 %>%
      filter(year >= input$year_input[1], year <= input$year_input[2])
      
    ggplot(data = data_filter, 
           aes(x = year, y = rate, group = StudentGroup , colour = StudentGroup)) +
      #scale_x_continuous(breaks=seq(2018,2020,1)) +
      geom_line() +
      geom_point() +
      labs(title = "The Average Graduation Rate of social status", 
           x = "Year", y = "Average graduation Rate(%) ", caption = "Data Source: Statista")
  })
}) # server

