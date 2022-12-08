
source("source/data_access.R")
data <- data_access_ethnicity()

summary <- function(data){
  summary_info <- list()
  summary_info$num_observations <- nrow(data)
  summary_info$num_variables <- ncol(data)
  summary_info$max_grad_2020 <- data[7] %>%
    max(na.rm = TRUE)
  summary_info$min_grad_2020 <- data[7] %>%
    min(na.rm = TRUE)
  summary_info$max_grad_2019 <- data[6] %>%
    max(na.rm = TRUE)
  summary_info$min_grad_2019 <- data[6] %>%
    min(na.rm = TRUE)
  text <- paste("According to the ethnicity data, the number of 
  observations for the total data is ",summary_info$num_observations,". The number 
  of variavbles for the total data is ", summary_info$num_variables,". The maximum 
  value of graduate rate in 2020 is ",summary_info$max_grad_2020," , and the minimum value 
  is ", summary_info$min_grad_2020," ; the maximum value of graduate rate in 2019
  is ",summary_info$max_grad_2019,"and the minimum value of population 
  in 2019 is ",summary_info$min_grad_2019)
  return(cat(text))
}
