#6
library(dplyr)
salary=data.frame(
  ID=c(1,2,3,4,5,6),
  sal=c(100,200,300,400,500,600)
)
cmp=data.frame(
  ID=c(1,2,3,4,5,6),
  name=c("ganja", "dhanush", "thrishul", "rakesh", "karthik", "srujan"),
  age=c(10,20,30,40,50,60),
  gender=c("f","m","f","m","f","m")
)
write.csv(salary, "salary.csv", row.names = FALSE)
write.csv(cmp, "cmp.csv", row.names = FALSE)

dataset1<- read.csv("salary.csv")
dataset2<- read.csv("cmp.csv")
merged_data <- merge(dataset1, dataset2, by="ID")

aggregated_data <- merged_data %>%
  group_by(gender) %>%
  summarize(
    total_salary = sum(salary),
    average_age = mean(age),
    count = n()
  )
print(aggregated_data)

filter_data<- merged_data%>%
  filter(age>25)
print(filter_data)

transformed_data<-merged_data%>%
  mutate(
    doubled_salary=salary*2,
    senority=ifelse(age>26,"senior","junior")
  )
print(transformed_data)













