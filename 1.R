counts_raw<-read.delim("data/counts-raw.txt.gz")
tail(counts_raw)
counts_raw[1,10]
counts_raw[1:3,10:12]
counts_raw[1:3,]
counts_raw[1:10,"pmid"]
str(counts_raw$daysSincePublished)
head(counts_raw$daysSincePublished/7)
is.numeric(counts_raw$daysSincePublished)
str(counts_raw$journal)
levels(counts_raw$journal)
counts_raw$authorsCount[1:10]
is.na(counts_raw$authorsCount[1:10])
anyNA(counts_raw$authorsCount)
summary(counts_raw$wosCountThru2011)
hist(sqrt(counts_raw$wosCountThru2011))


plot(counts_raw$daysSincePublished, counts_raw$wosCountThru2011)
counts_raw$authorsCount[1:10] > 7
dim(counts_raw[counts_raw$journal %in% c("pone","pbio"),])

dim(counts_raw[grepl("Immunology", counts_raw$plosSubjectTags),])
if (anyNA(counts_raw$authorsCount)==TRUE) {
  print("there is NA")
} else {
  print("ok")
}



ins