### SET UP ###

library(readr)
library(ggplot2)

cancer_data <- read_csv("seer-head-neck/Transformed Data.csv")


### EDA ###

unique(cancer_data$`Year of Diagnosis`)
unique(cancer_data$`Surgery Decision`)
unique(cancer_data$Radiation)
unique(cancer_data$Chemotherapy)

ggplot(data = cancer_data) + geom_bar(aes(`Year of Diagnosis`))
ggplot(data = cancer_data) + geom_bar(aes(Sex))
ggplot(data = cancer_data) + geom_bar(aes(Race))
ggplot(data = cancer_data) + geom_bar(aes(Insurance))
ggplot(data = cancer_data) + geom_bar(aes(`SEER Registry`))
ggplot(data = cancer_data) + geom_bar(aes(`Median Household Income`))
ggplot(data = cancer_data) + geom_bar(aes(`AJCC 7 Stage`))
ggplot(data = cancer_data) + geom_bar(aes(`Cause of Death`))
ggplot(data = cancer_data) + geom_bar(aes(`Surgery Performed?`))
ggplot(data = cancer_data) + geom_bar(aes(`Surgery Decision`))
ggplot(data = cancer_data) + geom_bar(aes(Radiation))
ggplot(data = cancer_data) + geom_bar(aes(Chemotherapy))
ggplot(data = cancer_data) + geom_bar(aes(Mets))
ggplot(data = cancer_data) + geom_bar(aes(`Lymph Nodes`))


ggplot(data = cancer_data) +
  geom_point(aes(`% Language isolation ACS 2013-2017 (households)`, `Median Household Income`))

ggplot(data = cancer_data) +
  geom_col(aes(`Surgery Performed?`, `Median Household Income`))







