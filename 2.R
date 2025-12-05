#a
even_odd<-function(num){
  if(num%%2==0){
    print("It is even")
  }else{
    print("It is odd")
  }
}
print("Enter the numbers: ")
num<-scan(nlines = 1)
even_odd(num)

#b
square<-function(num){
  for(i in 1:num){
    print(i^2)
  }
}
print("Enter the number: ")
num<-scan(nlines = 1)
square(num)


#c
srt<-function(num){
  a<-base::sort(num, decreasing=TRUE)
  print(a)
  b<-base::sort(num, decreasing=FALSE)
  print(b)
}
num<-scan(nlines = 3)
srt(num)
