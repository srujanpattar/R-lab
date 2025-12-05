#a
vector<-seq(5,60, by=5)
cat(vector)
vector<-vector[vector>5 & vector<45]
cat(vector)

#b
my_vector <- c(1,2,3,4,5,6)
my_matrix <- matrix(1:9, nrow = 3, ncol = 3)
my_list <- list(
  vector = c(1,2,3,4,6),
  number = 45
)
my_nested_list<-list(
  vector=my_vector,
  matrix=my_matrix,
  list=my_list
)

for (n in names(my_nested_list))
  cat(class(my_nested_list[[n]]), "\n")

print(length(my_list))

#c
matrix1<-matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3)
print(matrix1)
matrix2<-matrix(c(9,8,7,6,5,4,3,2,1), nrow=3, ncol = 3)
print(matrix2)
add<-matrix1+matrix2
print(add)
sub<-matrix2-matrix1
print(sub)
mul<-matrix1%*%t(matrix1)
print(mul)


#d
print(colSums(matrix1))
print("Mean")
apply(matrix1,1,mean)
print(sum(matrix1))
print("Sorted order")
apply(matrix2,2,sort)



























