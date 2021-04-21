### SET UP ###

library(readr)
library(ggplot2)

cancer_data <- read_csv("seer-head-neck/Transformed Data.csv")


### EDA ###

unique(cancer_data$`Year of Diagnosis`)
unique(cancer_data$`Surgery Decision`)
unique(cancer_data$Radiation)
unique(cancer_data$Chemotherapy)
unique(cancer_data$Insurance)

ggplot(data = cancer_data) + geom_bar(aes(`Year of Diagnosis`))
ggplot(data = cancer_data) + geom_bar(aes(Sex))
ggplot(data = cancer_data) + geom_bar(aes(Race))
ggplot(data = cancer_data) + geom_bar(aes(Insurance))
ggplot(data = cancer_data) + geom_bar(aes(`SEER Registry`))
ggplot(data = cancer_data) + geom_bar(aes(`Median Household Income`))
ggplot(data = cancer_data) + geom_bar(aes(Mets))
ggplot(data = cancer_data) + geom_bar(aes(`Lymph Nodes`))
ggplot(data = cancer_data) + geom_bar(aes(`Surgery Decision`))
ggplot(data = cancer_data) + geom_bar(aes(Radiation))

ggplot(data = cancer_data) + geom_bar(aes(`AJCC 7 Stage`, fill = Race)) +
  facet_wrap(vars(Race))
ggplot(data = cancer_data) + geom_bar(aes(`AJCC 7 Stage`, fill = Insurance)) +
  facet_wrap(vars(Insurance))
ggplot(data = cancer_data) + geom_bar(aes(`Cause of Death`, fill = Race)) +
  facet_wrap(vars(Race))
ggplot(data = cancer_data) + geom_bar(aes(`Cause of Death`, fill = Insurance)) +
  facet_wrap(vars(Insurance))
ggplot(data = cancer_data) + geom_bar(aes(`Surgery Performed?`, fill = Race)) +
  facet_wrap(vars(Race))
ggplot(data = cancer_data) + geom_bar(aes(`Surgery Performed?`, fill = Insurance)) +
  facet_wrap(vars(Insurance))
ggplot(data = cancer_data) + geom_bar(aes(Chemotherapy, fill = Race)) +
  facet_wrap(vars(Race))
ggplot(data = cancer_data) + geom_bar(aes(Chemotherapy, fill = Insurance)) +
  facet_wrap(vars(Insurance))

ggplot(data = cancer_data) + geom_bar(aes(Insurance, fill = Race)) +
  facet_wrap(vars(Race))


ggplot(data = cancer_data) +
  geom_point(aes(`% Language isolation ACS 2013-2017 (households)`, `Median Household Income`))

ggplot(data = cancer_data) +
  geom_col(aes(`Surgery Performed?`, `Median Household Income`))



### MODELING ###

model1 <- glm(as.factor(`Surgery Performed?`) ~ Race + Insurance + `AJCC 7 Stage` + `Median Household Income`, data = cancer_data, family = binomial(link = "logit"))
model1
summary(model1)

