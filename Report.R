# report

gap.in<-read.table("output/combined_gapMinder.tsv", sep="\t", header= TRUE)

gap.inCanada<-gap.in[241:252,]
gap.inFinland<-gap.in[517:528,]

library("dplyr")
gap.inCanada<-filter(gap.in,country=="Canada")
gap.inBrazil<-filter(gap.in,country=="Brazil")
gap.inCanada$year

plot(gap.inBrazil$year, gap.inBrazil$gdpPercap, type="b", main = "Brazil", xlab="Year", ylab="GDP",col="red", cex=1,lwd=2)

