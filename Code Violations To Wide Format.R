#This script reads in the raw code violations data from data.kcmo.org
library(RSocrata)
RawViolations <- read.socrata("https://data.kcmo.org/Housing/Property-Violations/nhtf-e75a")

#Transforming the data to wide
library(reshape2)

LongViolations <- dcast(RawViolations, KIVA.PIN ~ Violation.Code, fun.aggregate = mean)
