#Grad-helpers

# Load R packages
library(shiny)
library(shinythemes)


  # Define UI
  ui <- fluidPage(theme = shinytheme("cosmo"),
    navbarPage(
      # theme = "cosmo",  # <--- To use a theme, uncomment this
      "Social Background Affects on Graduation Rates:",
      tabPanel("Introdution",
               sidebarPanel("Grade-helpers"
               ), # sidebarPanel
               mainPanel(
                            h1("Introduction"),
                            
                            p("In our project, our goal is to analyze and investigate the effect of intersectionality on system of oppression through examining existing high school graduation rate. For example, the datasets on high school graduates we discovered only included male and female. We want to adapt more diverse pronoun conventions, so we must focus on collecting diverse data on what individuals represent and choose to be. This will support us in resolving the design issue of having limited options for students to identify themselves, which is an act of advocating for equity that will benefit majority of population, a “co-liberation” process. Why do schools and data design have limited student identifiers? We want to enable students' preferences for being addressed and hope to highlight correlation with intersectionality and socioeconomic status."),
                            verbatimTextOutput("txtout"),

               ) # mainPanel
               
      ), # Navbar 1, tabPanel
      tabPanel("Interactive Page 1", "Interactive"),
      tabPanel("Interactive Page 2", "Interactive"),
      tabPanel("Interactive Page 3", "Interactive"),
      tabPanel("Summary Takeaways", "Takeaways"),
      tabPanel("Report Page", "Report Page"),
    ) # navbarPage
  ) # fluidPage

  
  # Define server function  
  server <- function(input, output) {
    
    output$txtout <- renderText({
      paste( input$txt1, input$txt2, sep = " " )
    })
  } # server
  

  # Create Shiny object
  shinyApp(ui = ui, server = server)
