# this is a script to explor gapminer file
# anna williford
# April 19th, 2015

# install.packages("dplyr", dependencies=TRUE)
library("dplyr")

# Read in data
gap.in<-read.table("output/combined_gapMinder.tsv", sep="\t", header= TRUE)

gap.in %>% 
  filter(pop>15000000)  %>%
  select(country,year,pop) %>%
  group_by(country) %>%
  summarize(min=min(pop))

summaryAW<-gap.in  %>%
  filter (year<1990) %>%
  group_by(continent, year) %>%
  summarize (mean(pop))



foo <- as.data.frame(summaryAW)

write.table(summaryAW, file="MySummary", quote=FALSE,row.names=FALSE)
summaryAW-> data.out

data(iris)
attach(iris)

install.packages("tidyr", dependencies=TRUE)
library("tidyr")
#turn iris into long
irisLong<-gather(iris, "Measurement", "Value",1:4)

