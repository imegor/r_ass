a<- seq(5 , 160 , by = 5)

b<- seq(87 , 56 , by = -1)

prod <- a*b

cat("\n")

print(prod[19])
print(prod[20])
print(prod[21])

cat("\n")
print("Elements which are less than 2000: ")
for(i in prod)
{
  if(i<2000)
    print(i)
}

cat("\n")

count=0

for(i in prod)
{
  if(i>6000)
    count=count+1
}

cat("Number of elements which are greater than 6000 : ",count)
cat("\n")
cat("\n")

cat("The sum is: ",sum(prod))
cat("\n")
cat("The median is: ",median(prod))
cat("\n")
cat("Standard Deviation is: ",sd(prod))
cat("\n")


m1<- matrix(c(7,9,12,2,4,13),nrow=2,byrow=TRUE)
cat("\n")
cat("Matrix 1: ","\n")
print(m1)

m2<- matrix(c(1,7,12,19,2,8,13,20,3,9,14,21),nrow=3,byrow=TRUE)
cat("\n")
cat("Matrix 2: ","\n")
print(m2)

result<- m1%*%m2
cat("\n","The resultant matrix after multiplication is: ","\n")
print(result)