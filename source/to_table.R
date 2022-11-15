
  data_2018 <- read.csv('../data/Report_Card_Graduation_2018-19.csv')
  #View(data_2018)
  
  data_2019 <- read.csv('../data/Report_Card_Graduation_2019-20.csv')
  #View(data_2019)
  
  data_2020 <- read.csv('../data/Report_Card_Graduation_2020-21.csv')
  #View(data_2020)
  
  library("tidyverse")
  library("dplyr")
  
  number_of_gender_2018 <- data_2018 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(num_g_2018 = n())
  #View(number_of_gender_2018)
  
  avg_grad_rate_gender_2018 <- data_2018 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(avg_g_2018 = mean(GraduationRate, na.rm = TRUE))
  #View(avg_grad_rate_gender_2018)
  
  gender_2018 <- left_join(number_of_gender_2018, avg_grad_rate_gender_2018, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_g_2018", "avg_grad_rate_2018" = "avg_g_2018")
  #View(gender_2018)
  
  num_of_ethnicity_2018 <- data_2018 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(num_e_2018 = n())
  #View(num_of_ethnicity_2018)
  
  avg_grad_rate_ethnicity_2018 <- data_2018 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(avg_e_2018 = mean(GraduationRate, na.rm = TRUE))
  #View(avg_grad_rate_ethnicity_2018)
  
  ethnicity_2018 <- left_join(num_of_ethnicity_2018, avg_grad_rate_ethnicity_2018, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_e_2018", "avg_grad_rate_2018" = "avg_e_2018")
  #View(ethnicity_2018)
  
  num_income_2018 <- data_2018 %>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(num_i_2018 = n())
  #View(num_income_2018)
  
  avg_grad_rate_income_2018 <- data_2018 %>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(avg_l_2018 = mean(GraduationRate, na.rm = TRUE))
  #View(avg_grad_rate_income_2018)
  
  income_2018 <- left_join(num_income_2018, avg_grad_rate_income_2018, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_i_2018", "avg_grad_rate_2018" = "avg_l_2018")
  #View(income_2018)
  
  
  #filtering for 2019-2020 data 
  number_of_gender_2019 <- data_2019 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(num_g_2019 = n())
  #View(number_of_gender_2019)
  
  avg_grad_rate_gender_2019 <- data_2019 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(avg_g_2019 = mean(GraduationRate, na.rm = TRUE))
  #View(avg_grad_rate_gender_2019)
  
  gender_2019 <- left_join(number_of_gender_2019, avg_grad_rate_gender_2019, by="StudentGroup") %>%
    rename("number_of_students_2019" = "num_g_2019", "avg_grad_rate_2019" = "avg_g_2019")
  #View(gender_2019)
  
  num_of_ethnicity_2019 <- data_2019 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(num_e_2019 = n())
  #View(num_of_ethnicity_2019)
  
  avg_grad_rate_ethnicity_2019 <- data_2019 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(avg_e_2019 = mean(GraduationRate, na.rm = TRUE))
  #View(avg_grad_rate_ethnicity_2019)
  
  ethnicity_2019 <- left_join(num_of_ethnicity_2019, avg_grad_rate_ethnicity_2019, by="StudentGroup") %>%
    rename("number_of_students_2019" = "num_e_2019", "avg_grad_rate_2019" = "avg_e_2019")
  #View(ethnicity_2019)
  
  num_income_2019 <- data_2019 %>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(num_i_2019 = n())
  #View(num_income_2019)
  
  avg_grad_rate_income_2019 <- data_2019 %>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(avg_l_2019 = mean(GraduationRate, na.rm = TRUE))
  #View(avg_grad_rate_income_2019)
  
  income_2019 <- left_join(num_income_2019, avg_grad_rate_income_2019, by="StudentGroup") %>%
    rename("number_of_students_2019" = "num_i_2019", "avg_grad_rate_2019" = "avg_l_2019")
  #View(income_2019)
  
  
  #filtering for 2020-2021 data
  number_of_gender_2020 <- data_2020 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(num_g_2020 = n())
  #View(number_of_gender_2020)
  
  avg_grad_rate_gender_2020 <- data_2020 %>%
    filter(StudentGroupType == "Gender") %>%
    group_by(StudentGroup) %>%
    summarise(avg_g_2020 = mean(GraduationRate, na.rm = TRUE))
  #View(avg_grad_rate_gender_2020)
  
  gender_2020 <- left_join(number_of_gender_2020, avg_grad_rate_gender_2020, by="StudentGroup") %>%
    rename("number_of_students_2020" = "num_g_2020", "avg_grad_rate_2020" = "avg_g_2020")
  #View(gender_2020)
  
  num_of_ethnicity_2020 <- data_2020 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(num_e_2020 = n())
  #View(num_of_ethnicity_2020)
  
  avg_grad_rate_ethnicity_2020 <- data_2020 %>%
    filter(StudentGroupType == "Race") %>%
    group_by(StudentGroup) %>%
    summarise(avg_e_2020 = mean(GraduationRate, na.rm = TRUE))
  #View(avg_grad_rate_ethnicity_2020)
  
  ethnicity_2020 <- left_join(num_of_ethnicity_2020, avg_grad_rate_ethnicity_2020, by="StudentGroup") %>%
    rename("number_of_students_2020" = "num_e_2020", "avg_grad_rate_2020" = "avg_e_2020")
  #View(ethnicity_2020)
  
  num_income_2020 <- data_2020 %>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(num_i_2020= n())
  #View(num_income_2020)
  
  avg_grad_rate_income_2020 <- data_2020%>%
    filter(StudentGroupType == "LowIncome") %>%
    group_by(StudentGroup) %>%
    summarise(avg_l_2020 = mean(GraduationRate, na.rm = TRUE))
  #View(avg_grad_rate_income_2020)
  
  income_2020 <- left_join(num_income_2020, avg_grad_rate_income_2020, by="StudentGroup") %>%
    rename("number_of_students_2020" = "num_i_2020", "avg_grad_rate_2020" = "avg_l_2020")
  #View(income_2020)
  
  #join different year data for gender 
  
  gender_num_18_19 <- left_join(number_of_gender_2018, number_of_gender_2019, by="StudentGroup")
  #View(gender_num_18_19)
  
  gender_num<- left_join( gender_num_18_19, number_of_gender_2020, by= "StudentGroup")
  #View(gender_num)
  
  gender_grad_18_19 <-left_join(avg_grad_rate_gender_2018, avg_grad_rate_gender_2019, by="StudentGroup")
  #View(gender_grad_18_19)
  
  gender_grad <-left_join(gender_grad_18_19, avg_grad_rate_gender_2020, by="StudentGroup")
  #View(gender_grad)
  
  gender <- left_join(gender_num, gender_grad, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_g_2018", "avg_grad_rate_2018" = "avg_g_2018",
           "number_of_students_2019" = "num_g_2019", "avg_grad_rate_2019" = "avg_g_2019",
           "number_of_students_2020" = "num_g_2020", "avg_grad_rate_2020" = "avg_g_2020")
  View(gender)
  
  #join different year data for ethnicity
  ethnicity_num_18_19 <- left_join(num_of_ethnicity_2018, num_of_ethnicity_2019, by="StudentGroup") 
  #View(ethnicity_num_18_19)
  
  ethnicity_num<- left_join(ethnicity_num_18_19, num_of_ethnicity_2020, by= "StudentGroup")
  #View(ethnicity_num)
  
  ethnicity_grad_18_19 <-left_join(avg_grad_rate_ethnicity_2018, avg_grad_rate_ethnicity_2019, by="StudentGroup")
  #View(ethnicity_grad_18_19)
  
  ethnicity_grad <-left_join(ethnicity_grad_18_19, avg_grad_rate_ethnicity_2020, by="StudentGroup")
  #View(ethnicity_grad)
  
  ethnicity <- left_join(ethnicity_num, ethnicity_grad, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_e_2018", "avg_grad_rate_2018" = "avg_e_2018",
           "number_of_students_2019" = "num_e_2019", "avg_grad_rate_2019" = "avg_e_2019",
           "number_of_students_2020" = "num_e_2020", "avg_grad_rate_2020" = "avg_e_2020")
  View(ethnicity)
  
  #join different year data for income 
  income_num_18_19 <- left_join(num_income_2018, num_income_2019, by="StudentGroup")
  #View(income_num_18_19)
  
  income_num<- left_join(income_num_18_19, num_income_2020, by= "StudentGroup")
  #View(income_num)
  
  income_grad_18_19 <-left_join(avg_grad_rate_income_2018, avg_grad_rate_income_2019, by="StudentGroup")
  #View(income_grad_18_19)
  
  income_grad <-left_join(income_grad_18_19, avg_grad_rate_income_2020, by="StudentGroup")
  #View(income_grad)
  
  income <- left_join(income_num, income_grad, by="StudentGroup") %>%
    rename("number_of_students_2018" = "num_i_2018", "avg_grad_rate_2018" = "avg_l_2018",
           "number_of_students_2019" = "num_i_2019", "avg_grad_rate_2019" = "avg_l_2019",
           "number_of_students_2020" = "num_i_2020", "avg_grad_rate_2020" = "avg_l_2020")
  View(income)