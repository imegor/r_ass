# ques 1
# convert character into integer
#n <- readline(prompt="Enter number: ")

#n <- as.integer(n)
n<- 1452
n==94842

# ques 2
!is.na(n)

# ques 3
(n<-12)|(n>29)

# ques 4
v1<-seq(101,149,by=2)
v2<-seq(-7,11,by=2)
any(v1==n)|any(v2==n)

# ques 5
v1<-c("Twitter","Chrome","Mac","Summer")
v2<-c("Facebook","Chrome","PC","Summer")
all(v1==v2)
any(v1==v2)

# ques 5
age<-c(18,NA,25,71,NA,45,NA,NA,18)
is.na(age)
which(is.na(age))
age[!is.na(age)]

# ques 6
head(cars)
attach(cars)
# speed vector 
speed
# distance vector
dist
# checking na values in speed and distance
any(is.na(speed))
any(is.na(dist))
# no NA valuesin either of vectors

cat("average speed is: ",mean(speed)," standard deviation of speed is: ",sd(speed))
cat("average distance is: ",mean(dist)," standard deviation of distance  is: ",sd(dist))
hist(dist)
hist(speed)
plot(speed,dist)
which(dist>=15)
which.min(dist)
speed[which.max(dist)]

# ques 7
# convert character into integer
#a<- readline(prompt="Enter number: ")

#a <- as.integer(a)

a<-5

fact=1
if(a<0)
{
  cat("factorial is: ",NA)
}else if(a==0)
{
  cat("factorial is: ",1)
} else
{
  for (i in 1:a){
    fact=fact*i
  }
  cat("factorial is: ",fact)
}