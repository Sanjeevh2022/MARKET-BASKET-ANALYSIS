#Loading the relevant libraries
library(arules)
library(arulesViz)

#Reading the csv file
dataset = read.csv(file.choose(), header = TRUE)

#Creating sparse matrix
dataset = read.transactions(file.choose(), rm.duplicates = TRUE,format = "single",
                            sep = ",", header = "TRUE",
                            cols = c("orderno", "item"),quote = "")
summary(dataset)

#Creating an item frequency plot for the top 20 items
itemFrequencyPlot(dataset,topN=20,type="absolute")

# Training apriori on the dataset with supp = 0.001, conf = 0.8)
rules <- apriori(dataset, parameter = list(supp = 0.001, conf = 0.8))

#Visualizing the rules
inspect(sort(rules, by = 'lift')[1:10])

# Training apriori on the dataset with supp = 0.001, conf = 0.8, max length = 5)
rules <- apriori(dataset, parameter = list(supp = 0.001, conf = 0.8, maxlen = 5))

#Visualizing the rules
inspect(sort(rules, by = 'lift')[1:10])
options(digits=2)

# Training apriori on the dataset with supp = 0.001, conf = 0.4, max length = 5)
rules <- apriori(dataset, parameter = list(supp = 0.001, conf = 0.4, maxlen = 5))

#Visualizing the rules
inspect(sort(rules, by = 'lift')[1:10])
options(digits=2)

plot(rules, method = "graph", engine="interactive", control = list(verbose =
                                                                     TRUE))

# Training apriori on the dataset with supp = 0.001, conf = 0.8)
rules <- apriori(dataset, parameter = list(supp = 0.001, conf = 0.8))

#Visualizing the rules
inspect(sort(rules, by = 'confidence')[1:10])

# Training apriori on the dataset with supp = 0.001, conf = 0.4)
rules <- apriori(dataset, parameter = list(supp = 0.001, conf = 0.4))

#Visualizing the rules
inspect(sort(rules, by = 'confidence')[1:10])

# Training apriori on the dataset with supp = 0.001, conf = 0.8, max length = 5)
rules <- apriori(dataset, parameter = list(supp = 0.001, conf = 0.4, maxlen = 5))

#Visualizing the rules
inspect(sort(rules, by = 'confidence')[1:10])

# Training apriori on the dataset with supp = 0.001, conf = 0.6, max length = 5)
rules <- apriori(dataset, parameter = list(supp = 0.001, conf = 0.6, maxlen = 5))

#Visualizing the rules
inspect(sort(rules, by = 'confidence')[1:10])

# Training apriori on the dataset with supp = 0.001, conf = 0.6, max length = 5)
rules <- apriori(dataset, parameter = list(supp = 0.001, conf = 0.4, maxlen = 5))

#Visualizing the rules
inspect(sort(rules, by = 'confidence')[1:10])

# Training apriori on the dataset with supp = 0.001, conf = 0.4, max length = 5)
rules <- apriori(dataset, parameter = list(supp = 0.001, conf = 0.4, maxlen = 5))

#Visualizing the rules
inspect(sort(rules, by = 'lift')[1:10])
options(digits=2)


