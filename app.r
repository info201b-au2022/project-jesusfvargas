#Grad-helpers

# Load R packages
library(shiny)
library(shinythemes)

source("app_ui.r")
source("app_server.r")

# Create Shiny object
shinyApp(ui = ui, server = server)