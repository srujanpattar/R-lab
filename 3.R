#a
midf<-function(str)
{
  print(nchar(str))
  print(toupper(str))
  n1<-nchar(str)+1
  mc<-substring(str,n1%/%2,(n1+1)%/%2)
  print(mc)
}
str<- readline("Enter your name:")
midf(str)


#b
is_palindrome <- function(x)
{
  a <- substring(x,seq(1,nchar(x)) , seq(1,nchar(x)))
  paste(rev(a),sep="",collapse="") == paste(a,sep="",collapse="")
}
str<- readline("Enter string:")
print(is_palindrome(str))
