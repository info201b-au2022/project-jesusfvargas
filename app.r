#Grad-helpers

# Load R packages
library(shiny)
library(shinythemes)

source("app_ui.R")
source("app_server.R")

# Create Shiny object
shinyApp(ui = ui, server = server)
