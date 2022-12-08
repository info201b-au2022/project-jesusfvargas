# Define UI
library(shiny)
library(shinythemes)
source("source/data_access.R")



ui <- fluidPage(theme = shinytheme("cosmo"),
                navbarPage(
                  # theme = "cosmo",  # <--- To use a theme, uncomment this
                  "Social Background Affects on Graduation Rates:",
                  tabPanel("Introdution",
                           sidebarPanel("Grade-helpers"
                           ), # sidebarPanel
                           mainPanel(
                             h1("Introduction"),
                             p("In our project, our goal is to analyze and investigate the effect of 
                               intersectionality on system of oppression through examining existing 
                               high school graduation rate. For example, the datasets on high school 
                               graduates we discovered only included male and female. We want to 
                               adapt more diverse pronoun conventions, so we must focus on collecting 
                               diverse data on what individuals represent and choose to be. This 
                               will support us in resolving the design issue of having limited options 
                               for students to identify themselves, which is an act of advocating for 
                               equity that will benefit majority of population, a “co-liberation” process.
                               Why do schools and data design have limited student identifiers? We want
                               to enable students' preferences for being addressed and hope to highlight
                               correlation with intersectionality and socioeconomic status."),
                             verbatimTextOutput("txtout"),
                             
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
                               plotOutput("circle_chart")))
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
                               plotOutput("bar_chart")))),
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
                               plotOutput("line_chart")))),
                  tabPanel("Social Status", 
                           "Takeaways"),
                  tabPanel("Report Page", 
                           includeMarkdown("final_report.md")),
                
                ) # navbarPage
) # fluidPage
