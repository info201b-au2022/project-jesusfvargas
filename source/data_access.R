# Example: Project Data Access Functions  ----
#----------------------------------------------------------------------------#
# These functions are used to access data sources ... 
#----------------------------------------------------------------------------#
data_access_all <- function () {
  data_2018 <- read.csv('../data/Report_Card_Graduation_2018-19.csv')
  
  data_2019 <- read.csv('../data/Report_Card_Graduation_2019-20.csv')
  
  data_2020 <- read.csv('../data/Report_Card_Graduation_2020-21.csv')
  
  library("tidyverse")
  library("dplyr")
  
  number_of_gender_2018 <- data_2018 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(num_g_2018 = n())
  
  avg_grad_rate_gender_2018 <- data_2018 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(avg_g_2018 = mean(GraduationRate, na.rm = TRUE))
  
  gender_2018 <- left_join(number_of_gender_2018, avg_grad_rate_gender_2018, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_g_2018", "avg_grad_rate_2018" = "avg_g_2018")
  
  num_of_ethnicity_2018 <- data_2018 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(num_e_2018 = n())
  
  avg_grad_rate_ethnicity_2018 <- data_2018 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(avg_e_2018 = mean(GraduationRate, na.rm = TRUE))
  
  ethnicity_2018 <- left_join(num_of_ethnicity_2018, avg_grad_rate_ethnicity_2018, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_e_2018", "avg_grad_rate_2018" = "avg_e_2018")
  
  num_income_2018 <- data_2018 %>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(num_i_2018 = n())
  
  avg_grad_rate_income_2018 <- data_2018 %>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(avg_l_2018 = mean(GraduationRate, na.rm = TRUE))
  
  income_2018 <- left_join(num_income_2018, avg_grad_rate_income_2018, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_i_2018", "avg_grad_rate_2018" = "avg_l_2018")
  
  
  #filtering for 2019-2020 data 
  number_of_gender_2019 <- data_2019 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(num_g_2019 = n())
  
  avg_grad_rate_gender_2019 <- data_2019 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(avg_g_2019 = mean(GraduationRate, na.rm = TRUE))
  
  gender_2019 <- left_join(number_of_gender_2019, avg_grad_rate_gender_2019, by="StudentGroup") %>%
    rename("number_of_students_2019" = "num_g_2019", "avg_grad_rate_2019" = "avg_g_2019")
  
  num_of_ethnicity_2019 <- data_2019 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(num_e_2019 = n())
  
  avg_grad_rate_ethnicity_2019 <- data_2019 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(avg_e_2019 = mean(GraduationRate, na.rm = TRUE))
  
  ethnicity_2019 <- left_join(num_of_ethnicity_2019, avg_grad_rate_ethnicity_2019, by="StudentGroup") %>%
    rename("number_of_students_2019" = "num_e_2019", "avg_grad_rate_2019" = "avg_e_2019")
  
  num_income_2019 <- data_2019 %>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(num_i_2019 = n())
  
  avg_grad_rate_income_2019 <- data_2019 %>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(avg_l_2019 = mean(GraduationRate, na.rm = TRUE))
  
  income_2019 <- left_join(num_income_2019, avg_grad_rate_income_2019, by="StudentGroup") %>%
    rename("number_of_students_2019" = "num_i_2019", "avg_grad_rate_2019" = "avg_l_2019")
  
  
  #filtering for 2020-2021 data
  number_of_gender_2020 <- data_2020 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(num_g_2020 = n())
  
  avg_grad_rate_gender_2020 <- data_2020 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(avg_g_2020 = mean(GraduationRate, na.rm = TRUE))
  
  gender_2020 <- left_join(number_of_gender_2020, avg_grad_rate_gender_2020, by="StudentGroup") %>%
    rename("number_of_students_2020" = "num_g_2020", "avg_grad_rate_2020" = "avg_g_2020")
  
  num_of_ethnicity_2020 <- data_2020 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(num_e_2020 = n())
  
  avg_grad_rate_ethnicity_2020 <- data_2020 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(avg_e_2020 = mean(GraduationRate, na.rm = TRUE))
  
  ethnicity_2020 <- left_join(num_of_ethnicity_2020, avg_grad_rate_ethnicity_2020, by="StudentGroup") %>%
    rename("number_of_students_2020" = "num_e_2020", "avg_grad_rate_2020" = "avg_e_2020")
  
  num_income_2020 <- data_2020 %>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(num_i_2020= n())
  
  avg_grad_rate_income_2020 <- data_2020%>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(avg_l_2020 = mean(GraduationRate, na.rm = TRUE))
  
  income_2020 <- left_join(num_income_2020, avg_grad_rate_income_2020, by="StudentGroup") %>%
    rename("number_of_students_2020" = "num_i_2020", "avg_grad_rate_2020" = "avg_l_2020")
  
  #join different year data for gender 
  
  gender_num_18_19 <- left_join(number_of_gender_2018, number_of_gender_2019, by="StudentGroup")
  
  gender_num<- left_join( gender_num_18_19, number_of_gender_2020, by= "StudentGroup")
  
  gender_grad_18_19 <-left_join(avg_grad_rate_gender_2018, avg_grad_rate_gender_2019, by="StudentGroup")
  
  gender_grad <-left_join(gender_grad_18_19, avg_grad_rate_gender_2020, by="StudentGroup")
  
  gender <- left_join(gender_num, gender_grad, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_g_2018", "avg_grad_rate_2018" = "avg_g_2018",
           "number_of_students_2019" = "num_g_2019", "avg_grad_rate_2019" = "avg_g_2019",
           "number_of_students_2020" = "num_g_2020", "avg_grad_rate_2020" = "avg_g_2020")
  
  #join different year data for ethnicity
  ethnicity_num_18_19 <- left_join(num_of_ethnicity_2018, num_of_ethnicity_2019, by="StudentGroup") 
  
  ethnicity_num<- left_join(ethnicity_num_18_19, num_of_ethnicity_2020, by= "StudentGroup")
  
  ethnicity_grad_18_19 <-left_join(avg_grad_rate_ethnicity_2018, avg_grad_rate_ethnicity_2019, by="StudentGroup")
  
  ethnicity_grad <-left_join(ethnicity_grad_18_19, avg_grad_rate_ethnicity_2020, by="StudentGroup")
  
  ethnicity <- left_join(ethnicity_num, ethnicity_grad, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_e_2018", "avg_grad_rate_2018" = "avg_e_2018",
           "number_of_students_2019" = "num_e_2019", "avg_grad_rate_2019" = "avg_e_2019",
           "number_of_students_2020" = "num_e_2020", "avg_grad_rate_2020" = "avg_e_2020")
  
  #join different year data for income 
  income_num_18_19 <- left_join(num_income_2018, num_income_2019, by="StudentGroup")
  
  income_num<- left_join(income_num_18_19, num_income_2020, by= "StudentGroup")
  
  income_grad_18_19 <-left_join(avg_grad_rate_income_2018, avg_grad_rate_income_2019, by="StudentGroup")
  
  income_grad <-left_join(income_grad_18_19, avg_grad_rate_income_2020, by="StudentGroup")
  
  income <- left_join(income_num, income_grad, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_i_2018", "avg_grad_rate_2018" = "avg_l_2018",
           "number_of_students_2019" = "num_i_2019", "avg_grad_rate_2019" = "avg_l_2019",
           "number_of_students_2020" = "num_i_2020", "avg_grad_rate_2020" = "avg_l_2020")
  income_ethnicity <- full_join(income, ethnicity)
  
  table <- full_join(income_ethnicity, gender)

  return(list(gender, ethnicity, income))
}

data_access_gender <- function(){
  data <- data_access_all()
  return(data[[1]])
}

data_access_ethnicity <- function(){
  data <- data_access_all()
  return(data[[2]])
}

data_access_income <- function(){
  data <- data_access_all()
  return(data[[3]])
}

