# Define UI
library(shiny)
library(shinythemes)
source("source/data_access.R")



ui <- fluidPage(theme = shinytheme("cosmo"),
                navbarPage(
                  # theme = "cosmo",  # <--- To use a theme, uncomment this
                  "Social Background Affects on Graduation Rates:",
                  tabPanel("Introdution",
                           
                           includeMarkdown("introduction_part.md" # sidebarPanel
                             ) # mainPanel
                           
                  ), # Navbar 1, tabPanel
                #Gender Indentity
                  tabPanel("Gender Identity", 
                           sidebarLayout(
                             sidebarPanel(
                               selectInput("gender_select",
                                           label = h3("Select Gender"),
                                           choices = data_access_gender()$StudentGroup,
                                           selected = TRUE,
                                           multiple = TRUE)),
                             mainPanel(
                               h4("How does high school graduation rate vary depending on gender identity?"),
                               plotOutput("circle_chart"),
                               p("The graph clearly displays the gap of number of student and graduation
                                 rate between binary gender and genderx. It clearly displays that genderX students
                                 are minority and they are not as equally represented compared to binary genders.")))
                           ),
                  tabPanel("Racial Identity", 
                           sidebarLayout(
                             sidebarPanel(
                               selectInput("race_select",
                                             label = h3("Select Race"),
                                             choices = data_access_ethnicity()$StudentGroup,
                                             selected = TRUE,
                                             multiple = TRUE)),
                             mainPanel(
                               h4("Does race identity of a student impact high school graduation rate?"),
                               plotOutput("bar_chart"),
                               p("The graph displays that there is a clear impact of race background to high school 
                                 graduation rate where Asians and White have higher rate while American Indian/ Alaskan 
                                 Native have the lowest graduation rate.")))),
                  tabPanel("Income Identity", 
                           sidebarLayout(
                             sidebarPanel(
                               selectInput("select_income",
                                           label = h3("Select income group"),
                                           choices = c("Low-Income", "Non-Low-Income"),
                                           selected = TRUE,
                                           multiple = TRUE),
                               sliderInput("year_input",
                                           label = h3("Select Year"),
                                           min = 2018, 
                                           max = 2020, 
                                           value = c(2018, 2020))),
                             mainPanel(
                               h4("Is there a correlation between high school graduation rate and income?"),
                               plotOutput("line_chart"),
                               p("There is a clear correlation of income and graduation rate beacuse by analyzing 
                                 2018-2020 graduation rate of low income and non low income students, it clearly
                                 displayed that low income students will have aroudn 10% less chance of graduating.")))),
                  tabPanel("Summary Takeaways", 
                           includeMarkdown("summary_takeaways.md")),
                  tabPanel("Report Page", 
                           includeMarkdown("final_report.md")),
                
                ) # navbarPage
) # fluidPage
