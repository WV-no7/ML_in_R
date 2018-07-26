#import

#from CSV
print("To read from csv use read.table() function")
mydata <- read.table("c:/mydata.csv", header=TRUE, sep=",", row.names="id")

#from Excel

library(xlsx)
print("To read from Excel/ worksheet use read.xlsx() function")
mydata <- read.xlsx("c:/myexcel.xlsx", 1)

# read in the worksheet named mysheet
mydata <- read.xlsx("c:/myexcel.xlsx", sheetName = "mysheet")

#Export

#to txt
print("To write into txt use write.txt() function")
write.table(mydata, "c:/mydata.txt", sep="\t")

#to excel
library(xlsx)
print("To write into excel use write.xlsx() function")
write.xlsx(mydata, "c:/mydata.xlsx")