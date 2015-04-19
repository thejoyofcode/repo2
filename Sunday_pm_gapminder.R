# this is a script to explor gapminer file
# anna williford
# April 19th, 2015

# Read in data
gap.in<-read.table("output/combined_gapMinder.tsv", sep="\t", header= TRUE)

for (row.number in 1:10){
  for (col.number in 1:5){
    print(gap.in[row.number, col.number])
  }
}

add.me<-function(x,y){
  x+y
}

add.me(3,4)
