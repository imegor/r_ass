first<- 3
second <- 10
n <- 13


if(n==0)
{
  cat("nth fib no. is: ",first)
}else if(n==1)
{
  cat("nth fib no. is: ",second)
} else
{
  for(i in 2:n)
  {
    third<-first+second
    first<-second
    second<-third
  }
  cat("nth fib no.is: ",third)
}
# string exercizes
str1 <- "Hjkahkfha"
cat("Length of", str1, "is", nchar(str1))

str2 <- "akdhfkah"
str3 <- paste(str1,str2, sep = "-")
str4 <- paste(str1, str2, str3, sep = "")
cat(str1, str2, str3, str4, "\n")
print(str2 == "akdhfkah")
print(str2 == str1)
substr1 = substr(str2, 2, 5)
substr2 = substring(str2, 2)
print(substr1)
print(substr2)
# print(substr(str2, 2, 5) <- "hiih")

# question 9
v<-data.frame( 
  Shape=c("round","oval","long","round","oval","long","round","oval","long","round","oval","long"),
  Pattern=c("pattern","pattern","pattern","plain","plain","plain","patten","patten","patten","plain","plain","plain"),
  Shade=c("light","light","light","light","light","light","dark","dark","dark","dark","dark","dark"),
  Count=c(2,0,3,1,3,2,9,0,2,1,11,2),stringsAsFactors = FALSE
)
print(v)
write.csv(v,"C:\\Users\\Himanshu\\Documents\\Rscripts\\Assingment2_3\\data.csv",row.names=FALSE)
input<-read.csv("C:\\Users\\Himanshu\\Documents\\Rscripts\\Assingment2_3\\data.csv")

input

# input <- read.csv(file = "data.csv", header = TRUE, nrows = 50)
print(input[1,2])



dataPatternIndices <- which(input$Pattern == "pattern")
dataPatternOutput <- data.frame(Shape = input$Shape[dataPatternIndices[1]], Shade = input$Shade[dataPatternIndices[1]], Count = input$Count[dataPatternIndices[1]])
# print(dataPatternOutput)
for(i in 2:length(dataPatternIndices)){
  newRow <- data.frame(Shape = input$Shape[dataPatternIndices[i]], Shade = input$Shade[dataPatternIndices[i]], Count = input$Count[dataPatternIndices[i]])
  # print(newRow)
  dataPatternOutput <- rbind(dataPatternOutput, newRow)
}
print(dataPatternOutput)
write.csv(dataPatternOutput, file = "pattern.csv", quote = FALSE, row.names = FALSE)
# print(dataPatternIndices)

sortedData <-input[order(input$Pattern, input$Count),]
write.csv(sortedData, file = "sortedData.csv", quote = FALSE, row.names = FALSE)
sortedInputData <- read.csv(file = "sortedData.csv", header = TRUE, nrows = 50)
print(sortedData)
