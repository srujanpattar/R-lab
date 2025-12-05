library(ggplot2)
library(dplyr)
library(plotly)

titanic<-read.csv("Titanic_train.csv")
print(titanic)
#summary
summary(titanic)
  
#missing values
missing_values<-colSums(is.na(titanic))
print(missing_values)

#removing missing values
titanic$Age[is.na(titanic$Age)]=mean((titanic$Age), na.rm=TRUE)
print(missing_values)

#remove_duplicates
print(distinct(titanic))

#filtering
adult<-filter(titanic, Age>18)
print(adult)

#sorting
sorting<-arrange(titanic, desc(Fare))
print(sorting)

Adata<-data.frame(
  PassengerId=1:5,
  Cabin=c("c88", "c123", "E46", "B2B", NA),
  Embarked=c("C","Q", "S", "S", "T")
)
write.csv(Adata, "Adata.csv", row.names = FALSE)
merged_data<-merge(titanic,Adata,by="PassengerId")
print(merged_data)

#hypothesis_test
t_test_result <- t.test(Age ~ Survived, data=titanic)
print(t_test_result)

#correlation
correlation_coefficient <- cor(titanic$Age, titanic$Fare)
print(correlation_coefficient)

#graph
bar_plot<-ggplot(titanic, aes(x = factor(Survived), fill = factor(Survived))) +
  geom_bar() +
  labs(title = "Number of Survivors on Titanic", x = "Survived",y = "Count") +
  scale_fill_manual(values = c("red", "green"))
print(bar_plot)









