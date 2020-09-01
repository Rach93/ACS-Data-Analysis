#library(tidyverse)
#library(readr)
library(data.table)
library(bit64)

#selecting columns
cols<-c("SERIALNO","ADJINC","PWGTP","AGEP","CIT","ENG","SEX","MAR","SCHL","PINCP","RAC1P","RAC2P","LANP","ST")

#Reading the 4 .csv files 
a<-fread("ss16pusa.csv", header=TRUE, select=cols, data.table = FALSE, stringsAsFactors = FALSE)
b<-fread("ss16pusb.csv", header=TRUE, select=cols, data.table = FALSE, stringsAsFactors = FALSE)
c<-fread("ss16pusc.csv", header=TRUE, select=cols, data.table = FALSE, stringsAsFactors = FALSE)
d<-fread("ss16pusd.csv", header=TRUE, select=cols, data.table = FALSE, stringsAsFactors = FALSE)

#Combining the 4 data frames into one data frame
df<-rbind(a,b,c,d)

#Saving the data frame as a .csv just in case
fwrite(df, "data.csv")

#Removing the individual data frames a,b,c,d
rm(a,b,c,d)